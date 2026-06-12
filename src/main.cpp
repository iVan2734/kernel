#include "../lib/hw.h"
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/printHelper.hpp"

extern "C" void interrupt();

void userMain(void*);

int main(){
    uint64 zero=0;
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    __asm__ volatile("csrw sie, zero");
    thread_t mainThread,idle;
    thread_create(&idle,idleBody,nullptr);
    thread_create(&mainThread,userMain,nullptr);
	while (true) { thread_dispatch(); }
    return 0;
}