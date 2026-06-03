#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "List.hpp"

class TCB;

class Scheduler {
public:
    static Scheduler& getInstance();
    static void put(TCB *thread);
    static TCB* get();
private:

    Scheduler();
    static List<TCB> ready;
};

#endif
