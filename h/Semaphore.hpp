#ifndef SEMAPHORE_HPP
#define SEMAPHORE_HPP

#include "List.hpp"

class Semaphore{
public:
    Semaphore(int init);
protected:
    int getVal() const { return this->val; }
    void signal();
    void wait();
private:
    List<TCB*> blocked;
    int val;
};

#endif