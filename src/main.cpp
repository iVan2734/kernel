#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"


void main(){
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
    void* p=MemoryAllocator::getInstance().memAlloc(128);
    if (p==a) {
        __putc('M');
    }
    __putc('E');
    MemoryAllocator::getInstance().free(b);
    MemoryAllocator::getInstance().free(p);
    while (1);


    /*
    if(MemoryAllocator::getInstance().free(a)!=0) { __putc('F');__putc('2'); return; }
    else{__putc('G');}
    if(MemoryAllocator::getInstance().free(b)!=0) { __putc('F');__putc('2'); return; }
    else{ __putc('G');}
    if(MemoryAllocator::getInstance().free(c)!=0) { __putc('F');__putc('2'); return; }
    else{ __putc('G');}
    return;
    */
}