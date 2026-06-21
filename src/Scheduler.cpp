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
    Scheduler& s = getInstance();
    if (s.sleep.empty()) return;
    time_t cur = s.sleep.peek()->getSleepingTime();
    if (cur > 0) s.sleep.peek()->setSleepingTime(cur - 1);
    while (TCB* t = s.sleep.remove()) {
        Scheduler::put(t);
    }
}