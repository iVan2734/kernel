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
    return Scheduler::getInstance().ready.removeLast();

}

void Scheduler::putSleep(TCB* t){
    if(t!=nullptr) Scheduler::getInstance().sleep.add(t);
}

void Scheduler::updateSleep(){
    Scheduler& scheduler=Scheduler::getInstance();
    if (scheduler.sleep.empty()) {
        return;
    }
    time_t current=scheduler.sleep.peek()->getSleepingTime();
    scheduler.sleep.peek()->setSleepingTime(current-1);
    while (TCB* t=scheduler.sleep.remove()) {
        scheduler.ready.addLast(t);
    }
}