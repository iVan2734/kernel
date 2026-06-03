#include "../h/Scheduler.hpp"

Scheduler* Scheduler::getInstance(){
    static Scheduler instance;
    return &instance;
}

Scheduler::Scheduler(){

}

void Scheduler::put(TCB* t){
    ready.addFirst(t);
}

TCB* Scheduler::get(){
    return ready.removelast();
}


