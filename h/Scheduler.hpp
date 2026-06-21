#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "List.hpp"
#include "PriorityQueue.hpp"
#include "MemoryAllocator.hpp"
#include "../h/TCB.hpp"

class Scheduler {
public:
    static Scheduler& getInstance();
    static void put(TCB *thread);
    static void putSleep(TCB *thread);
    static TCB* get();
    static void updateSleep();
    bool isReadyEmpty(){ return ready.empty(); }
    bool isSleepEmpty(){ return sleep.empty(); }
private:
    Scheduler();
    List<TCB> ready;
    PriorityQueue<TCB> sleep;
};

#endif
