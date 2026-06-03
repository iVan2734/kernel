#ifndef TCB_HPP
#define TCB_HPP

#inlude "../lib/hw.h"
#include "../h/MemoryAllocator.h"

void *operator new(uint64 n){
    return MemoryAllocator::getInstance()->mem_alloc(n);
}


void *operator new[](uint64 n){
    return MemoryAllocator::getInstance()->mem_alloc(n);
}

void operator delete(unint64 *p) noexcept{
    return MemoryAllocator::getInstance()->free(p);
}

void operator delete[](unint64 *p) noexcept{
    return MemoryAllocator::getInstance()->free(p);
}

class TCB{
public:
    ~TCB(){ delete[] stack;}
    using Body=void (*)();
    static TCB *create_thread(Body body);
    uint64 getTimeSlice() const{ return timeSlice;}

    bool isFinished() const {return finished;}
    void setFinished(bool finished){this->finished=finished;}

    static void yield();
    static TCB *running;

protected:

private:
    TCB(Body body):
    body(body),
    stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),
    context({
        body!=nullptr ? (unint64) body : 0,
        stack!=nullptr ? (unint64) &stack[STACK_SIZE] : 0
    }),
    finished(false)
    {
        if(body!=nullptr) Scheduler::getInstance()->put(this);
    }

    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body;
    unint64 *stack;
    Context context;
    bool finished;
    unint64 timeSlice;


    friend class Riscv;

    static void threadWrapper();
    static void contextSwitch(Context *oldContext,Context *newContext);
    static void dispatch();

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE=1024;
    static uint64 constexpr TIME_SLICE=2;
};

#endif