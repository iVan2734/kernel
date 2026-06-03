
#include "../h/TCB.hpp"
#include "..h/Riscv.hpp"
#include "../h/Scheduler.hpp"

TCB *TCB::running=nullptr;

void TCB::yield(){
    Riscv::pushRegisters();
    TCB::dispatch();
    Riscv::popRegisters();
}

void TCB::dispatch(){
    TCB *old=running;
    if(!old->isFinished()){ Scheduler::getInstance()->put(old); }
    running=Scheduler::getInstance()->get();
    TCB::contextSwitch(&old->context,&old->context);
}

TCB* TCB::create_thread(Body)