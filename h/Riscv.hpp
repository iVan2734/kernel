#ifndef RISCV_HPP
#define RISCV_HPP

#include "../lib/hw.h"

class Riscv{
public:

    //push(pop) x3..x31
    static void pushRegisters();
    static void popRegisters();

    //read helpers
    static uint64 r_scause();
    static uint64 r_sepc();
    static uint64 r_stvec();
    static uint64 r_stval();

    //write helpers
    static void w_scause(uint64 scause);
    static void w_sepc(uint64 sepc);
    static void w_stvec(uint64 stvec);
    static void w_stval(uint64 stval);

    enum BitMaskSip{
        SIP_SSIE=(1<<1),
        SIP_STIE=(1<<5),
        SIP_SEIE=(1<<9),
    };

    static void ms_sip(uint64 mask);
    static void mc_sip(uint64 mask);
    static uint64 r_sip();
    static void w_sip(uint64 sip);


    enum BitMaskSstatus{
        SSTATUS_SIE=(1<<1),
        SSTATUS_SPIE=(1<<5),
        SSTATUS_SPP=(1<<8),
    };

    static void ms_sstatus(uint64 mask);
    static void mc_sstatus(uint64 mask);
    static uint64 r_sstatus();
    static void w_sstatus(uint64 sstatus);

    void enableInterrupts();
    void disableInterrupts();

private:

};

inline void Riscv::enableInterrupts(){
    //this sets SIE which is second bit to 1
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus] "=r"(sstatus));
    sstatus|=(1UL<<1);
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline void Riscv::disableInterrupts(){
    //this sets SIE which is second bit to 0
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus":[sstatus] "=r"(sstatus));
    sstatus&=~(1UL<<1);
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}


inline uint64 Riscv::r_scause(){
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause":[scause] "=r"(scause));
    return scause;

}
inline uint64 Riscv::r_sepc(){
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc], sepc":[sepc] "=r"(sepc));
    return sepc;

}
inline uint64 Riscv::r_stvec(){
    uint64 volatile stvec;
    __asm__ volatile("csrr %[stvec], stvec":[stvec] "=r"(stvec));
    return stvec;

}
inline uint64 Riscv::r_stval(){
    uint64 volatile stval;
    __asm__ volatile("csrr %[stval], stval":[stval] "=r"(stval));
    return stval;

}

inline void Riscv::w_scause(uint64 scause){
    __asm__ volatile ("csrw scause, %[scause]" : : [scause] "r"(scause));
}
inline void Riscv::w_sepc(uint64 sepc){
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
}

inline void Riscv::w_stvec(uint64 stvec){
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
}

inline void Riscv::w_stval(uint64 stval){
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
}

inline void Riscv::popSppSpie() {
    uint64 sstatus;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(sstatus));
    sstatus &= ~(1UL << 8);
    sstatus |=  (1UL << 5);
    __asm__ volatile ("csrw sstatus, %0" : : "r"(sstatus));
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}




#endif