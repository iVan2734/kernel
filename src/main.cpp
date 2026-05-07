#include "../lib/hw.h"
#include "../h/MemoryAllocator.h"


void main(){
    void* a=MemoryAllocator::getInstance().memAlloc(64);
    void* b=MemoryAllocator::getInstance().memAlloc(128);
    void* c=MemoryAllocator::getInstance().memAlloc(64);
    if(!a || !b || !c) {
        __putc('F1');
    }
    if(MemoryAllocator::getInstance().free(a)) { __putc('F2'); return; }
    if(MemoryAllocator::getInstance().free(b)) { __putc('F2'); return; }
    if(MemoryAllocator::getInstance().free(c)) { __putc('F2'); return; }
}