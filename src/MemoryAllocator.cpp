
#include  "../h/MemoryAllocator.hpp"
#include "../lib/console.h"


MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
}

MemoryAllocator::MemoryAllocator() {
    void* startAddress=(void*)(((size_t)HEAP_START_ADDR+MEM_BLOCK_SIZE-1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    head=(Fragment*)startAddress;
    size_t num=((size_t)HEAP_END_ADDR-(size_t)startAddress) / MEM_BLOCK_SIZE;
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
            else if (fragment->numOfBlocks>numOfBlocksNeeded+1) {
                //how much memory was left int the fragment
                size_t freeSize=fragment->numOfBlocks-numOfBlocksNeeded;

                //allocated block
                fragment->free=0;
                fragment->numOfBlocks=numOfBlocksNeeded;
                Fragment* tmp=fragment->next;

                //sad je okej

                //new free fragment
                fragment->next=(Fragment*)((size_t)fragment+numOfBlocksNeeded*MEM_BLOCK_SIZE);
                fragment->next->free=1;
                fragment->next->prev=fragment;
                fragment->next->numOfBlocks=freeSize;
                fragment->next->next=tmp;
                if(tmp){
                    fragment->next->next->prev=fragment->next;
                }
                return (void*)((size_t)fragment+sizeof(Fragment));
            }
        }
    }
    __putc('F');
    return nullptr;
}

int MemoryAllocator::free(void *fragment) {
    for (Fragment* curr=head; curr; curr=curr->next) {
        if ((size_t)curr+sizeof(Fragment)==(size_t)fragment) {
            if (curr->free) {
                __putc('!');
                return -1;
            }
            else {
                curr->free=1;
                mergeNext(curr);
                mergePrev(curr);
                //__putc('W');
                //__putc('W');
                return 0;
            }
        }
    }
    // is should return the code of the error but I currently dont know what is the code and there might be many more undefined behaviors
    return -1;
}

void MemoryAllocator::mergePrev(Fragment *fragment) {
    if (fragment->prev && fragment->prev->free) {
        fragment->prev->numOfBlocks+=fragment->numOfBlocks;
        fragment->prev->next=fragment->next;
        if(fragment->prev->next){
            fragment->prev->next->prev=fragment->prev;
        }
    }
}

void MemoryAllocator::mergeNext(Fragment *fragment) {
    if (fragment->next && fragment->next->free) {
        fragment->numOfBlocks+=fragment->next->numOfBlocks;
        fragment->next=fragment->next->next;
        if(fragment->next){
            fragment->next->prev=fragment;
        }
    }
}


void* operator new(uint64 n){
    return MemoryAllocator::getInstance().memAlloc(n);
}


void* operator new[](uint64 n){
    return MemoryAllocator::getInstance().memAlloc(n);
}

void operator delete(void *p) noexcept {
    MemoryAllocator::getInstance().free(p);
}
void operator delete[](void *p) noexcept {
    MemoryAllocator::getInstance().free(p);
}

/*
void memoryAllocatorTest() {
__putc('S');
    void* a=mem_alloc(64);
    if(a) {
        __putc('1');
    }
    void* b=mem_alloc(64);
    if(b) {
        __putc('2');
    }
    mem_free(a);
    __putc('F');
    void* p=mem_alloc(64);
    if (p==a) {
        __putc('M');
    }
    __putc('E');
    mem_free(b);
    mem_free(p);
}
*/