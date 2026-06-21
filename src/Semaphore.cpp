#include "../h/Semaphore.hpp"
#include "../h/Riscv.hpp"
#include "../h/Console.hpp"

Semaphore::Semaphore(uint64 init):val(init){}

Semaphore* Semaphore::create_semaphore(uint64 init){
    return new Semaphore(init);
}

Semaphore::~Semaphore(){
    while(!blocked.empty()){
        Scheduler::getInstance().put(blocked.removeLast());
    }
}

void Semaphore::block(){
    TCB* old=TCB::running;
    blocked.addLast(old);
    TCB::running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&TCB::running->context);
}

void Semaphore::unblock(){
    TCB *t=blocked.removeFirst();
    Scheduler::getInstance().put(t);
}

void Semaphore::wait_n(uint64 n){
    if(val>=n){
         val-=n;
    }
    else {
        TCB::running->setWaiting(n);
        block();
    }
}

void Semaphore::signal_n(uint64 n){
    val+=n;
    while(!blocked.empty() && blocked.peekFirst()->getWaiting()<=val){
        TCB* t=blocked.removeFirst();
        val-=t->getWaiting();
        Scheduler::getInstance().put(t);
    }
}

void Semaphore::wait(){
    Semaphore::wait_n(1);
}

void Semaphore::signal(){
    Semaphore::signal_n(1);
}
