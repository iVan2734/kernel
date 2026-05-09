#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"

void* mem_alloc(size_t size);

int mem_free(void*);

#endif