#include "../h/Console.hpp"
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"

void dbg(char c);

_Console& _Console::getInstance(){
    static _Console instance;
    return instance;
}

_Console::_Console():
    outputDataAvailable(new _Semaphore(0)),
    inputDataAvailable(new _Semaphore(0)),
    outputSpaceAvailable(new _Semaphore(BUFFER_SIZE-1))
    {}

void _Console::putc(char c){
    outputSpaceAvailable->wait();
    outputBuffer.append(c);
    outputDataAvailable->signal();
}

char _Console::getc(){
    inputDataAvailable->wait();
    return inputBuffer.take();
}

void outputThread(void*){
    _Console& console = _Console::getInstance();
    while(1){
        console.outputDataAvailable->wait();
        while(!(*(volatile char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)) {
            thread_dispatch();
        }
        *(volatile char*)CONSOLE_TX_DATA = console.outputBuffer.take();
        console.outputSpaceAvailable->signal();
    }
}

void _Console::inputInterrupt(){
    _Console& console=_Console::getInstance();
    while(*(volatile char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
        char data=*(volatile char*)CONSOLE_RX_DATA;
        if(!console.inputBuffer.isFull()){
            console.inputBuffer.append(data);
            console.inputDataAvailable->signal();
        }
    }
}