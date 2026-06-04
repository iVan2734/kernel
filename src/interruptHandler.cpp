#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"


extern "C" void interruptHandler() {
    uint64 scauseValue;
    void* addr;
    size_t size;
    int returnValue;

    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));

    //increment PC
    __asm__ volatile("csrr t0,sepc");
    __asm__ volatile("addi t0,t0,4");
    __asm__ volatile("csrw sepc,t0");
    //I am not sure why the value 0x09 is inside my scause if I call this from user space,
    // but I will figure that out later
    //I was stupid becusae I am calling form privilege regime so thats why its 9 instead of 8 I need to go back to user Regime and call all those things
    if (scauseValue == (0x01<<3 | 0x01) || scauseValue == (0x01<<3)) {
        //ecall iz korisnickog rezima
        uint64 code;
        //big swittch with C API codes
        __asm__ volatile("mv %0, a0" : "=r" (code) );
        switch (code) {
            case 0x01:
                //write from a1 to size
                __asm__ volatile ("mv %0, a1" : "=r" (size) );
                addr=MemoryAllocator::getInstance().memAlloc(size);
                //write to a0 return value
                __asm__ volatile ("mv a0, %0" : : "r" (addr));
                break;
            case 0x02:
                //write from a1 to addr
                __asm__ volatile ("mv %0, a1" : "=r" (addr));

                returnValue=MemoryAllocator::getInstance().free(addr);
                //write to a0 return value
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;

            //thread_create
			case 0x011:
				//I dont know if I should I allocate here the stack for the thread on in the syscall_c file where the C call is located
				__asm__ volatile ("mv %0, a1" : "=r" (addr));
				__asm__ volatile ("mv %0, a2" : "=r" (addr));

                break;
            //thread_exit
            case 0x012:
                break;
            //thread_dispatch
            case 0x013:
                break;

        }
    }
    else {
        //i will need to add other traps
    }
}

