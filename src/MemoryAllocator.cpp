
#include  "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

MemoryAllocator::MemoryAllocator() {
    void* startAddress=(void*)(((size_t)HEAP_START_ADDR+MEM_BLOCK_SIZE-1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    size_t num=((size_t)HEAP_END_ADDR-(size_t)startAddress) / MEM_BLOCK_SIZE;
    head=(Fragment*)startAddress;
    head->numOfBlocks=num;
    head->next=nullptr;
    head->prev=nullptr;
    head->free=1;
}

void* MemoryAllocator::memAlloc(size_t size) {
    return MemoryAllocator::getInstance().firstFitAlloc(size);
    //return MemoryAllocator::getInstance().bestFitAlloc();
}



void* MemoryAllocator::firstFitAlloc(size_t size) {
    if (size<=0) {
        __putc('!');
        return nullptr;
    }
    //sizeof(fragment) extra space to store fragment data
    size_t numOfBlocksNeeded=((size+sizeof(Fragment))%MEM_BLOCK_SIZE==0) ? (size+sizeof(Fragment))/MEM_BLOCK_SIZE : (size+sizeof(Fragment))/MEM_BLOCK_SIZE+1;

    for (Fragment *fragment=head; fragment; fragment=fragment->next) {
        if (fragment->free) {
            if (fragment->numOfBlocks==numOfBlocksNeeded || fragment->numOfBlocks==numOfBlocksNeeded+1) {
                fragment->free=0;
                return (void*)((size_t)fragment+sizeof(Fragment));
            }
            else if (fragment->numOfBlocks>numOfBlocksNeeded) {
                fragment->free=0;
                size_t freeSize=fragment->numOfBlocks-numOfBlocksNeeded;
                Fragment* tmp=fragment->next;
                fragment->next=fragment+sizeof(Fragment)+fragment->numOfBlocks*MEM_BLOCK_SIZE;
                fragment->next->numOfBlocks=freeSize;
                fragment->next->next=tmp;
                return (void*)((size_t)fragment+sizeof(Fragment));
            }
        }
    }
    __putc('N');
    __putc('O');
    __putc('S');
    __putc('P');
    __putc('A');
    __putc('C');
    __putc('E');
    __putc('\n');
    return nullptr;

}

int MemoryAllocator::free(void *fragment) {
    for (Fragment* curr=head; curr; curr=curr->next) {
        if ((char*)curr+sizeof(Fragment)==fragment) {
            if (curr->free) {
                __putc('!');
            }
            else {
                curr->free=1;
                mergeNext(curr);
                mergePrev(curr);
                return 0;
            }
        }
    }
    // is should return the code of the error but I currently dont know what is the code and there might be many more undefined behaviors
    return -1;
}

void MemoryAllocator::mergePrev(Fragment *fragment) {
    if (fragment->prev->free) {
        fragment->prev->numOfBlocks+=fragment->numOfBlocks+MEM_BLOCK_SIZE;
        fragment->prev->next=fragment->next;
    }
}

void MemoryAllocator::mergeNext(Fragment *fragment) {
    if (fragment->next->free) {
        fragment->numOfBlocks+=fragment->next->numOfBlocks+MEM_BLOCK_SIZE;
        fragment->next=fragment->next->next;
    }
}
