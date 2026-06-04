#include "../h/Scheduler.hpp"

Scheduler& Scheduler::getInstance(){
    static Scheduler instance;
    return instance;
}

Scheduler::Scheduler(){}

void Scheduler::put(TCB* t){
    if(t!=nullptr) Scheduler::getInstance().ready.addFirst(t);
}

TCB* Scheduler::get(){
    //Think about idle thread implements, what happend when the queue is empty
    return Scheduler::getInstance().ready.removeLast();
}


