#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

void main() {
    __putc('O');
    __putc('S');
    __putc('1');
    __putc('\n');
    void* p1=MemoryAllocator::getInstance().memAlloc(100);
    if (p1==0) {
        __putc('F');
    }
    else {
        __putc('G');
    }

}