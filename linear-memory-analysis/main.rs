use std::str;
use std::env::args;

const CONST_STR: &str = "global const string";

#[inline(never)]
fn leaf(arg_str: &str, stack_str: &str, heap_str: &str) {
    let stack_callee = 42;
    let stack_callee_ptr = &stack_callee as *const i32;

    println!("  in leaf()");

    println!("    {}, addr: {:?} ({})", CONST_STR, CONST_STR as *const str, CONST_STR as *const str as *const () as usize);
    println!("    {}, addr: {:?} ({})", stack_str, stack_str as *const str, stack_str as *const str as *const () as usize);
    println!("    stack value in leaf() function, addr: {:?} ({})", stack_callee_ptr, stack_callee_ptr as usize);
    println!("    stack grows: {:?}", (stack_callee_ptr as usize as isize) - (stack_str as *const str as *const () as usize as isize));
    println!("    {}, addr: {:?} ({})", heap_str, heap_str as *const str, heap_str as *const str as *const () as usize);
    println!("    arg 0: {}, addr: {:?} ({})", arg_str, arg_str as *const str, arg_str  as *const str as *const () as usize);
}

#[inline(never)]
fn intermediate(arg_str: &str) {
    let mut stack_str = [0u8; 30];
    stack_str.clone_from_slice("stack-allocated (local) string".as_bytes());
    let stack_str = unsafe { str::from_utf8_unchecked(&stack_str) };

    let heap_str = "dynamically (heap) allocated string".to_string();

    println!("  in intermediate()");
    leaf(arg_str, stack_str, &heap_str);
}

fn main() {
    println!("  in main()");
    intermediate(args().next().unwrap().as_str());
}