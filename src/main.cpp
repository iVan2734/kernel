#include "../lib/hw.h"
#include "../h/Riscv.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/printHelper.hpp"
#include "userMain.cpp"

int main(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    thread_t mainThread;
    thread_create(&mainThread,userMain,nullptr);
	while (true) { thread_dispatch(); }
    return 0;
}