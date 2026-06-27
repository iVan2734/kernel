#include "../h/Riscv.hpp"
#include "../h/TCB.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc,ra");
    __asm__ volatile ("sret");
}
