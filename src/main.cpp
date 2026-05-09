#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"

/*
void memoryAllocatorTest() {
    __putc('S');
    void* a=MemoryAllocator::getInstance().memAlloc(64);
    if(a) {
        __putc('1');
    }
    void* b=MemoryAllocator::getInstance().memAlloc(64);
    if(b) {
        __putc('2');
    }
    MemoryAllocator::getInstance().free(a);
    __putc('F');
    void* p=MemoryAllocator::getInstance().memAlloc(64);
    if (p==a) {
        __putc('M');
    }
    __putc('E');
    MemoryAllocator::getInstance().free(b);
    MemoryAllocator::getInstance().free(p);
    while (1);
}
*/

void main() {
	 __putc('S');
    void* a=mem_alloc(64);
    if(a) {
        __putc('1');
    }
    void* b=mem_alloc(64);
    if(b) {
        __putc('2');
    }
    mem_free(a);
    __putc('F');
    void* p=mem_alloc(64);
    if (p==a) {
        __putc('M');
    }
    __putc('E');
	mem_free(b);
    mem_free(p);
}