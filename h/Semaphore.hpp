#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP

#include "List.hpp"
#include "Riscv.hpp"
#Include "Scheduler.hpp"

class Semaphore{
public:
    Semaphore(int init);
    ~Semaphore();
protected:
    int getVal() const { return this->val; }

    void signal();
    void wait();

    void signal_n(int n);
    void wait_n(int n);

    void block();
    void unblock();

    void lock();
    void unlock();

private:
    List<TCB*> blocked;
    int val;
};

inline void lock(){
    Riscv::disableInterrupts();
}

inline void unlock(){
    Riscv::enableInterrupts();
}
#endif