#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

TCB *TCB::running=nullptr;

 TCB::TCB(Body body):
    body(body),
    stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),
    context({
        body!=nullptr ? (uint64) body : 0,
        stack!=nullptr ? (uint64) &stack[STACK_SIZE] : 0
    }),
    finished(false)
{
    if(body!=nullptr) Scheduler::getInstance().put(this);
}

TCB *TCB::create_thread(Body body) {
    return new TCB(body);
}

void TCB::dispatch(){
    TCB *old=running;
    if(!old->isFinished()){ Scheduler::getInstance().put(old); }
    running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
}

void TCB::yield(){
    Riscv::pushRegisters();
    TCB::dispatch();
    Riscv::popRegisters();
}
