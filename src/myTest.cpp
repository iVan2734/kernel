#include "../h/syscall_c.hpp"

sem_t s;

void child(void*){
    putc('C');          // child poceo
    putc('W');          // pre wait
    sem_wait(s);        // treba da se BLOKIRA (s je 0)
    putc('R');          // probudjen posle signala
}

void userWrapper(void* arg){
    sem_open(&s, 0);
    thread_t t;
    thread_create(&t, child, nullptr);

    putc('1');          // nit napravljena
    thread_dispatch();  // pusti child da dodje do sem_wait i blokira se
    putc('2');          // child bi sad trebalo da je blokiran
    putc('M');          // pre signala
    sem_signal(s);      // treba da ODBLOKIRA child
    putc('3');          // posle signala
    thread_dispatch();  // pusti child da se izvrti do kraja
    putc('K');          // kraj
    putc('\r'); putc('\n');
}