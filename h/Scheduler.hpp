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
private:
    Scheduler();
    List<TCB> ready;
};

#endif
