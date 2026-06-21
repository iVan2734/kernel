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

    _Semaphore(uint64 init);
    ~_Semaphore();

    static _Semaphore* create_semaphore(uint64 init);
    int getVal() const { return this->val; }

    void signal();
    void wait();

    void signal_n(uint64 n);
    void wait_n(uint64 n);

    void block();
    void unblock();
private:
    List<TCB> blocked;
    uint64 val;
};
#endif