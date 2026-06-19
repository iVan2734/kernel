#include "../lib/hw.h"
#include "../h/Riscv.hpp"
#include "../h/printHelper.hpp"
#include "../h/TCB.hpp"
#include "../h/syscall_c.hpp"

extern "C" void interrupt();

void userMain(void*);

int main(){
    //INTD
    //__asm__ volatile("csrw sie, x0");
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    TCB* kernelThread=TCB::create_thread(nullptr,nullptr);
    TCB::running=kernelThread;
    TCB::create_thread(&userMain,nullptr);
    //this is not the best solution, but currencly works?
    while (!Scheduler::getInstance().isEmpty()) {
        thread_dispatch();
    }
    //0x5555 on address 0x100000
    //*((volatile uint32*)0x100000) = 0x5555;
    return 0;
}

