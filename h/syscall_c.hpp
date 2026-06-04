#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"

void* mem_alloc(size_t size);

int mem_free(void*);

class _thread;
typedef _thread* thread_t;

//* handle is internal indentificator, arg-argmunet and start_routine is pointer to function which is the thread that will excecute
int thread_create( thread_t* handle, void ( *start_routine)( void*), void* arg );

//exit current thread, return negative value if error occurs
int thread_exit();
//synchronous context switch
void thread_dispatch();

class _sem;
typedef _sem* sem_t;

//Create sem with init value, handle is here also an interanal identificator
int sem_open(sem_t* handle,unsigned init);
//close sem, just regular semaphore functions
int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_wait_n(sem_t id, unsigned n);

int sem_signal_n(sem_t id, unsigned n);


#endif