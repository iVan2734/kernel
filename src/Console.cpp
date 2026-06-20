#include "../h/Console.hpp"

Console& Console::getInstance(){
    static Console instance;
    return instance;
}

Console::Console()
    outputDataAvailable(0),
    outputSpaceAvailable(256),
    inputDataAvailable(0)
    {}

void Console::putc(char c){
    outputSpaceAvailable.wait();
    outputBuffer.append(c);
    outputDataAvailable.signal();
}

char Console::getc(){
    inputData.wait();
    return inputBuffer.take();
}

void outputThread(void*){
    Console& console=Console::getInstance();
    while(1){
        console.outputDataAvailable.wait();
        while(!(*(volatile char*)CONSOLE_STATUS & CONSOLE_STATUS_TX_BIT));
        *CONSOLE_TX_DATA=(uint64)console.outputBuffer.take();
        console.outputSpaceAvaibable.signal();
    }
}

void console_handler(){
    Console& console=Console::getInstance();
    while(*(volatile char*)CONSOLE_STATUS & CONSOLE_STATUS_RX_BIT){
        char data=*(volatile char*)CONSOLE_RX_DATA;
        if(!console.inputBuffer.isFull()){
            console.inputBuffer.append(data);
            console.inputDataAvailable.signal();
        }
    }
}