
#include  "../h/MemoryAllocator.h"
#include "../lib/console.h"


MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

MemoryAllocator::MemoryAllocator() {
    void* startAddress=(void*)((size_t)HEAP_START_ADDR+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE*MEM_BLOCK_SIZE;
    size_t num=((size_t)HEAP_END_ADDR-(size_t)startAddress)/MEM_BLOCK_SIZE;
    head=(*FreeFragment)startAddress;
    head->numOfBlocks=num;
    head->next=nullptr;
    head->prev=nullptr;
    head->free=true;
}

void *MemoryAllocator::memAlloc() {
    return MemoryAllocator::getInstance().firstFitAlloc();
    //return MemoryAllocator::getInstance().bestFitAlloc();
}



void *MemoryAllocator::firstFitAlloc(size_t size) {
    if (size<=0) {
        __putc('!');
        return nullptr;
    }
    //1 more block for fragment data(size and pointer to the next fragement)
    size_t numOfBlockNeeded=((size+sizeof(Fragment))%MEM_BLOCK_SIZE==0) ? (size+sizeof(Fragment))/MEM_BLOCK_SIZE+MEM_BLOCK_SIZE : (size+sizeof(Fragment))/MEM_BLOCK_SIZE+MEM_BLOCK_SIZE;

    for (Fragment *fragment=head; fragment; fragment=fragment->next) {
        if (fragment->free) {
            if (fragment->numOfBlocks==numOfBlockNeeded) {
                fragment->free=false;
                return (void*)(fragment+sizeof(fragment));
            }
            else if (fragment->numOfBlocks>numOfBlockNeeded) {
                fragment->free=false;
                size_t freeSize=fragment->numOfBlocks-numOfBlockNeeded-sizeof(Fragment);
                Fragment* tmp=fragment->next;
                fragment->next=fragment+sizeof(fragment)+fragment->numOfBlocks*MEM_BLOCK_SIZE;
                fragment->next->numOfBlocks=freeSize;
                fragment->next->next=tmp;
                return (void*)(fragment+sizeof(Fragment));
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

}

void *MemoryAllocator::bestFitAlloc() {

}

void MemoryAllocator::free(void *fragment) {
    bool freed=false;
    for (Fragment* curr=head; curr; curr=curr->next) {
        if (curr+MEM_BLOCK_SIZE==fragment) {
            if (curr->free) {
                __putc('!');
            }
            else {
                curr->free=true;
                freed=true;
            }
        }
    }
    if (!freed) {
        __putc('!');
        return;
    }
    mergeNext(curr);
    mergeNext(curr)
}

bool MemoryAllocator::mergePrev(FreeFragement *fragment) {
    if (fragment->prev->free) {
        fragment->prev->numOfBlocks+=fragment->numOfBlocks+MEM_BLOCK_SIZE;
        fragment->prev->next=fragment->next;
        return true;
    }
    return false;
}

bool MemoryAllocator::mergeNext(FreeFragement *fragment) {
    if (fragment->next->free) {
        fragment->numOfBlocks+=fragment->next->numOfBlocks+MEM_BLOCK_SIZE;
        fragment->next=fragment->next->next;
        return true;
    }
}
void *MemoryAllocator::compact() {

}
