#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

extern "C" void interrupt();

void* mem_alloc(size_t size) {
    //0x01 -> a0, not sure about the syntax
    //size -> a1, not sure about the syntax
    //uint64 code=0x01;
    //__asm__ volatile("mv a0, %0" : : "r" (code) );
    //__asm__ volatile("mv a1, %0" : : "r" (size) );
    //need to put interrupt address to stvec
    //ecall
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    __asm__ volatile("ecall");
    void* returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    return returnValue;
}

int mem_free(void* addr) {

    //0x02 -> a0, not sure about the syntax
    //addr -> a1, not sure about the syntax
    // uint64 code=0x02;
    //__asm__ volatile("mv a0, %0" : : "r" (code) );
    //__asm__ volatile("mv a1, %0 " : : "r" (addr));

    //need to put interrupt address to stvec
    // ecall

    //where we'll jump to
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt) );
    __asm__ volatile("ecall");
    uint64 returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    return returnValue;
}

int thread_create( thread_t* handle, void ( *start_routine)(void*), void* arg ){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt) );
    __asm__ volatile("ecall");
    uint64 returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    return returnValue;
}


int thread_exit(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt) );
    __asm__ volatile("ecall");
    uint64 returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    return returnValue;
}

void thread_dispatch(){
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt) );
    __asm__ volatile("ecall");
    uint64 returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    return returnValue;
}