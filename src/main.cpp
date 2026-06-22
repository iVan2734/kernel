#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Console.hpp"
extern "C" void interrupt();

void outputThread(void* arg);

void userMain(void* a) {
    char c=getc();
    putc(c);
    putc('\n');
}


int main(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));

    //_Console& console = _Console::getInstance();
    //Scheduler& scheduler = Scheduler::getInstance();

    TCB* kernelThread=TCB::create_thread(nullptr,nullptr,1);
    TCB::running=kernelThread;
    TCB::create_thread(&outputThread,nullptr,1);
    TCB::create_thread(&userMain,nullptr,0);
    while (TCB::running->getCounter() > 0) {
        TCB::yield();
    }
    while (!_Console::getInstance().isOutputEmpty()) TCB::yield();

    *(volatile uint32*)0x100000 = 0x5555;
    return 0;
}

