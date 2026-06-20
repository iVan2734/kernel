#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running=nullptr;
uint64 TCB::timeSliceCounter=0;

TCB::TCB(Body body,void* args,bool kernelThread):
    body(body),
    stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),
    context({
        body!=nullptr ? (uint64) &threadWrapper : 0,
        stack!=nullptr ? (uint64) &stack[STACK_SIZE] : 0
    }),
    finished(false),
    args(args),
    timeSlice(DEFAULT_TIME_SLICE),
    waiting(0),
    kernelThr(kernelThread)

{
    if (body!=nullptr) Scheduler::getInstance().put(this);
}

TCB *TCB::create_thread(Body body,void *args,bool kernelThread) {
    return new TCB(body,args,kernelThread);
}

void TCB::dispatch(){
    TCB *old=running;
    if(!old->isFinished() && old->body!=nullptr){ Scheduler::getInstance().put(old); }
    running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
}

void TCB::yield(){
    __asm__ volatile("ecall");
}

int TCB::thread_exit(){
    if (!TCB::running) return -1;
    TCB* old=TCB::running;
    TCB::running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
    delete old;
    return 0;
}

void TCB::threadWrapper(){
    if(!running->kernelThr){
         __asm__ volatile("csrc sstatus, %0" : : "r"(1 << 8));
    }
    else{
        __asm__ volatile("csrs sstatus, %0" : : "r"(1 << 8));
    }
    __asm__ volatile("csrs sstatus, %0" : : "r"(1 << 5));
    Riscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    ::thread_exit();
}