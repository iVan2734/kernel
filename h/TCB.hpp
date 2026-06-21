#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
class Scheduler;

class TCB{
public:
    void* operator new(size_t n){ return MemoryAllocator::getInstance().memAlloc(n); }
    void  operator delete(void* p){ MemoryAllocator::getInstance().free(p); }


    ~TCB(){ delete[] stack; }
    using Body = void (*)(void *);
    static TCB *create_thread(Body body,void* args,bool kernelThread);
    uint64 getTimeSlice() const{ return timeSlice;}

    bool isFinished() const {return finished;}
    void setFinished(bool finished) {this->finished=finished;}
    uint64 getSemWaiting() const {return semWaiting;}
    void setSemWaiting(uint64 waiting) {this->semWaiting=waiting;}
	time_t getSleepingTime() const {return sleepingTime;}
    void setSleepingTime(uint64 sleeping) {this->sleepingTime=sleepingTime;}

    static void yield();
    static void dispatch();
    static int thread_exit();
    static int time_sleep(time_t time);
    static TCB *running;
    static uint64 timeSliceCounter;
private:
    friend class _Semaphore;
    explicit TCB(Body body,void *args,bool kernelThread);
    Body body;

    struct Context{
        uint64 ra;
        uint64 sp;
    };
    uint64 *stack;
    Context context;
    bool finished;
    void  *args;
    uint64 timeSlice;
    uint64 semWaiting;
    bool kernelThr;
	time_t sleepingTime;

    static void threadWrapper();
    static void contextSwitch(Context *oldContext,Context *newContext);

    static uint64 constexpr STACK_SIZE=DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE=DEFAULT_TIME_SLICE;
};

#endif