#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
//#include "../h/printHelper.hpp"
#include "../h/Riscv.hpp"
#include "../h/Semaphore.hpp"
#include "../h/Console.hpp"


class _thread;
typedef _thread* thread_t;

class _sem;
typedef _sem* sem_t;


extern "C" void interruptHandler() {
    uint64 scauseValue;
	uint64 sepc;
	uint64 sstatus;

    void* addr;
    size_t size;
    int returnValue;
    void* arg;
    thread_t* handle_thread;
    TCB::Body start_routine;
    sem_t* handle_sem;
    sem_t* id;
    uint64 n;
    uint64 init;
    Semaphore* sem;

    __asm__ volatile("csrr %[sepc], sepc": [sepc] "=r" (sepc));
    __asm__ volatile("csrr %[sstatus], sstatus": [sstatus] "=r" (sstatus));
    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));

    if (scauseValue == 0x0000000000000009UL || scauseValue == 0x0000000000000008UL ) {

        uint64 a1,a2,a3,code;
        __asm__ volatile ("mv %0, a0" : "=r" (code) );
        __asm__ volatile ("mv %0, a1" : "=r" (a1));
        __asm__ volatile ("mv %0, a2" : "=r" (a2));
        __asm__ volatile ("mv %0, a3" : "=r" (a3));

        uint64 currentSepc = Riscv::r_sepc() + 4;
        uint64 currentSstatus = Riscv::r_sstatus();

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
				handle_thread=(thread_t*)a1;
                start_routine=(TCB::Body)a2;
                arg=(void*)a3;
                *handle_thread=(thread_t)TCB::create_thread(start_routine,arg,0);
                if(*handle_thread==nullptr) returnValue=-1;
                else returnValue=0;
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            case 0x012:
                returnValue=TCB::thread_exit();
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            case 0x013:
                TCB::timeSliceCounter=0;
                TCB::dispatch();
                break;
            case 0x021:
                handle_sem=(sem_t*)a1;
                init=(uint64)a2;
                *handle_sem=(sem_t)Semaphore::create_semaphore(init);
                returnValue=1;
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            case 0x022:
                handle_sem=(sem_t*)a1;
                sem=(Semaphore*)handle_sem;
                returnValue=1;
                delete sem;
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            case 0x023:
                id=(sem_t*)a1;
                sem=(Semaphore*)id;
                sem->wait();
                break;
            case 0x024:
                id=(sem_t*)a1;
                sem=(Semaphore*)id;
                sem->signal();
                break;
            case 0x025:
                id=(sem_t*)a1;
                n=a2;
                sem=(Semaphore*)id;
                sem->wait_n(n);
                break;
            case 0x026:
                id=(sem_t*)a1;
                n=a2;
                sem=(Semaphore*)id;
                sem->signal_n(n);
                break;
            case 0x031:
                break;
            case 0x041:
                returnValue=(uint64)Console::getInstance().getc();
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
                break;
            case 0x042:
                char c=(char)a1;
                Console::getInstance().putc(c);
                break;
        }
        Riscv::w_sstatus(currentSstatus);
        Riscv::w_sepc(currentSepc);
        //__asm__ volatile("csrw sstatus, %0" : : "r"(sstatus));
		//__asm__ volatile("csrw sepc,    %0" : : "r"(sepc+4));

    }
    else if(scauseValue==0x8000000000000001UL){
        //timer interrupt
        //printString("Timer interrupt\n");
        Riscv::mc_sip(Riscv::SIP_SSIE);
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
    }
    else if(scauseValue == 0x8000000000000009UL){
        //keyboard interrupt
        //printString("Keyboard interrupt\n");
        uint64 IRQ=plic_claim();
        if(IRQ==CONSOLE_IRQ){
            Console::getInstance().inputInterrupt();
        }
        plic_complete(IRQ);

    }
    else{
        //Unexpected interrupt
        //printString("Unexpected interrupt\n");
        //printString("scause= ");printInteger(scauseValue);
        //printString("sepc= ");printInteger(sepc);
        while (1);
    }
}


