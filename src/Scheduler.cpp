#include "../h/Scheduler.hpp"

#include "../h/syscall_c.hpp"
Scheduler& Scheduler::getInstance(){
    static Scheduler instance;
    return instance;
}

Scheduler::Scheduler(){}

void Scheduler::put(TCB* t){
    if(t != nullptr) Scheduler::getInstance().ready.addFirst(t);
}

TCB* Scheduler::get(){
    TCB* t = Scheduler::getInstance().ready.removeLast();
    return t;
}

void Scheduler::putSleep(TCB* t){
    if(t!=nullptr) Scheduler::getInstance().sleep.add(t);
}

void Scheduler::updateSleep(){
    Scheduler& scheduler=getInstance();
    if (scheduler.sleep.empty()) return;
    time_t cur = scheduler.sleep.peek()->getSleepingTime();
    if (cur > 0) scheduler.sleep.peek()->setSleepingTime(cur - 1);
    while (TCB* t = scheduler.sleep.remove()) {
        Scheduler::put(t);
    }
}