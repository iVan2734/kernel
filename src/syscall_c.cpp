#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

void* mem_alloc(size_t size) {
    //0x01 -> a0, not sure about the syntax
    __asm__ volatile("mv a0, 0x01 ");
    //size -> a1, not sure about the syntax
    __asm__ volatile("mv a1, %0 " : : "r" (size));
    //call ecall
    //need to put interrupt address to stvec
    __asm__ volatile("csrw stvec, %" : : "r" (interrupt));
    __asm__ volatile("ecall");
}

int mem_free(void* addr) {
    //0x02 -> a0, not sure about the syntax
    __asm__ volatile("mv a0, 0x02 ");
    //addr -> a1, not sure about the syntax
    __asm__ volatile("mv a1, %0 " : : "r" (addr));
    //call ecall
    //need to put interrupt address to stvec
    __asm__ volatile("csrw stvec, %" : : "r" (interrupt));
    __asm__ volatile("ecall");
}