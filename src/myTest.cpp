#include "../h/syscall_c.hpp"
#include "../h/Riscv.hpp"

void dbg(char c) {
    while (!(*(volatile char*)CONSOLE_STATUS & (1 << 5))) ;
    *(volatile char*)CONSOLE_TX_DATA = c;
}
