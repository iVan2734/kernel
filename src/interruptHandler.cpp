#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"

class _thread;
typedef _thread* thread_t;

extern "C" void interruptHandler() {
    uint64 scauseValue;
    void* addr;
    size_t size;
    int returnValue;
    void* arg;
    thread_t* handle;
    TCB::Body start_routine;
    uint64 code;

    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));

    //I was stupid becusae I am calling form privilege regime so that's why its 9 instead of 8 I need to go back to user Regime and call all those things
    // It should be 8 but I am testing now in unsupervised regime
    if (scauseValue == 0x0000000000000009UL || scauseValue == 0x0000000000000008UL) {
        //big swittch with C API codes

        uint64 a1,a2,a3;
        __asm__ volatile("mv %0, a0" : "=r" (code) );
        __asm__ volatile ("mv %0, a1" : "=r" (a1));
        __asm__ volatile ("mv %0, a2" : "=r" (a2));
        __asm__ volatile ("mv %0, a3" : "=r" (a3));

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
				handle=(thread_t*)a1;
                start_routine=(TCB::Body)a2;
                arg=(void*)a3;
                *handle=(thread_t)TCB::create_thread(start_routine,arg);
                if(handle==nullptr) returnValue=-1;
                else returnValue=0;
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            //thread_exit
            case 0x012:
                returnValue=TCB::thread_exit();
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            //thread_dispatch
            case 0x013:
                TCB::dispatch();
                break;

        }
        //Increment PC
        uint64 sepc;
        __asm__ volatile("csrr %0,sepc" : "=r"(sepc));
        __asm__ volatile("csrw sepc,%0" : : "r"(sepc+4));

    }
    else if(scauseValue==0x8000000000000001UL){
        //timer interrupt
    }
    else if(scauseValue == 0x8000000000000009UL){
        //keyboard interrupt
    }
    else{
        //Unexpected interrupt
    }
}


