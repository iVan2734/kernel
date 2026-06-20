#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

extern "C" void interrupt();

void* mem_alloc(size_t size) {
    uint64 code=0x01;
    void* returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (size) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}

int mem_free(void* addr) {
    uint64 code=0x02;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0 " : : "r" (addr));
    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}

int thread_create( thread_t* handle, void ( *start_routine)(void*), void* arg ){
    uint64 code=0x011;
    uint64 returnValue;
    __asm__ volatile("mv a3, %0" : : "r" (arg) );
    __asm__ volatile("mv a2, %0" : : "r" (start_routine) );
    __asm__ volatile("mv a1, %0" : : "r" (handle) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}


int thread_exit(){
    uint64 code=0x012;
	uint64 returnValue;
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}

void thread_dispatch(){
    uint64 code=0x013;
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
}

int sem_open(sem_t* handle,unsigned init){
    uint64 code=0x021;
    uint64 returnValue;
    __asm__ volatile("mv a2, %0" : : "r" (init) );
    __asm__ volatile("mv a1, %0" : : "r" (handle) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}

int sem_close(sem_t handle){
    uint64 code=0x022;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (handle) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}

int sem_wait(sem_t id){
    uint64 code=0x023;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}

int sem_signal(sem_t id){
    uint64 code=0x024;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;

}

int sem_wait_n(sem_t id, unsigned n){
    uint64 code=0x025;
    uint64 returnValue;
    __asm__ volatile("mv a2, %0" : : "r" (n) );
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;

}

int sem_signal_n(sem_t id, unsigned n){
    uint64 code=0x026;
    uint64 returnValue;
    __asm__ volatile("mv a2, %0" : : "r" (n) );
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    return returnValue;
}