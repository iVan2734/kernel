#include "../lib/hw.h"
#include "../lib/console.h"
#include "interruptRoutine.S"

extern "C" void interrupt(){};

extern "C" void interruptHandler() {
    uint64 scauseVar;
    __asm__ volatile("csr %[scause], scause": [scause] "=r" (scauseVar));
    if (scauseVar == 0x0000000000000009UL) {
        //I dont know what will happen here
    }
    else if (scauseVar == 0x0000000000000008UL) {
        //ecall iz sistemskog rezima
        uint64 code;
        //big swittch with C API codes
        __asm__ volatile("I am to lazy to learn the  synstax");
        switch (code) {
            0x01:
                size_t size;
            //write from a1 to size
            __asm__ volatile ("");
            void* addr=MemoryAllocator::getInstance().memAlloc(size);
            //write to a0 return value
            __asm__ volatile ("");
            break;
            0x02:
                void* addr;
            //write from a1 to addr
            __asm__ volatile ("");
            int good=MemoryAllocator::getInstance().free(addr);
            //write to a0 return value
            __asm__ volatile ("");
            break;

        }
    }
    else {
        //i will need to add other traps
    }
}

