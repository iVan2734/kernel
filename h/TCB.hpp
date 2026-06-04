#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"

class TCB{
public:
    ~TCB(){ delete[] stack;}
    using Body = void (*)();
    static TCB *create_thread(Body body);
    //uint64 getTimeSlice() const{ return timeSlice;}

    bool isFinished() const {return finished;}
    void setFinished(bool finished){this->finished=finished;}

    static void yield();
    static TCB *running;

private:
    explicit TCB(Body body);

    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    //uint64 timeSlice;

    //friend class Riscv;

    //static void threadWrapper();
    static void contextSwitch(Context *oldContext,Context *newContext);
    static void dispatch();

    //static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE=1024;
    //static uint64 constexpr TIME_SLICE=2;
};




#endif