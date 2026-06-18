#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/printHelper.hpp"
#include "../h/Riscv.hpp"

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

    __asm__ volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    __asm__ volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));

    if (scauseValue == 0x0000000000000009UL) {

        uint64 a1,a2,a3,code;
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
        //Unexpected interrupt
        printString("Timer interrupt");
        printString("scause= ");printInteger(scauseValue);
        printString("sepc= ");printInteger(sepc);
        printString("sstatus= ");printInteger(sstatus);


        TCB::timeSliceCounter++;
        if(TCB::timeSliceCouter >= TCB::running->getTimeSlice()){

            TCB::timeSliceCounter=0;
            TCB::dispatch();
            w_scause(scause);
            w_sepc(sepc):
        }
        Riscv::mc_sip(SIP_SSIP);
    }
    else if(scauseValue == 0x8000000000000009UL){
        //keyboard interrupt
        printString("Timer interrupt");
        printString("scause= ");printInteger(scauseValue);
        printString("sepc= ");printInteger(sepc);
        printString("sstatus= ");printInteger(sstatus);
    }
    else{
        //Unexpected interrupt
        printString("Unexpected interrupt");
        printString("scause= ");printInteger(scauseValue);
        printString("sepc= ");printInteger(sepc);
        printString("sstatus= ");printInteger(sstatus);
    }
}


