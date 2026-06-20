#include "../h/syscall_c.hpp"

static void printString(const char* s){
    while(*s) putc(*s++);
}

void userWrapper(void*){
    printString("Console test\n");
    printString("Kucaj nesto, Enter za kraj:\n");

    while(1){
        char c = getc();
        if(c == '\r' || c == '\n'){
            putc('\n');
            break;
        }
        putc(c);
    }

    printString("Gotovo!\n");
}