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
    uint64 code=reg[10]; //a0
    uint64 a1=reg[11];
    uint64 a2=reg[12];
    uint64 a3=reg[13];

    uint64 scauseValue=Riscv::r_scause();
	volatile uint64 sepc=Riscv::r_sepc();
	volatile uint64 sstatus=Riscv::r_sstatus();

    void* addr;
    size_t size;
    int returnValue;
    void* arg;
    thread_t* handle_thread;
    TCB::Body start_routine;
    sem_t* handle_sem;
    uint64 n;
    uint64 init;
    _Semaphore* sem;
    time_t time;

    if (scauseValue == 0x0000000000000009UL || scauseValue == 0x0000000000000008UL ) {
        switch (code) {
            case 0x01:
                size=a1;
                addr=MemoryAllocator::getInstance().memAlloc(size);
                reg[10]=(uint64)addr;
                break;
            case 0x02:
                addr=(void*)a1;
                reg[10]=MemoryAllocator::getInstance().free(addr);
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
                reg[10]=0;
                TCB::running->setFinished(1);
                TCB::dispatch();
                break;
            case 0x013:
                reg[10]=0;
                TCB::timeSliceCounter=0;
                TCB::dispatch();
                break;
            case 0x021:
                handle_sem=(sem_t*)a1;
                if (handle_sem==nullptr) {
                    reg[10]=-1;
                    break;
                }
                init=a2;
                *handle_sem=(sem_t)_Semaphore::create_semaphore(init);
                if(*handle_sem==nullptr) returnValue=-1;
                else returnValue=0;
                reg[10]=returnValue;
                break;
            case 0x022:
                sem=(_Semaphore*)a1;
                if (sem==nullptr){
                    reg[10]=-1;
                    break;
                }
                delete sem;
                reg[10]=0;
                break;
            case 0x023:
                sem=(_Semaphore*)a1;
                if(sem==nullptr){
                    reg[10]=-1;
                    break;
                }
                sem->wait();
                reg[10]=0;
                break;
            case 0x024:
                sem=(_Semaphore*)a1;
                if (sem==nullptr) {
                    reg[10]=-1;
                    break;
                }
                sem->signal();
                reg[10]=0;
                break;
            case 0x025:
                sem=(_Semaphore*)a1;
                if(sem==nullptr) {
                    reg[10]=-1;
                    break;
                }
                n=a2;
                sem->wait_n(n);
                reg[10]=0;
                break;
            case 0x026:
                sem=(_Semaphore*)a1;
                if (sem==nullptr) {
                    reg[10]=-1;
                    break;
                }
                n=a2;
                sem->signal_n(n);
                reg[10]=0;
                break;
            case 0x031:
                time=a1;
                returnValue=TCB::time_sleep(time);
                Riscv::w_sepc(sepc+4);
                Riscv::w_sstatus(sstatus);
                reg[10]=returnValue;
                return;
            case 0x041:
                returnValue=(uint64)_Console::getInstance().getc();
                reg[10]=returnValue;
                break;
            case 0x042:
                char c=(char)a1;
                _Console::getInstance().putc(c);
                break;
        }
		Riscv::w_sepc(sepc+4);
        Riscv::w_sstatus(sstatus);

    }
    else if(scauseValue==0x8000000000000001UL){
        //timer interrupt
        Riscv::mc_sip(Riscv::BitMaskSip::SIP_SSIE);
        TCB::timeSliceCounter++;
        Scheduler::getInstance().updateSleep();
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            TCB::timeSliceCounter=0;
            volatile uint64 sepc=Riscv::r_sepc();
            volatile uint64 sstatus=Riscv::r_sstatus();

            TCB::dispatch();
            Riscv::w_sepc(sepc);
            Riscv::w_sstatus(sstatus);
        }

    }
    else if(scauseValue == 0x8000000000000009UL){
        //keyboard interrupt
        uint64 IRQ=plic_claim();
        if(IRQ==CONSOLE_IRQ){
            _Console::getInstance().keyboardInterrupt();
        }
        plic_complete(IRQ);
		Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);

    }
    else{
        //_Console::getInstance().putc('0'+Riscv::r_scause());
        //Unexpected interrupt
    }
}


