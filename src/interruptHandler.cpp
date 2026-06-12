#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/printHelper.hpp"
class _thread;
typedef _thread* thread_t;

extern "C" void interruptHandler() {
    uint64 scauseValue;
	uint64 sepc;
	uint64 sstatus;

    void* addr;
    size_t size;
    int returnValue;
    void* arg;
    thread_t* handle;
    TCB::Body start_routine;
    uint64 code;

    __asm__ volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    __asm__ volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));

    if (scauseValue == 0x0000000000000009UL || scauseValue == 0x0000000000000008UL) {

        uint64 a1,a2,a3;
        __asm__ volatile ("mv %0, a0" : "=r" (code) );
        __asm__ volatile ("mv %0, a1" : "=r" (a1));
        __asm__ volatile ("mv %0, a2" : "=r" (a2));
        __asm__ volatile ("mv %0, a3" : "=r" (a3));

        switch (code) {
            case 0x01:
                __asm__ volatile ("mv %0, a1" : "=r" (size) );
                addr=MemoryAllocator::getInstance().memAlloc(size);
                __asm__ volatile ("mv a0, %0" : : "r" (addr));
                break;
            case 0x02:
                __asm__ volatile ("mv %0, a1" : "=r" (addr));
                returnValue=MemoryAllocator::getInstance().free(addr);
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
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
        __asm__ volatile("csrw sstatus, %0" : : "r"(sstatus));
		__asm__ volatile("csrw sepc,    %0" : : "r"(sepc+4));

    }
    else if(scauseValue==0x8000000000000001UL){
        //timer interrupt
        uint64 stval;
        printString("Timer interrupt");
        printString("Scause= ");
        printInteger(scauseValue);
        printString("Sepc= ");
        printInteger(sepc);
        __asm__ volatile("csrr %0,stval" : "=r"(stval));
        while (true);
    }
    else if(scauseValue == 0x8000000000000009UL){
        //keyboard interrupt
    }
    else{
        //Unexpected interrupt
        uint64 stval;
        printString("Timer interrupt");
        printString("Scause= ");
        printInteger(scauseValue);
        printString("Sepc= ");
        printInteger(sepc);
        __asm__ volatile("csrr %0,stval" : "=r"(stval));
        while (true);
    }
}


