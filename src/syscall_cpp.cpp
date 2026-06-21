#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size){
    return mem_alloc(size);
}

void operator delete(void* addr){
    mem_free(addr);
}

Thread::Thread(void (*body)(void*),void* arg){
    this->body=body;
    this->arg=arg;
}

Thread::~Thread(){}

int Thread::start(){
    if(body==nullptr){
        return thread_create(&this->myHandle,threadWrapper,this);
    }
    else{
        return thread_create(&this->myHandle,this->body,this->arg);
    }
}

void Thread::dispatch(){
    thread_dispatch();
}

int Thread::sleep(time_t t){
    return time_sleep(t);
}

Thread::Thread(){
    this->body=nullptr;
    this->arg=nullptr;
}

void Thread::threadWrapper(void* arg){
    ((Thread*)arg)->run();
}

Semaphore::Semaphore(unsigned init){
    sem_open(&myHandle,init);
}

int Semaphore::wait(){
    return sem_wait(myHandle);
}

int Semaphore::signal(){
    return sem_signal(myHandle);
}

Semaphore::~Semaphore(){
    sem_close(myHandle);
}

void PeriodicThread::terminate(){
    thread_exit();
}

PeriodicThread::PeriodicThread(time_t period){
    this->period=period;
}

void PeriodicThread::run(){
    while (1){
        periodicActivation();
        time_sleep(period);
    }
}

char Console::getc(){
    return ::getc();
}

void Console::putc(char c){
    ::putc(c);
}

