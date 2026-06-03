#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "../h/TCB.h"

class Scheduler {
public:
    static Scheduler* getInstance();
    static void put(TCB*);
    static Thread* get();
private:
    Scheduler();
    static List<TCB> ready;
};

#endif
