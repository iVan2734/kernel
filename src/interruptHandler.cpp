#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/Semaphore.hpp"
#include "../h/Console.hpp"


class _thread;
typedef _thread* thread_t;

class _sem;
typedef _sem* sem_t;


extern "C" void interruptHandler(uint64* reg) {
    uint64 code = reg[10];
    uint64 a1   = reg[11];
    uint64 a2   = reg[12];
    uint64 a3   = reg[13];

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

        switch (code) {
            case 0x01:
                size=a1;
                addr=MemoryAllocator::getInstance().memAlloc(size);
                reg[10]=(uint64)addr;
                break;
            case 0x02:
                addr=(void*)a1;
                returnValue=MemoryAllocator::getInstance().free(addr);
                reg[10]=returnValue;
                break;
            case 0x011:
				handle_thread=(thread_t*)a1;
                start_routine=(TCB::Body)a2;
                arg=(void*)a3;
                *handle_thread=(thread_t)TCB::create_thread(start_routine,arg,0);
                if(*handle_thread==nullptr) returnValue=-1;
                else returnValue=0;
                reg[10]=returnValue;
                break;
            case 0x012:
                returnValue=TCB::thread_exit();
                reg[10]=returnValue;
                break;
            case 0x013:
                TCB::timeSliceCounter=0;
                TCB::dispatch();
                break;
            case 0x021:
                handle_sem=(sem_t*)a1;
                init=a2;
                *handle_sem=(sem_t)Semaphore::create_semaphore(init);
                returnValue=1;
                reg[10]=returnValue;
                break;
            case 0x022:
                handle_sem=(sem_t*)a1;
                sem=(Semaphore*)handle_sem;
                returnValue=1;
                delete sem;
                reg[10]=returnValue;
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
                reg[10]=returnValue;
                break;
            case 0x042:
                char c=(char)a1;
                Console::getInstance().putc(c);
                break;
        }
		Riscv::w_sepc(sepc+4);
        Riscv::w_sstatus(sstatus);

    }
    else if(scauseValue==0x8000000000000001UL){
        //timer interrupt
        //printString("Timer interrupt\n");
        Riscv::mc_sip(Riscv::BitMaskSip::SIP_SSIE);
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
		Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);

    }
    else if(scauseValue == 0x8000000000000009UL){
        //keyboard interrupt
        uint64 IRQ=plic_claim();
        if(IRQ==CONSOLE_IRQ){
            Console::getInstance().inputInterrupt();
        }
        plic_complete(IRQ);
		Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);

    }
    else{
        //Unexpected interrupt
        Console::getInstance().putc('E');
        while (1);
    }
}


