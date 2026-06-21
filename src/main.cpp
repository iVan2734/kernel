#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/syscall_c.hpp"
#include "../h/Console.hpp"

extern "C" void interrupt();


void userWrapper(void*);

void outputThread(void*);

int main(){
    Console& console = Console::getInstance();

    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    TCB* kernelThread=TCB::create_thread(nullptr,nullptr,1);
    TCB::running=kernelThread;
    TCB::create_thread(&outputThread,nullptr,1);
    TCB* userThread=TCB::create_thread(&userWrapper,nullptr,0);

    while (!userThread->isFinished()) {
        thread_dispatch();
    }
    while (!console.isOutputEmpty()) {
        thread_dispatch();
    }

    //0x5555 on address 0x100000 to end program
    *((volatile uint32*)0x100000)=0x5555;
    return 0;
}

