#include "../h/syscall_c.hpp"

void userWrapper(void*){
    putc('G');
    putc('G');
}