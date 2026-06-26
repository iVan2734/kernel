#include "../h/Riscv.hpp"
#include "../h/TCB.hpp"

void Riscv::popSppSpie() {
    if (!TCB::running->isKernelThread()) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(Riscv::BitMaskSstatus::SSTATUS_SPP));
    }
    __asm__ volatile ("csrw sepc,ra");
    __asm__ volatile ("sret");
}
