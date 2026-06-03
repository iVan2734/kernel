#include "../h/TCB.hpp"
#includ
#include "../h/printHelpers.hpp"


void workerBodyA() {
    uint8 i = 0;
    for (; i < 3; i++) { printString("A: i="); printInteger(i); printString("\n"); }

    printString("A: yield\n");
    __asm__ ("li t1, 7");
    CCB::yield();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    printString("A: t1="); printInteger(t1); printString("\n");

    uint64 result = fibonacci(20);
    printString("A: fibonaci="); printInteger(result); printString("\n");

    for (; i < 6; i++) { printString("A: i="); printInteger(i); printString("\n"); }
    CCB::running->setFinished(true);
    CCB::yield();
}

void workerBodyB() {
    uint8 i = 10;
    for (; i < 13; i++) { printString("B: i="); printInteger(i); printString("\n"); }

    printString("B: yield\n");
    __asm__ ("li t1, 5");
    CCB::yield();

    uint64 result = fibonacci(23);
    printString("A: fibonaci="); printInteger(result); printString("\n");

    for (; i < 16; i++) { printString("B: i="); printInteger(i); printString("\n"); }
    CCB::running->setFinished(true);
    CCB::yield();
}

uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 4 == 0) CCB::yield();
    return fibonacci(n - 1) + fibonacci(n - 2);
}




int main() {
    TCB *threads[3];

    threads[0]=TCB::create_thread(nullptr);
    TCB::running=threads[0];

    threads[1]=TCB::create_thread(workerBodyA);
    printStirng("Thread workerA ");


    threads[2]=TCB::create_thread(workerBodyB);
    printStirng("Thread workerB ");

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        TCB::yield();
    }

    for(auto &thread:threads){
        delete thread;
    }

    printString("Finished")

    return 0;

}