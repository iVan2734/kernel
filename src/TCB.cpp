#include "../h/TCB.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
TCB *TCB::running=nullptr;
uint64 TCB::timeSliceCounter=0;
int TCB::counter=0;
uint64 TCB::idCounter=0;

TCB::TCB(Body body,void* args,bool kernelThread):
    body(body),
    stack(body!=nullptr ? (uint64*)MemoryAllocator::getInstance().memAlloc(STACK_SIZE): nullptr),
    context({
        body!=nullptr ? (uint64) &threadWrapper : 0,
        stack!=nullptr ? (uint64)stack+STACK_SIZE : 0
    }),
    finished(false),
    args(args),
    timeSlice(TIME_SLICE),
    semWaiting(0),
    kernelThr(kernelThread),
	sleepingTime(0),
    myId(idCounter++)

{
    if (body!=nullptr) {
        Scheduler::getInstance().put(this);
        if (!kernelThread) counter++;
    }
}

TCB *TCB::create_thread(Body body,void *args,bool kernelThread) {
    return new TCB(body,args,kernelThread);
}

void TCB::dispatch(){
    TCB *old=running;
    if(!old->isFinished()){ Scheduler::getInstance().put(old); }
    else{
        if (!old->kernelThr) counter--;
    }
    running=Scheduler::getInstance().get();
    if (old!=running) TCB::contextSwitch(&old->context,&running->context);
}

void TCB::yield(){
    __asm__ volatile("mv a0, %0" : : "r" (0x13) );
    __asm__ volatile("ecall");
}

int TCB::thread_exit(){
    TCB* old=TCB::running;
    old->setFinished(true);
    if (!old->kernelThr) TCB::counter--;
    TCB::running=Scheduler::getInstance().get();
    TCB::contextSwitch(&old->context,&running->context);
    return 0;
}

void TCB::threadWrapper(){
    Riscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    yield();
}

int TCB::time_sleep(time_t time){
    if (time == 0) return 0;
	TCB* old=TCB::running;
	old->setSleepingTime(time);
	Scheduler::getInstance().putSleep(old);
	TCB::running=Scheduler::getInstance().get();
	if (old!=running) TCB::contextSwitch(&old->context,&running->context);
	return 0;
}