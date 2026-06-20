#ifndef CONSOLE_HPP
#define CONSOLE_HPP

#include "../lib/hw.h"
#include "../h/BoundedBuffer.hpp"
#include "../h/Semaphore.hpp"
#include "../h/MemoryAllocator.hpp"

// outputThread needs to be blocked if the outputBuffer is empty
// you can always add charachtes to the input bufffer


class Console{
public:
    static Console& getInstance();
    void putc(char c);
    char getc();
    friend void outputThread(void*);
    void inputInterrupt();
    BoundedBuffer getInputBuffer(){ return inputBuffer; }
    BoundedBuffer getOutputBuffer(){ return outputBuffer; }
    Semaphore* getOutputDataAvailable(){ return outputDataAvailable; }
    Semaphore* getinputDataAvailable(){ return inputDataAvailable; }
    Semaphore* getoutputSpaceAvailable(){ return outputSpaceAvailable; }
private:
    static constexpr uint64 BUFFER_SIZE=256;
    Console();
    BoundedBuffer inputBuffer,outputBuffer;
    Semaphore *outputDataAvailable,*inputDataAvailable,*outputSpaceAvailable;
};


#endif