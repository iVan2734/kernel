#ifndef CONSOLE_HPP
#define CONSOLE_HPP

#include "../lib/hw.h"
#include "../h/BoundedBuffer.hpp"
#include "../h/Semaphore.hpp"
#include "../h/MemoryAllocator.hpp"

// outputThread needs to be blocked if the outputBuffer is empty
// you can always add charachters to the input buffer

class _Console{
public:
    static _Console& getInstance();
    void putc(char c);
    char getc();
    friend void outputThread(void*);
    bool isOutputEmpty() { return outputBuffer.isEmpty(); }
    void inputInterrupt();
    BoundedBuffer getInputBuffer(){ return inputBuffer; }
    BoundedBuffer getOutputBuffer(){ return outputBuffer; }
    _Semaphore* getOutputDataAvailable(){ return outputDataAvailable; }
    _Semaphore* getinputDataAvailable(){ return inputDataAvailable; }
    _Semaphore* getoutputSpaceAvailable(){ return outputSpaceAvailable; }
private:
    static constexpr uint64 BUFFER_SIZE=256;
    _Console();
    BoundedBuffer inputBuffer,outputBuffer;
    _Semaphore *outputDataAvailable,*inputDataAvailable,*outputSpaceAvailable;
};


#endif