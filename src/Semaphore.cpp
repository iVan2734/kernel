#include "../h/Semaphore.hpp"
#include "../h/Riscv.hpp"
#include "../h/Console.hpp"

void dbg(char c);

_Semaphore::_Semaphore(uint64 init):val(init){}

_Semaphore* _Semaphore::create_semaphore(uint64 init){
    return new _Semaphore(init);
}

_Semaphore::~_Semaphore(){
    while(!blocked.empty()){
        Scheduler::getInstance().put(blocked.removeLast());
    }
}

void _Semaphore::block(){
    TCB* old=TCB::running;
    blocked.addLast(old);
    TCB::running=Scheduler::getInstance().get();
    if (old != TCB::running) TCB::contextSwitch(&old->context, &TCB::running->context);
}

void _Semaphore::unblock(){
    TCB *t=blocked.removeFirst();
    Scheduler::getInstance().put(t);
}

void _Semaphore::wait_n(uint64 n){
    if(val>=n){
         val-=n;
    }
    else {
        TCB::running->setSemWaiting(n);
        block();
    }
}

void _Semaphore::signal_n(uint64 n){
    val+=n;
    while(!blocked.empty() && blocked.peekFirst()->getSemWaiting()<=val){
        TCB* t=blocked.removeFirst();
        val-=t->getSemWaiting();
        Scheduler::getInstance().put(t);
    }
}

void _Semaphore::wait(){
    _Semaphore::wait_n(1);
}

void _Semaphore::signal(){
    _Semaphore::signal_n(1);
}
