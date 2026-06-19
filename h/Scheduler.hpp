#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "List.hpp"
#include "MemoryAllocator.hpp"

class TCB;

class Scheduler {
public:
    static Scheduler& getInstance();
    static void put(TCB *thread);
    static TCB* get();
    bool isEmpty(){ return ready.empty(); }
private:
    Scheduler();
    List<TCB> ready;
};

#endif
