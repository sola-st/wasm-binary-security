use std::cmp::Ordering;
use std::collections::{HashMap, HashSet};
use std::env;
use std::fmt::{Display, Error, Formatter};
use std::hash::{Hash, Hasher};

use wasm::{FunctionType, Idx, Val::*};
use wasm::highlevel::{Function, GlobalOp, Instr, Instr::*, LoadOp::*, LocalOp, Module, NumericOp::*};
use std::path::PathBuf;

fn main() {
    let input_file = PathBuf::from(env::args().nth(1).expect("need input binary as argument"));
    let binary_name = input_file.file_name().unwrap().to_string_lossy().to_string();
    println!("Input file: {}", input_file.display());
    println!("  binary:    {}", binary_name);

    println!();

    let module = Module::from_file(input_file).unwrap();
    let all_instructions_flat: Vec<Instr> = module.functions.iter()
        // only functions with code (== non-imported functions)
        .filter_map(|func| func.code())
        // flatten into one large instruction stream
        .flat_map(|code| code.body.clone())
        .collect();

    println!("Functions:      {:7}", module.functions.len());
    let (non_imported_func_count, imported_func_count): (Vec<_>, Vec<_>) = module.functions
        .iter()
        .partition(|func| func.code().is_some());
    let (non_imported_func_count, imported_func_count) = ((non_imported_func_count.len()), imported_func_count.len());
    println!("  Imported:     {:7}", imported_func_count);
    println!("  Non-imported: {:7}", non_imported_func_count);
    println!("  Exported:     {:7}", module.functions.iter().filter(|func| !func.export.is_empty()).count());

    println!();

    println!("Tables: {} (should be 1 in Wasm v1)", module.tables.len());
    let funcs_in_table = functions_in_table(&module);
    println!("  Table entries at init:      {:5}", funcs_in_table.len());
    let funcs_in_table_unique = funcs_in_table.iter().collect::<HashSet<_>>().len();
    let percent_funcs_in_table = percent(funcs_in_table_unique, module.functions.len());
    println!("  Of those, unique functions: {:5} (i.e., at least {:.2}% of all functions can be called indirectly, because they are in the [indirect call] table)", funcs_in_table_unique, percent_funcs_in_table);

    println!();

    let call_indirect_types: Vec<_> = all_instructions_flat.iter()
        .filter_map(|instr| match instr {
            Instr::CallIndirect(type_, _) => Some(type_),
            _ => None
        })
        .collect();
    let indirect_call_type_counts = call_indirect_types.iter().frequencies();
    let mut indirect_call_type_counts = indirect_call_type_counts.into_iter().collect::<Vec<_>>();
    indirect_call_type_counts.sort_by_key(|&(ty, count)| (count, ty));
    let call_indirect_count = call_indirect_types.len();
    let direct_call_count = all_instructions_flat.iter().filter(|instr| if let Call(_) = instr { true } else { false }).count();
    println!("Instructions:  {:8}", all_instructions_flat.len());
    println!("  call:        {:8} ({:.2}% of all instructions)", direct_call_count, percent(direct_call_count, all_instructions_flat.len()));
    println!("  call_indirect: {:6} ({:.2}% of all instructions, {:.2}% of all calls)", call_indirect_count, percent(call_indirect_count, all_instructions_flat.len()), percent(call_indirect_count, call_indirect_count + direct_call_count));

    println!();

    let global_op_counts = all_instructions_flat.iter()
        .filter_map(|instr| match instr {
            &Global(op, idx) => Some((idx, op)),
            _ => None
        })
        .frequencies();
    let global_width = {
        let max_count = global_op_counts.values().max().cloned().unwrap_or(0);
        format!("{}", max_count).len() + 1
    };
    println!("Globals:");
    // Ordered by global index, and get/set/total count.
    let mut global_counts = Vec::new();
    for (idx, global) in module.globals.iter().enumerate() {
        let get_count = global_op_counts.get(&(idx.into(), GlobalOp::Get)).cloned().unwrap_or(0);
        let set_count = global_op_counts.get(&(idx.into(), GlobalOp::Set)).cloned().unwrap_or(0);
        let total_count = get_count + set_count;
        global_counts.push((get_count, set_count, total_count));
        println!("  #{} {}", idx, global.type_.0);
        if let Some(import) = &global.import() {
            println!("     import: {}.{}", import.0, import.1);
        }
        if !global.export.is_empty() {
            println!("     export: {:?}", global.export);
        }
        if let Some([init @ .., End]) = global.init().map(|instrs| instrs.as_slice()) {
            println!("     init: {}", init.iter().map(|i| format!("{}", i)).collect::<Vec<_>>().join("; "));
        }
        print!("    {:width$} × global.get  {:width$} × global.set  {:width$} total", get_count, set_count, total_count, width = global_width);
        if total_count != 0 {
            let get_percent = percent(get_count, total_count);
            let set_percent = percent(set_count, total_count);
            println!(" ({:.0}/{:.0}% split)", get_percent, set_percent);
        } else {
            println!()
        }
    }

    println!();

    // TODO Could improve heuristics for stack pointer detection.
    // Hard constraint: type of stack pointer must match pointer width, i.e., i32 for wasm32, i64 for wasm64.
    // Soft constraint: stack pointer is roughly as often global.set as it is global.get.
    let most_used_global = global_counts.iter().enumerate()
        // For now, choose stack pointer whose "area" of get and set counts is maximal, i.e., a global
        // with 0 set operations (e.g., IEEE 754 constants) wont be chosen.
        .max_by_key(|(_idx, (get, set, _total))| get * set)
        .map(|(global, _)| global);
    if let Some(stack_pointer) = most_used_global {
        println!("Likely the stack pointer:       Global #{}", stack_pointer);
        let stack_pointer = &stack_pointer.into();
        let functions_using_sp = module.functions.iter()
            .filter_map(|func| func.code().map(|code| code.body.as_slice()))
            .filter(|instrs|
                instrs.contains(&Instr::Global(GlobalOp::Set, *stack_pointer))
                    || instrs.contains(&Instr::Global(GlobalOp::Get, *stack_pointer)))
            .count();
        let percent_non_imported = percent(functions_using_sp, non_imported_func_count);
        println!("Functions using stack pointer: {:6} ({:.2}% of all non-imported functions)", functions_using_sp, percent_non_imported);

        let sp_increments = module.functions.iter()
            // only functions with code (== non-imported functions)
            .filter_map(|func| func.code().map(|code| &code.body))
            .map(|body| body
                .windows(5)
                .filter_map(|window| match window {
                    // do a sliding window over all instructions in the function
                    // and pattern match against the following code:
                    // global.get $sp
                    // i32.const N
                    // i32.add
                    // global.set $sp
                    // then N is the number of bytes to allocate on the stack
                    [_, Global(GlobalOp::Get, global_get), Const(I32(increment)), Numeric(I32Add), Global(GlobalOp::Set, global_set)] if global_set == stack_pointer && global_get == stack_pointer => Some(*increment),
                    // also capture stack pointer decrements (i32.sub) on compilers who let the stack grown downwards (LLVM upstream backend)
                    // shouldn't capture the stack pointer reset, because that happens from a local copy of the global sp.
                    [_, Global(GlobalOp::Get, global_get), Const(I32(increment)), Numeric(I32Sub), Global(GlobalOp::Set, global_set)] if global_set == stack_pointer && global_get == stack_pointer => Some(-*increment),
                    // also variants where the stack pointer is saved to a local before saving the global as well
                    [Global(GlobalOp::Get, global_get), Const(I32(increment)), Numeric(I32Add), Local(LocalOp::Tee, _base_pointer), Global(GlobalOp::Set, global_set)] if global_set == stack_pointer && global_get == stack_pointer => Some(*increment),
                    [Global(GlobalOp::Get, global_get), Const(I32(increment)), Numeric(I32Sub), Local(LocalOp::Tee, _base_pointer), Global(GlobalOp::Set, global_set)] if global_set == stack_pointer && global_get == stack_pointer => Some(-*increment),
                    _ => None
                })
                .collect::<Vec<_>>())
            .frequencies();
        println!("Stack increments: (How many functions increment the stack pointer by how much? Can also handle multiple increments per function, that's why it is an array of increments.)");
        let mut sp_increments = sp_increments.into_iter().collect::<Vec<_>>();
        sp_increments.sort_by_key(|(increments, count)| (*count, increments.clone()));
        let mut sp_usage_sum = 0;
        let mut sp_usage_percent_sum = 0.0f32;
        for (increments, count) in sp_increments.clone() {
            let percent = percent(count, non_imported_func_count);
            if !increments.is_empty() {
                sp_usage_sum += count;
                sp_usage_percent_sum += percent;
            }
            println!("{:5}{:>9} × {}", count, format!("({:.2}%)", percent), format!("{:?}", increments));
        }
        println!("  functions with stack allocation total: {} ({:.2}%)", sp_usage_sum, sp_usage_percent_sum);

        println!("\nCSV for sp analysis and plots:");
        println!("binary,funccount,percent,sp_increments,increment_sum,increment_sum_abs");
        for (increments, count) in sp_increments {
            let percent = percent(count, non_imported_func_count);
            let increment_sum: i32 = increments.iter().sum();
            let increment_sum_abs = increment_sum.abs();
            println!("sp_csv_line:\"{}\",{},{},\"{}\",{},{}", binary_name, count, percent, format!("{:?}", increments), increment_sum, increment_sum_abs);
        }
    }

    println!();

    let function_type_counts = module.functions.iter()
        .map(|func| &func.type_)
        .frequencies();
    let mut function_type_counts = function_type_counts.into_iter().collect::<Vec<_>>();
    function_type_counts.sort_by_key(|(ty, count)| (*count, ty.clone()));
    println!("Counts of function types ({} unique types):", function_type_counts.len());
    for (type_, count) in &function_type_counts {
        let percent = percent(*count, module.functions.len());
        println!("{:5}{:>9} × {}", count, format!("({:.2}%)", percent), type_);
    }

    println!();

    let functions_with_call_indirect = module.functions.iter()
        .filter_map(|func| func.code())
        .filter(|func| func.body.iter().any(|instr| match instr {
            Instr::CallIndirect(_, _) => true,
            _ => false
        }))
        .count();
    let functions_with_call_indirect_percent = percent(functions_with_call_indirect, non_imported_func_count);
    println!("Functions with at least one call_indirect: {} ({:.2}% of all functions)", functions_with_call_indirect, functions_with_call_indirect_percent);

    println!();

    let mut table_init_ranges_count = 0;
    let mut tables_init = vec![];
    println!("Table elements initialization:");
    // calculate initialized function table: which function at which index, which types
    // TODO use run-length / range encoding to make it more easy to look at
    for table in module.tables {
        let mut table_init = vec![None; table.type_.1.initial_size as usize];

        struct TableIndexRange {
            start: i32,
            end: i32,
            type_: FunctionType,
            funcs: Vec<Idx<Function>>,
        }

        impl Display for TableIndexRange {
            fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error> {
                write!(f, "range: [{:5},{:5}]   length:{:4}   unique funcs: {:4}   type: {}", self.start, self.end, self.end - self.start + 1, self.funcs.iter().collect::<HashSet<_>>().len(), self.type_)
            }
        }

        let mut current_range: Option<TableIndexRange> = None;

        for elem in table.elements {
            let mut offset = 0;
            // "Calculate" the start offset for each elem section: handle only some common cases.
            match elem.offset.split_last().expect("every elem init expression must have an 'end' instruction").1 {
                [Global(GlobalOp::Get, idx)] => if let Some(import) = &module.globals[idx.into_inner()].import() {
                    eprintln!("Warning: assuming 0 for imported global #{} {}.{} in table initialization offset calculation, please check host environment code (e.g., import object in JavaScript) if this is true.", idx.into_inner(), import.0, import.1);
                },
                [Const(I32(o))] => offset = *o,
                _ => unimplemented!()
            }

            for (idx, func) in elem.functions.iter().enumerate() {
                let cur_idx = offset + idx as i32;
                let cur_type = &module.functions[func.into_inner()].type_;
                table_init[cur_idx as usize] = Some((func.into_inner(), cur_type));

                if let Some(ref mut current_range_some) = current_range {
                    if &current_range_some.type_ == cur_type {
                        current_range_some.end = cur_idx;
                        current_range_some.funcs.push(*func);
                    } else {
                        println!("         {}", current_range_some);
                        table_init_ranges_count += 1;
                        current_range = None;
                    }
                }
                if let None = current_range {
                    // start a new range
                    current_range = Some(TableIndexRange {
                        start: cur_idx,
                        end: cur_idx,
                        type_: cur_type.clone(),
                        funcs: vec![*func],
                    });
                }
            }
            // print the last range
            if let Some(ref last_range) = current_range {
                println!("         {}", last_range);
                table_init_ranges_count += 1;
            }
        }

        tables_init.push(table_init);
    }
    println!("  {} table init ranges in total", table_init_ranges_count);

    #[derive(Debug, Clone)]
    enum CallIndirectPattern<'a> {
        // i32.const, call_indirect type
        FixedIdx(i32, &'a FunctionType),
        // source instruction, start table offset, end table offset (inclusive), call_indirect type
        Range(Instr, i32, i32, &'a FunctionType),
        // source instruction, start table offset, call_indirect type
        Offset(Instr, i32, &'a FunctionType),
        // source instruction, call_indirect type
        Unrestricted(Instr, &'a FunctionType),
        // this is the "catch-all"
        Other(&'a [Instr], &'a FunctionType),
    }

    impl<'a> CallIndirectPattern<'a> {
        fn start_idx(&self) -> Option<i32> {
            match self {
                | CallIndirectPattern::FixedIdx(s, _)
                | CallIndirectPattern::Range(_, s, _, _)
                // NOTE due to integer overflow, an i32.add is essentially not restricting it at all, but let's say it were
                | CallIndirectPattern::Offset(_, s, _) => Some(*s),
                | CallIndirectPattern::Unrestricted(_, _)
                | CallIndirectPattern::Other(_, _) => None,
            }
        }
        fn end_idx(&self) -> Option<i32> {
            match self {
                | CallIndirectPattern::FixedIdx(e, _)
                | CallIndirectPattern::Range(_, _, e, _) => Some(*e),
                | CallIndirectPattern::Offset(_, _, _)
                | CallIndirectPattern::Unrestricted(_, _)
                | CallIndirectPattern::Other(_, _) => None,
            }
        }
        fn type_(&self) -> &FunctionType {
            match self {
                | CallIndirectPattern::FixedIdx(_, ty)
                | CallIndirectPattern::Range(_, _, _, ty)
                | CallIndirectPattern::Offset(_, _, ty)
                | CallIndirectPattern::Unrestricted(_, ty)
                | CallIndirectPattern::Other(_, ty) => *ty,
            }
        }
        fn source(&self) -> Instr {
            match self {
                | CallIndirectPattern::FixedIdx(idx, _) => Const(I32(*idx)),
                | CallIndirectPattern::Range(source, _, _, _)
                | CallIndirectPattern::Offset(source, _, _)
                | CallIndirectPattern::Unrestricted(source, _) => source.clone(),
                | CallIndirectPattern::Other(instrs, _) => instrs.last().expect("there must be a preceding instruction before call_indirect").clone()
            }
        }
        // remove some information from instructions, otherwise the equivalence classes become too small
        fn source_abstracted(&self) -> String {
            match self.source() {
                Local(LocalOp::Get, _) | Local(LocalOp::Tee, _) => "local.(get|tee)".into(),
                Load(I32Load, _) => "i32.load".into(),
                Const(I32(_)) => "i32.const".into(),
                _ => "other".into(),
            }
        }
    }

    impl<'a> PartialEq for CallIndirectPattern<'a> {
        fn eq(&self, other: &Self) -> bool {
            self.to_string() == other.to_string()
        }
    }

    impl<'a> Eq for CallIndirectPattern<'a> {}

    impl<'a> Hash for CallIndirectPattern<'a> {
        fn hash<H: Hasher>(&self, state: &mut H) {
            self.to_string().hash(state)
        }
    }

    impl<'a> PartialOrd for CallIndirectPattern<'a> {
        fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
            (self.start_idx(), self.end_idx(), self.type_(), self.to_string()).partial_cmp(&(other.start_idx(), other.end_idx(), other.type_(), other.to_string()))
        }
    }

    impl<'a> Ord for CallIndirectPattern<'a> {
        fn cmp(&self, other: &Self) -> Ordering {
            self.partial_cmp(other).unwrap()
        }
    }

    impl<'a> Display for CallIndirectPattern<'a> {
        fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error> {
            match self {
                CallIndirectPattern::FixedIdx(idx, ty) =>
                    write!(f, "fixed index:  {:5}                  source: {:>10}   type: {}", idx, self.source_abstracted(), ty),
                CallIndirectPattern::Unrestricted(_source, ty) =>
                    write!(f, "unrestricted                         source: {:>10}   type {}", self.source_abstracted(), ty),
                CallIndirectPattern::Range(_source, start, end, ty) =>
                    write!(f, "range: [{:5},{:5}]   length:{:4}   source: {:>10}   type: {}", start, end, end - start + 1, self.source_abstracted(), ty),
                CallIndirectPattern::Offset(_source, offset, ty) =>
                    write!(f, "offset: {:+5}                        source: {:>10}   type: {}", offset, self.source_abstracted(), ty),
                CallIndirectPattern::Other(instrs, ty) => {
                    write!(f, "other (investigate and introduce own category if this appears too often)  type: {}\n{}", ty, instrs.iter().map(ToString::to_string).collect::<Vec<_>>().join("\n"))
                }
            }
//            write!(f, "{}", self.type_())
        }
    }

    #[derive(Clone, Ord, PartialOrd, Eq, PartialEq, Hash, Debug)]
    struct CfiEqClass {
        start_tbl_idx: Option<i32>,
        end_tbl_idx: Option<i32>,
        func_type: FunctionType,
        size: usize,
        source_abstracted: String,
    }

    println!();

    let mut call_indirect_targets_by_type = 0;
    let mut call_indirect_targets_by_type_in_table = 0;
    let mut call_indirect_targets_by_type_in_table_bitmask = 0;
    // this is definitely a lower bound: all call_indirects where the targets come directly from memory (after bitmasking and type matching)
    let mut call_indirect_targets_by_type_in_table_bitmask_memory_source = 0;

    let instructions_before_call_indirect = 5;
    // pad the instruction stream with some nops to make sure we don't miss the first call_indirect
    let mut padded_instructions = vec![Nop; instructions_before_call_indirect];
    padded_instructions.extend(all_instructions_flat.iter().cloned());
    let call_indirect_patterns = padded_instructions
        .windows(instructions_before_call_indirect + 1)
        .filter_map(|window|
            if let Some((CallIndirect(type_, _), preceding_instrs)) = window.split_last() {
                Some((preceding_instrs, type_))
            } else {
                None
            }
        )
        .map(|(preceding_instrs, call_indirect_type)|
            match preceding_instrs {
                [.., Const(I32(idx))] =>
                    CallIndirectPattern::FixedIdx(*idx, call_indirect_type),

                [.., source, Const(I32(range)), Numeric(I32And)] =>
                    CallIndirectPattern::Range(source.clone(), 0, 0 + *range, call_indirect_type),
                [source, Const(I32(range)), Numeric(I32And), Const(I32(base)), Numeric(I32Add)] =>
                    CallIndirectPattern::Range(source.clone(), *base, *base + *range, call_indirect_type),
                // NOTE some compilers/optimizers output i32.sub for constants that are powers of two, because the LEB128 encoding of those numbers is one byte smaller!
                [source, Const(I32(range)), Numeric(I32And), Const(I32(base)), Numeric(I32Sub)] =>
                    CallIndirectPattern::Range(source.clone(), -*base, -*base + *range, call_indirect_type),

                [.., source, Const(I32(base)), Numeric(I32Add)] =>
                    CallIndirectPattern::Offset(source.clone(), *base, call_indirect_type),
                // NOTE some compilers/optimizers output i32.sub for constants that are powers of two, because the LEB128 encoding of those numbers is one byte smaller!
                [.., source, Const(I32(base)), Numeric(I32Sub)] =>
                    CallIndirectPattern::Offset(source.clone(), -*base, call_indirect_type),

                // TODO proper dataflow analysis, not just assume it is undrestricted
                [.., source @ Load(I32Load, _)] | [.., source @ Local(LocalOp::Get, _)] | [.., source @ Local(LocalOp::Tee, _)] | [.., source @ Select] | [.., source @ End] =>
                    CallIndirectPattern::Unrestricted(source.clone(), call_indirect_type),

                instrs =>
                    CallIndirectPattern::Other(instrs, call_indirect_type)
            })
        .frequencies();
    let mut call_indirect_patterns = call_indirect_patterns.iter()
        .collect::<Vec<_>>();
    call_indirect_patterns.sort_by_key(|&(pattern, _count)| pattern);

    let mut cfi_eq_classes = HashMap::new();
    let mut funcs_indirect_callable_memory_index = HashSet::new();
    println!("Patterns (=preceding instructions) of call_indirect:", );
    for &(pattern, count) in &call_indirect_patterns {
        println!("  {:4} × {}", count, pattern);

        let by_type = module.functions.iter().enumerate().filter(|(_i, func)| &func.type_ == pattern.type_()).map(|(i, _)| i).collect::<HashSet<_>>().len();
        call_indirect_targets_by_type += count * by_type;
        println!("         functions matching by type (regardless whether they are in the table):             {:4}", by_type);

        let by_type_in_table = tables_init[0].iter().filter_map(|entry|
            if let &Some((i, ty)) = entry {
                if ty == pattern.type_() {
                    Some(i)
                } else { None }
            } else { None }).collect::<HashSet<_>>().len();
        call_indirect_targets_by_type_in_table += count * by_type_in_table;
        println!("         functions matching by type and present in table (regardless at which table index): {:4}", by_type_in_table);

        let by_type_in_table_bitmask = tables_init[0].iter().enumerate()
            .filter_map(|(table_idx, entry)|
                if table_idx >= pattern.start_idx().unwrap_or(0) as usize && table_idx <= pattern.end_idx().map(|x| x as usize).unwrap_or(std::usize::MAX) {
                    if let &Some((i, ty)) = entry {
                        if ty == pattern.type_() {
                            Some(i)
                        } else { None }
                    } else { None }
                } else {
                    None
                }
            ).collect::<HashSet<_>>();
        call_indirect_targets_by_type_in_table_bitmask += count * by_type_in_table_bitmask.len();
        if let Load(_, _) = pattern.source() {
            call_indirect_targets_by_type_in_table_bitmask_memory_source += count * by_type_in_table_bitmask.len();
            funcs_indirect_callable_memory_index.extend(by_type_in_table_bitmask.clone());
        }
        println!("         functions matching by type and present in permissable table index range:           {:4}", by_type_in_table_bitmask.len());

        // use function type, table index range, and unique function targets as eq class identifier
        let eq_class = CfiEqClass {
            start_tbl_idx: pattern.start_idx(),
            end_tbl_idx: pattern.end_idx(),
            func_type: pattern.type_().clone(),
            size: by_type_in_table_bitmask.len(),
            source_abstracted: pattern.source_abstracted(),
        };
        *cfi_eq_classes.entry(eq_class).or_insert(0 as usize) += *count as usize;
    }
    println!("  {} call_indirect patterns in total", call_indirect_patterns.len());

    println!();
    for (p, _) in call_indirect_patterns {
        if let CallIndirectPattern::FixedIdx(table_idx, _) = p {
            // map table index to func index
            if let Some(func_idx) = tables_init[0][*table_idx as usize].map(|idx| idx.0) {
                let func = &module.functions[func_idx];
                println!("function #{} is indirectly called with a fixed table index", table_idx);
                match (&func.import(), &func.code()) {
                    (Some(import), _) => {
                        println!("  import: {:?}", import);
                    }
                    (_, Some(code)) => {
                        for i in code.body.iter().take(3) {
                            println!("  {}", i);
                        }
                        println!("  ...");
                    }
                    _ => unreachable!()
                }
            }
        }
    }

    println!();

    println!("call_indirect target equivalence classes (CFI equivalence classes):");
    // Sort by size and class to make output deterministic.
    let mut cfi_eq_classes = cfi_eq_classes.into_iter().collect::<Vec<_>>();
    cfi_eq_classes.sort_by_key(|(eq_class, count)| (*count, eq_class.clone()));
    for (class_i, (eq_class, count)) in cfi_eq_classes.iter().enumerate() {
        println!(
            "  class #{}\n    type: {}\n    start idx: {:?}, end idx: {:?}\n    size (of class): {}\n    count (how often class appears): {}",
            class_i,
            eq_class.func_type,
            eq_class.start_tbl_idx, eq_class.end_tbl_idx,
            eq_class.size,
            count);
    }
    println!("  total classes: {}", cfi_eq_classes.len());

    println!();

    println!(
        "CSV data for further analysis: {},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}",

        // general information:
        binary_name,
        all_instructions_flat.len(),

        // indirect calls
        direct_call_count,
        call_indirect_count,
        percent(call_indirect_count, direct_call_count + call_indirect_count),

        // functions and how callable they are
        module.functions.len(),
        funcs_in_table_unique,
        funcs_indirect_callable_memory_index.len(),

        // CFI eq. classes
        cfi_eq_classes.len(),
        cfi_eq_classes.iter().map(|(_class, size)| size).min().unwrap(),
        cfi_eq_classes.iter().map(|(_class, size)| size).max().unwrap(),
        avg(&cfi_eq_classes.iter().map(|(_class, size)| *size).collect::<Vec<usize>>()),
        median(&cfi_eq_classes.iter().map(|(_class, size)| *size).collect::<Vec<usize>>()),

        // Indirect call target counts
       call_indirect_targets_by_type,
       call_indirect_targets_by_type_in_table,
       percent(call_indirect_targets_by_type_in_table, call_indirect_targets_by_type),
       call_indirect_targets_by_type_in_table_bitmask,
       percent(call_indirect_targets_by_type_in_table_bitmask, call_indirect_targets_by_type),
       call_indirect_targets_by_type_in_table_bitmask_memory_source,
       percent(call_indirect_targets_by_type_in_table_bitmask_memory_source, call_indirect_targets_by_type),
    );

    println!();

    println!("CSV data on CFI classes:\nbenchmark,binary,class,size,count,source");
    for (i, (class, count)) in cfi_eq_classes.iter().enumerate() {
        println!("\"{}\",{},{},{},\"{}\"", binary_name, i, class.size, count, class.source_abstracted)
    }
}

// Helper function for checking if a function is present in the table initialization ("elem" section of the Wasm binary).
fn functions_in_table(module: &Module) -> Vec<Idx<Function>> {
    module.tables.iter()
        .flat_map(|table| &table.elements)
        .flat_map(|elem| elem.functions.clone())
        .collect()
}

// Numerical helper functions.

fn percent(part: usize, total: usize) -> f32 {
    part as f32 * 100.0 / total as f32
}

fn avg(xs: &Vec<usize>) -> f64 {
    xs.iter().sum::<usize>() as f64 / xs.len() as f64
}

fn median(numbers: &Vec<usize>) -> usize {
    let mut numbers = numbers.clone();
    numbers.sort();
    let mid = numbers.len() / 2;
    numbers[mid]
}

// Helper trait and blanket impl for counting occurrences in an iterator.

trait Frequencies {
    type Item;
    fn frequencies(self) -> HashMap<Self::Item, usize>;
}

impl<T, U> Frequencies for U where U: Iterator<Item=T>, T: std::cmp::Eq + std::hash::Hash {
    type Item = T;
    fn frequencies(self) -> HashMap<Self::Item, usize> {
        let mut counts = HashMap::new();
        for item in self.into_iter() {
            *counts.entry(item).or_insert(0 as usize) += 1;
        }
        counts
    }
}
