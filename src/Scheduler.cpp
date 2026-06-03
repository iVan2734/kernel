#include "../h/Scheduler.hpp"

Scheduler& Scheduler::getInstance(){
    static Scheduler instance;
    return instance;
}

Scheduler::Scheduler(){

}

void Scheduler::put(TCB* t){
    Scheduler::getInstance().ready.addFirst(t);
}

TCB* Scheduler::get(){
    return Scheduler::getInstance().ready.removeLast();
}


