#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

TCB *TCB::running=nullptr;

TCB::TCB(Body body,void* args):
    body(body),
    stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),
    context({
        body!=nullptr ? (uint64) &threadWrapper : 0,
        stack!=nullptr ? (uint64) &stack[STACK_SIZE] : 0
    }),
    finished(false),
    args(args)
{
    //if (TCB::running==nullptr) TCB::running=this;
    Scheduler::getInstance().put(this);
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
    Riscv::pushRegisters();
    TCB::dispatch();
    Riscv::popRegisters();
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
    //Riscv::popSppSpie(); I dont know what is this line doing
    //__asm__ volatile("csrw sepc,ra");
    //__asm__ volatile("sret");
    //This two lines above are supposed to do the same thing as popSppSpie()
    running->body(running->args);
    running->setFinished(true);
    TCB::yield();
}