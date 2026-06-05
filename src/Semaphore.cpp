#include "..h/Semaphore.hpp"

Semaphore::Semaphore(unsigned init):val(init){}

Semaphore::~Semaphore(){
    lock();
    while(!blocked.empty()){
        Scheduler::getInstance().put(blocked.removeLast());
    }
    unlock();
}

void Semaphore::block(){
    TCB* old=TCB::running;
    blocked.addFirst(TCB::running);
    TCB::running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
}

void Semaphore::unblock(){
    TCB *t=blocked.removeLast();
    Scheduler::getInstance().put(t);
}

void Semaphore::wait(){
    lock();
    if(--val<0){
        block();
    }
    unlock();
}

void Semaphore::signal(){
    lock();
    if(val++<0){
        unblock();
    }
    unlock();
}

void Semaphore::wait(int n){
    lock();
    for(int i=0;i<n;i++){
        if(--val<0){
            block();
        }
    }
    unlock();
}

void Semaphore::signal(int n){
    lock();
    for(int i=0;i<n;i++){
        if(val++<0){
            unblock();
        }
    }
    unlock();
}


