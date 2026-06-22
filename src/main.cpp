#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/Console.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Riscv.hpp"

void userMain();
void outputThread(void* arg);

void dbg(char c);
extern "C" void interrupt();

void userWrapper(void* arg) {
    userMain();
    //putc('A');
}

int main(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));

    //_Console& console = _Console::getInstance();
    //Scheduler& scheduler = Scheduler::getInstance();

    TCB* kernelThread=TCB::create_thread(nullptr,nullptr,1);
    TCB::running=kernelThread;
    TCB::create_thread(&outputThread,nullptr,1);
    TCB::create_thread(&userWrapper,nullptr,0);

    //Riscv::ms_sstatus(Riscv::BitMaskSstatus::SSTATUS_SIE);

    while (TCB::running->getCounter() > 0) {
        TCB::yield();
    }
    while (!_Console::getInstance().isOutputEmpty()) {
        TCB::yield();
    }
    *(volatile uint32*)0x100000 = 0x5555;
    return 0;
}