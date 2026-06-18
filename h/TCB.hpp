#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"

class TCB{
public:
    ~TCB(){ delete[] stack; delete[] kernelStack; }
    using Body = void (*)(void *);
    static TCB *create_thread(Body body,void* args);
    uint64 getTimeSlice() const{ return timeSlice;}

    bool isFinished() const {return finished;}
    void setFinished(bool finished){this->finished=finished;}

    static void yield();
    static void dispatch();
    static int thread_exit();
    static TCB *running;

private:
    explicit TCB(Body body,void *args);
    Body body;

    struct Context{
        uint64 ra;
        uint64 sp;
    };
    uint64 *stack;
	uint64 *kernelStack;
	uint64 kernelSp;
    Context context;
    bool finished;
    void  *args;


    uint64 timeSlice;

    static void threadWrapper();
    static void contextSwitch(Context *oldContext,Context *newContext);

    static uint64 timeSliceCounter;
    static uint64 constexpr STACK_SIZE=DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE=DEFAULT_TIME_SLICE;
};

#endif