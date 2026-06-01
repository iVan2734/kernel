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

#endif