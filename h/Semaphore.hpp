#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP

#include "List.hpp"
#include "Scheduler.hpp"
#include "../lib/hw.h"
#include "../h/TCB.hpp"

class _Semaphore{
public:
    void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
    void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }

    _Semaphore(int init);
    ~_Semaphore();

    static _Semaphore* create_semaphore(int init);
    int getVal() const { return this->val; }

    void signal();
    void wait();

    void signal_n(int n);
    void wait_n(int n);

    void block();
    void unblock();
private:
    List<TCB> blocked;
    int val;
};
#endif