#ifndef BOUNDEDBUFFER_HPP
#define BOUNDEDBUFFER_HPP

#include "../lib/hw.h"

class BoundedBuffer{
public:
    BoundedBuffer():count(0),head(0),tail(0){}
    void append(char);
    char take();
    bool isEmpty() const { return count==0; }
    bool isFull() const { return count==BUFFER_SIZE; }
protected:
    static constexpr uint64 BUFFER_SIZE=256;
private:
    char buffer[BUFFER_SIZE];
    uint64 count,head,tail;
};

#endif