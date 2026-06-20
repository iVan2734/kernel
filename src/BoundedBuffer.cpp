#include "../h/BoundedBuffer.hpp"

void BoundedBuffer::append(char c){
    buffer[tail]=c;
    tail=(tail+1)%BUFFER_SIZE;
    count++;
}

char BoundedBuffer::take(){
    char c=buffer[head];
    head=(head+1)%BUFFER_SIZE;
    count--;
    return c;
}