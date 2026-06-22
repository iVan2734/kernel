#ifndef PRIORITYQUEUE_HPP
#define PRIORITYQUEUE_HPP

#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"

template<typename T>
class PriorityQueue{
public:
    PriorityQueue():head(0){}

    PriorityQueue(const PriorityQueue<T> &)=delete;

    PriorityQueue<T> &operator=(const PriorityQueue<T> &)=delete;

    void add(T *data) {
        Elem *elem = new Elem(data, nullptr);
        time_t sleepTime = data->getSleepingTime();
        if (!head || sleepTime < head->data->getSleepingTime()) {
            if (head) {
                head->data->setSleepingTime(head->data->getSleepingTime() - sleepTime);
            }
            elem->next = head;
            head = elem;
        }
        else{
            Elem *prev = nullptr;
            Elem *curr = head;
            while (curr && sleepTime >= curr->data->getSleepingTime()) {
                sleepTime -= curr->data->getSleepingTime();
                prev = curr;
                curr = curr->next;
            }
            elem->data->setSleepingTime(sleepTime);
            prev->next = elem;
            elem->next = curr;
            if (curr) {
                curr->data->setSleepingTime(curr->data->getSleepingTime() - sleepTime);
            }
        }
    }

    T* remove() {
        if (!head){
            return nullptr;
        }
        if (head->data->getSleepingTime()==0) {
            Elem *elem=head;
            head=head->next;
            T *ret=elem->data;
            delete elem;
            return ret;
        }
        return nullptr;
    }

    T *peek(){
        if(!head) {return 0;}
        return head->data;
    }

    bool empty(){
        return head ? false : true;
    }
private:
    struct Elem{
        T *data;
        Elem *next;
        Elem(T* data,Elem *next):data(data),next(next){}
        void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
        void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }

    };
    Elem *head;
};

#endif