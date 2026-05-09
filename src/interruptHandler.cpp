#include "../lib/hw.h"
#include "../lib/console.h"
#include "interruptRoutine.S"

extern "C" void interrupt(){};

extern "C" void interruptHandler() {
    uint64 scauseVar;
    __asm__ volatile("csr %[scause], scause": [scause] "=r" (scauseVar));
    if (scauseVar == 0x0000000000000009UL) {
        //ecall iz sistemskog rezima
    }
    else if (scauseVar == 0x0000000000000008UL) {
        //ecall iz korisnickog rezima
        uint64 code;
        //big swittch with C API codes
        __asm__ volatile("csrr %0, a0" : "=r" (code) );
        switch (code) {
            0x01:
                size_t size;
                //write from a1 to size
                __asm__ volatile ("csrr %0, a1" : "=r" (size) );
                void* addr=MemoryAllocator::getInstance().memAlloc(size);
                //write to a0 return value
                __asm__ volatile ("csrw a0, %0" : : "r" (addr));
                break;
            0x02:
                void* addr;
                //write from a1 to addr
                __asm__ volatile ("csrr %0, a1" : "=r" (addr));

                int returnValue=MemoryAllocator::getInstance().free(addr);
                //write to a0 return value
                __asm__ volatile ("csrw a0, %0" : : "r" (returnValue));
                break;

        }
    }
    else {
        //i will need to add other traps
    }
}

