#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

TCB *TCB::running=nullptr;
uint64 TCB::timeSliceCounter=0;

TCB::TCB(Body body,void* args):
    body(body),
    stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),
	kernelStack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),
	kernelSp(kernelStack!=nullptr ? (uint64) &kernelStack[STACK_SIZE] : 0)
    context({
        body!=nullptr ? (uint64) &threadWrapper : 0,
        stack!=nullptr ? (uint64) &stack[STACK_SIZE] : 0
    }),
    finished(false),
    args(args)
{
    if (body!=nullptr) Scheduler::getInstance().put(this);
}

TCB *TCB::create_thread(Body body,void *args) {
    return new TCB(body,args);
}

void TCB::dispatch(){
    if (running==nullptr) {
        running=TCB::create_thread(nullptr,nullptr);
    }
    TCB *old=running;
    if(!old->isFinished()){ Scheduler::getInstance().put(old); }
    running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
}

void TCB::yield(){
    __asm__ volatile("ecall");
}

int TCB::thread_exit(){
    if (!TCB::running) return -1;
    TCB* old=TCB::running;
    running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
    delete old;
    return 0;
}

void TCB::threadWrapper(){
    Riscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    TCB::yield();
}