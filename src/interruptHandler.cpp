#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"


extern "C" void interruptHandler() {
    uint64 scauseValue;
    void* addr;
    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));
    /*
    if (scauseValue == (0x01<<3)) {
        //ecall iz sistemskog rezima
    }*/
    if (scauseValue == (0x01<<3 | 0x01) || scauseValue == (0x01<<3)) {
        //ecall iz korisnickog rezima
        uint64 code;
        //big swittch with C API codes
        __asm__ volatile("mv %0, a0" : "=r" (code) );
        switch (code) {
            case 0x01:
                size_t size;
                //write from a1 to size
                __asm__ volatile ("mv %0, a1" : "=r" (size) );
                addr=MemoryAllocator::getInstance().memAlloc(size);
                //write to a0 return value
                __asm__ volatile ("mv a0, %0" : : "r" (addr));
                break;
            case 0x02:

                //write from a1 to addr
                __asm__ volatile ("mv %0, a1" : "=r" (addr));

                int returnValue=MemoryAllocator::getInstance().free(addr);
                //write to a0 return value
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;

        }
    }
    else {
        //i will need to add other traps
    }
}

