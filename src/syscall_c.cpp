#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

void* mem_alloc(size_t size) {

    //0x01 -> a0, not sure about the syntax
    //size -> a1, not sure about the syntax

    //unint64 code=0x01;

    //__asm__ volatile("csrw a0, %0" : : "r" (code) );
    //__asm__ volatile("csrw a1, %0 " : : "r" (size) );

    //need to put interrupt address to stvec
    //ecall

    __asm__ volatile("csrw stvec, %0" : : "r" (interrupt));
    __asm__ volatile("ecall");
}

int mem_free(void* addr) {

    //0x02 -> a0, not sure about the syntax
    //addr -> a1, not sure about the syntax

    //__asm__ volatile("csrw a0, %0" : : "r" (code) );
    //__asm__ volatile("csrw a1, %0 " : : "r" (addr));

    //need to put interrupt address to stvec
    // ecall

    __asm__ volatile("csrw stvec, %0" : : "r" (interrupt) );
    __asm__ volatile("ecall");
}