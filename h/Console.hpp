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
    friend void console_handler();
protected:
private:
    Console();
    BoundedBuffer inputBuffer,outputBuffer;
    Semaphore *outputDataAvailable,*inputDataAvailable,*outputSpaceAvailable;
};


#endif