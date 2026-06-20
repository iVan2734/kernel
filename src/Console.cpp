#include "../h/Console.hpp"


Console& Console::getInstance(){
    static Console instance;
    return instance;
}

Console::Console():
    outputDataAvailable(0),
    inputDataAvailable(0),
    outputSpaceAvailable(new Semaphore(BUFFER_SIZE))
    {}

void Console::putc(char c){
    outputSpaceAvailable->wait();
    outputBuffer.append(c);
    outputDataAvailable->signal();
}

char Console::getc(){
    inputDataAvailable->wait();
    return inputBuffer.take();
}

void outputThread(void*){
    Console& console=Console::getInstance();
    while(1){
        console.outputDataAvailable->wait();
        while(!(*(volatile char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT));
        *(volatile char*)CONSOLE_TX_DATA=console.outputBuffer.take();
        console.outputSpaceAvailable->signal();
    }
}

void Console::inputInterrupt(){
    Console& console=Console::getInstance();
    while(*(volatile char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
        char data=*(volatile char*)CONSOLE_RX_DATA;
        if(!console.inputBuffer.isFull()){
            console.inputBuffer.append(data);
            console.inputDataAvailable->signal();
        }
    }
}