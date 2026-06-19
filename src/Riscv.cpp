#include "../h/Riscv.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile ("csrw sepc,ra");
    __asm__ volatile ("sret");
}
