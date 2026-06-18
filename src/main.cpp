#include "../lib/hw.h"
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/printHelper.hpp"
#include "../h/TCB.hpp"

extern "C" void interrupt();
/*
void userMain(void*);

void idleThread(void*) {
    while (true) {
        TCB::dispatch();
    }
}

int main(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));

    thread_t mainThread,idle;
    thread_create(&idle,idleThread,nullptr);
    thread_create(&mainThread,userMain,nullptr);
	while (true) { thread_dispatch(); }
    return 0;
}
*/

int main() {
    TCB *threads[5];
    threads[0] = TCB::createThread(nullptr);
    TCB::running = threads[0];
    threads[1] = TCB::createThread(workerBodyA);
    printString("ThreadA created\n");
    threads[2] = TCB::createThread(workerBodyB);
    printString("ThreadB created\n");
    threads[3] = TCB::createThread(workerBodyC);
    printString("ThreadC created\n");
    threads[4] = TCB::createThread(workerBodyD);
    printString("ThreadD created\n");

    //Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() && threads[2]->isFinished() &&
             threads[3]->isFinished() && threads[4]->isFinished())) {
        TCB::yield();
             }
    for (auto &thread: threads) { delete thread; }
    printString("Finished\n");
    return 0;
    //end simulation
    __asm__ volatile("stmem 0x5555,0x100000");
}
