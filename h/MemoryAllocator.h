#pragma once

#include "../lib/hw.h"

struct Fragment {
    size_t numOfBlocks;
    Fragment* next;
    Fragment* prev;
    bool free;
} typedef Fragment;

class MemoryAllocator {
public:
    static MemoryAllocator& getInstance();
    void* memAlloc(size_t size);
    void* firstFitAlloc(size_t size);
    int free(void* fragment);

    //extra
    void* bestFitAlloc();
    void* compact();

private:

    MemoryAllocator();
    Fragment* head;
    bool mergePrev(Fragment* fragment);
    bool mergeNext(Fragment* fragment);
};



