#include "../lib/hw.h"
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/printHelper.hpp"
#include "../h/TCB.hpp"

extern "C" void interrupt();

void userMain(void*);

void idleThread(void*) {
    while (true){TCB::dispatch();}
}

int main(){
    uint64 zero=0;
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    __asm__ volatile("csrw sie, %0" : : "r" (zero));
    thread_t mainThread,idle;
    thread_create(&idle,idleThread,nullptr);
    thread_create(&mainThread,userMain,nullptr);
	while (true) { thread_dispatch(); }
    return 0;
}