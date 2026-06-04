#ifndef MEMORY_ALLOCATOR_HPP
#define MEMORY_ALLOCATOR_HPP

#include "../lib/hw.h"

struct Fragment {
    size_t numOfBlocks;
    struct Fragment* next;
    struct Fragment* prev;
    uint8 free;
};

class MemoryAllocator {
public:
    static MemoryAllocator& getInstance();
    void* memAlloc(size_t size);
    void* firstFitAlloc(size_t size);
    int free(void* fragment);

    //extra
    //void* bestFitAlloc();
    //void* compact();

private:

    MemoryAllocator();
    Fragment* head;
    void mergePrev(Fragment* fragment);
    void mergeNext(Fragment* fragment);
};

#endif