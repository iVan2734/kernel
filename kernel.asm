
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	41813103          	ld	sp,1048(sp) # 80004418 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5f8010ef          	jal	ra,80001614 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <interrupt>:
.extern interruptHandler
.global interrupt
.align 4
interrupt:
    addi sp,sp,-256
    80001000:	f0010113          	addi	sp,sp,-256
    sd x0,0x00(sp)
    80001004:	00013023          	sd	zero,0(sp)
    sd x1,0x08(sp)
    80001008:	00113423          	sd	ra,8(sp)
    sd x2,0x10(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    sd x3,0x18(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    sd x4,0x20(sp)
    80001014:	02413023          	sd	tp,32(sp)
    sd x5,0x28(sp)
    80001018:	02513423          	sd	t0,40(sp)
    sd x6,0x30(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    sd x7,0x38(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    sd x8,0x40(sp)
    80001024:	04813023          	sd	s0,64(sp)
    sd x9,0x48(sp)
    80001028:	04913423          	sd	s1,72(sp)
    sd x10,0x50(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    sd x11,0x58(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    sd x12,0x60(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    sd x13,0x68(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    sd x14,0x70(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    sd x15,0x78(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    sd x16,0x80(sp)
    80001044:	09013023          	sd	a6,128(sp)
    sd x17,0x88(sp)
    80001048:	09113423          	sd	a7,136(sp)
    sd x18,0x90(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    sd x19,0x98(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    sd x20,0xA0(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    sd x21,0xA8(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    sd x22,0xB0(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    sd x23,0xB8(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    sd x24,0xC0(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    sd x25,0xC8(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    sd x26,0xD0(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    sd x27,0xD8(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    sd x28,0xE0(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    sd x29,0xE8(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    sd x30,0xF0(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    sd x31,0xF8(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call interruptHandler
    80001084:	1cc000ef          	jal	ra,80001250 <interruptHandler>

    ld x0,0x00(sp)
    80001088:	00013003          	ld	zero,0(sp)
    ld x1,0x08(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    ld x2,0x10(sp)
    80001090:	01013103          	ld	sp,16(sp)
    ld x3,0x18(sp)
    80001094:	01813183          	ld	gp,24(sp)
    ld x4,0x20(sp)
    80001098:	02013203          	ld	tp,32(sp)
    ld x5,0x28(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    ld x6,0x30(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    ld x7,0x38(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    ld x8,0x40(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    ld x9,0x48(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    ld x10,0x50(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    ld x11,0x58(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    ld x12,0x60(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    ld x13,0x68(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    ld x14,0x70(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    ld x15,0x78(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    ld x16,0x80(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    ld x17,0x88(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    ld x18,0x90(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    ld x19,0x98(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    ld x20,0xA0(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    ld x21,0xA8(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    ld x22,0xB0(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    ld x23,0xB8(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    ld x24,0xC0(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    ld x25,0xC8(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    ld x26,0xD0(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    ld x27,0xD8(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    ld x28,0xE0(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    ld x29,0xE8(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    ld x30,0xF0(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    ld x31,0xF8(sp)
    80001104:	0f813f83          	ld	t6,248(sp)

    addi sp,sp,256
    80001108:	10010113          	addi	sp,sp,256


    sret
    8000110c:	10200073          	sret

0000000080001110 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

extern "C" void interrupt();

void* mem_alloc(size_t size) {
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    //uint64 code=0x01;
    //__asm__ volatile("mv a0, %0" : : "r" (code) );
    //__asm__ volatile("mv a1, %0" : : "r" (size) );
    //need to put interrupt address to stvec
    //ecall
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    8000111c:	00000797          	auipc	a5,0x0
    80001120:	ee478793          	addi	a5,a5,-284 # 80001000 <interrupt>
    80001124:	10579073          	csrw	stvec,a5
    __asm__ volatile("ecall");
    80001128:	00000073          	ecall
    void* returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    8000112c:	00058513          	mv	a0,a1
    return returnValue;
}
    80001130:	00813403          	ld	s0,8(sp)
    80001134:	01010113          	addi	sp,sp,16
    80001138:	00008067          	ret

000000008000113c <_Z8mem_freePv>:

int mem_free(void* addr) {
    8000113c:	ff010113          	addi	sp,sp,-16
    80001140:	00813423          	sd	s0,8(sp)
    80001144:	01010413          	addi	s0,sp,16
    //__asm__ volatile("mv a1, %0 " : : "r" (addr));

    //need to put interrupt address to stvec
    // ecall

    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt) );
    80001148:	00000797          	auipc	a5,0x0
    8000114c:	eb878793          	addi	a5,a5,-328 # 80001000 <interrupt>
    80001150:	10579073          	csrw	stvec,a5
    __asm__ volatile("ecall");
    80001154:	00000073          	ecall
    uint64 returnValue;
    __asm__ volatile("mv %0, a1" : "=r" (returnValue));
    80001158:	00058513          	mv	a0,a1
    return returnValue;
    8000115c:	0005051b          	sext.w	a0,a0
    80001160:	00813403          	ld	s0,8(sp)
    80001164:	01010113          	addi	sp,sp,16
    80001168:	00008067          	ret

000000008000116c <main>:
    MemoryAllocator::getInstance().free(p);
    while (1);
}
*/

void main() {
    8000116c:	fd010113          	addi	sp,sp,-48
    80001170:	02113423          	sd	ra,40(sp)
    80001174:	02813023          	sd	s0,32(sp)
    80001178:	00913c23          	sd	s1,24(sp)
    8000117c:	01213823          	sd	s2,16(sp)
    80001180:	01313423          	sd	s3,8(sp)
    80001184:	03010413          	addi	s0,sp,48
	 __putc('S');
    80001188:	05300513          	li	a0,83
    8000118c:	00002097          	auipc	ra,0x2
    80001190:	550080e7          	jalr	1360(ra) # 800036dc <__putc>
    void* a=mem_alloc(64);
    80001194:	04000513          	li	a0,64
    80001198:	00000097          	auipc	ra,0x0
    8000119c:	f78080e7          	jalr	-136(ra) # 80001110 <_Z9mem_allocm>
    800011a0:	00050493          	mv	s1,a0
    if(a) {
    800011a4:	00050863          	beqz	a0,800011b4 <main+0x48>
        __putc('1');
    800011a8:	03100513          	li	a0,49
    800011ac:	00002097          	auipc	ra,0x2
    800011b0:	530080e7          	jalr	1328(ra) # 800036dc <__putc>
    }
    void* b=mem_alloc(64);
    800011b4:	04000513          	li	a0,64
    800011b8:	00000097          	auipc	ra,0x0
    800011bc:	f58080e7          	jalr	-168(ra) # 80001110 <_Z9mem_allocm>
    800011c0:	00050993          	mv	s3,a0
    if(b) {
    800011c4:	00050863          	beqz	a0,800011d4 <main+0x68>
        __putc('2');
    800011c8:	03200513          	li	a0,50
    800011cc:	00002097          	auipc	ra,0x2
    800011d0:	510080e7          	jalr	1296(ra) # 800036dc <__putc>
    }
    mem_free(a);
    800011d4:	00048513          	mv	a0,s1
    800011d8:	00000097          	auipc	ra,0x0
    800011dc:	f64080e7          	jalr	-156(ra) # 8000113c <_Z8mem_freePv>
    __putc('F');
    800011e0:	04600513          	li	a0,70
    800011e4:	00002097          	auipc	ra,0x2
    800011e8:	4f8080e7          	jalr	1272(ra) # 800036dc <__putc>
    void* p=mem_alloc(64);
    800011ec:	04000513          	li	a0,64
    800011f0:	00000097          	auipc	ra,0x0
    800011f4:	f20080e7          	jalr	-224(ra) # 80001110 <_Z9mem_allocm>
    800011f8:	00050913          	mv	s2,a0
    if (p==a) {
    800011fc:	04a48263          	beq	s1,a0,80001240 <main+0xd4>
        __putc('M');
    }
    __putc('E');
    80001200:	04500513          	li	a0,69
    80001204:	00002097          	auipc	ra,0x2
    80001208:	4d8080e7          	jalr	1240(ra) # 800036dc <__putc>
	mem_free(b);
    8000120c:	00098513          	mv	a0,s3
    80001210:	00000097          	auipc	ra,0x0
    80001214:	f2c080e7          	jalr	-212(ra) # 8000113c <_Z8mem_freePv>
    mem_free(p);
    80001218:	00090513          	mv	a0,s2
    8000121c:	00000097          	auipc	ra,0x0
    80001220:	f20080e7          	jalr	-224(ra) # 8000113c <_Z8mem_freePv>
    80001224:	02813083          	ld	ra,40(sp)
    80001228:	02013403          	ld	s0,32(sp)
    8000122c:	01813483          	ld	s1,24(sp)
    80001230:	01013903          	ld	s2,16(sp)
    80001234:	00813983          	ld	s3,8(sp)
    80001238:	03010113          	addi	sp,sp,48
    8000123c:	00008067          	ret
        __putc('M');
    80001240:	04d00513          	li	a0,77
    80001244:	00002097          	auipc	ra,0x2
    80001248:	498080e7          	jalr	1176(ra) # 800036dc <__putc>
    8000124c:	fb5ff06f          	j	80001200 <main+0x94>

0000000080001250 <interruptHandler>:
    uint64 scauseValue;
    void* addr;
    size_t size;
    int returnValue;

    __asm__ volatile("csrr %[scause], scause": [scause] "=r" (scauseValue));
    80001250:	142027f3          	csrr	a5,scause
    __asm__ volatile("csrr t0,sepc");
    80001254:	141022f3          	csrr	t0,sepc
    __asm__ volatile("addi t0,t0,4");
    80001258:	00428293          	addi	t0,t0,4
    __asm__ volatile("csrw sepc,t0");
    8000125c:	14129073          	csrw	sepc,t0
    if (scauseValue == (0x01<<3 | 0x01) || scauseValue == (0x01<<3)) {
    80001260:	ff878793          	addi	a5,a5,-8
    80001264:	00100713          	li	a4,1
    80001268:	00f77463          	bgeu	a4,a5,80001270 <interruptHandler+0x20>
    8000126c:	00008067          	ret
extern "C" void interruptHandler() {
    80001270:	fe010113          	addi	sp,sp,-32
    80001274:	00113c23          	sd	ra,24(sp)
    80001278:	00813823          	sd	s0,16(sp)
    8000127c:	00913423          	sd	s1,8(sp)
    80001280:	02010413          	addi	s0,sp,32
        //ecall iz korisnickog rezima
        uint64 code;
        //big swittch with C API codes
        __asm__ volatile("mv %0, a0" : "=r" (code) );
    80001284:	00050793          	mv	a5,a0
        switch (code) {
    80001288:	02e78063          	beq	a5,a4,800012a8 <interruptHandler+0x58>
    8000128c:	00200713          	li	a4,2
    80001290:	02e78c63          	beq	a5,a4,800012c8 <interruptHandler+0x78>
        }
    }
    else {
        //i will need to add other traps
    }
}
    80001294:	01813083          	ld	ra,24(sp)
    80001298:	01013403          	ld	s0,16(sp)
    8000129c:	00813483          	ld	s1,8(sp)
    800012a0:	02010113          	addi	sp,sp,32
    800012a4:	00008067          	ret
                __asm__ volatile ("mv %0, a1" : "=r" (size) );
    800012a8:	00058493          	mv	s1,a1
                addr=MemoryAllocator::getInstance().memAlloc(size);
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	098080e7          	jalr	152(ra) # 80001344 <_ZN15MemoryAllocator11getInstanceEv>
    800012b4:	00048593          	mv	a1,s1
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	1e4080e7          	jalr	484(ra) # 8000149c <_ZN15MemoryAllocator8memAllocEm>
                __asm__ volatile ("mv a0, %0" : : "r" (addr));
    800012c0:	00050513          	mv	a0,a0
                break;
    800012c4:	fd1ff06f          	j	80001294 <interruptHandler+0x44>
                __asm__ volatile ("mv %0, a1" : "=r" (addr));
    800012c8:	00058493          	mv	s1,a1
                returnValue=MemoryAllocator::getInstance().free(addr);
    800012cc:	00000097          	auipc	ra,0x0
    800012d0:	078080e7          	jalr	120(ra) # 80001344 <_ZN15MemoryAllocator11getInstanceEv>
    800012d4:	00048593          	mv	a1,s1
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	2a0080e7          	jalr	672(ra) # 80001578 <_ZN15MemoryAllocator4freeEPv>
                __asm__ volatile ("mv a0, %0" : : "r" (returnValue));
    800012e0:	00050513          	mv	a0,a0
}
    800012e4:	fb1ff06f          	j	80001294 <interruptHandler+0x44>

00000000800012e8 <_ZN15MemoryAllocatorC1Ev>:
MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

MemoryAllocator::MemoryAllocator() {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00813423          	sd	s0,8(sp)
    800012f0:	01010413          	addi	s0,sp,16
    void* startAddress=(void*)(((size_t)HEAP_START_ADDR+MEM_BLOCK_SIZE-1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    800012f4:	00003797          	auipc	a5,0x3
    800012f8:	1147b783          	ld	a5,276(a5) # 80004408 <HEAP_START_ADDR>
    800012fc:	03f78793          	addi	a5,a5,63
    80001300:	fc07f793          	andi	a5,a5,-64
    head=(Fragment*)startAddress;
    80001304:	00f53023          	sd	a5,0(a0) # 1000 <_entry-0x7ffff000>
    size_t num=((size_t)HEAP_END_ADDR-(size_t)startAddress) / MEM_BLOCK_SIZE;
    80001308:	00003717          	auipc	a4,0x3
    8000130c:	0f873703          	ld	a4,248(a4) # 80004400 <HEAP_END_ADDR>
    80001310:	40f70733          	sub	a4,a4,a5
    80001314:	00675713          	srli	a4,a4,0x6
    head->numOfBlocks=num;
    80001318:	00e7b023          	sd	a4,0(a5)
    head->next=nullptr;
    8000131c:	00053783          	ld	a5,0(a0)
    80001320:	0007b423          	sd	zero,8(a5)
    head->prev=nullptr;
    80001324:	00053783          	ld	a5,0(a0)
    80001328:	0007b823          	sd	zero,16(a5)
    head->free=1;
    8000132c:	00053783          	ld	a5,0(a0)
    80001330:	00100713          	li	a4,1
    80001334:	00e78c23          	sb	a4,24(a5)
}
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_ZN15MemoryAllocator11getInstanceEv>:
    static MemoryAllocator instance;
    80001344:	00003797          	auipc	a5,0x3
    80001348:	0ec7c783          	lbu	a5,236(a5) # 80004430 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    8000134c:	00078863          	beqz	a5,8000135c <_ZN15MemoryAllocator11getInstanceEv+0x18>
}
    80001350:	00003517          	auipc	a0,0x3
    80001354:	0e850513          	addi	a0,a0,232 # 80004438 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001358:	00008067          	ret
MemoryAllocator &MemoryAllocator::getInstance() {
    8000135c:	ff010113          	addi	sp,sp,-16
    80001360:	00113423          	sd	ra,8(sp)
    80001364:	00813023          	sd	s0,0(sp)
    80001368:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    8000136c:	00003517          	auipc	a0,0x3
    80001370:	0cc50513          	addi	a0,a0,204 # 80004438 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001374:	00000097          	auipc	ra,0x0
    80001378:	f74080e7          	jalr	-140(ra) # 800012e8 <_ZN15MemoryAllocatorC1Ev>
    8000137c:	00100793          	li	a5,1
    80001380:	00003717          	auipc	a4,0x3
    80001384:	0af70823          	sb	a5,176(a4) # 80004430 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
}
    80001388:	00003517          	auipc	a0,0x3
    8000138c:	0b050513          	addi	a0,a0,176 # 80004438 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001390:	00813083          	ld	ra,8(sp)
    80001394:	00013403          	ld	s0,0(sp)
    80001398:	01010113          	addi	sp,sp,16
    8000139c:	00008067          	ret

00000000800013a0 <_ZN15MemoryAllocator13firstFitAllocEm>:
    //return MemoryAllocator::getInstance().bestFitAlloc();
}



void* MemoryAllocator::firstFitAlloc(size_t size) {
    800013a0:	fe010113          	addi	sp,sp,-32
    800013a4:	00113c23          	sd	ra,24(sp)
    800013a8:	00813823          	sd	s0,16(sp)
    800013ac:	00913423          	sd	s1,8(sp)
    800013b0:	02010413          	addi	s0,sp,32
    if (size<=0) {
    800013b4:	00058e63          	beqz	a1,800013d0 <_ZN15MemoryAllocator13firstFitAllocEm+0x30>
        __putc('!');
        return nullptr;
    }
    //sizeof(fragment) extra space to store fragment data
    size_t numOfBlocksNeeded=((size+sizeof(Fragment))%MEM_BLOCK_SIZE==0) ? (size+sizeof(Fragment))/MEM_BLOCK_SIZE : (size+sizeof(Fragment))/MEM_BLOCK_SIZE+1;
    800013b8:	02058593          	addi	a1,a1,32
    800013bc:	03f5f793          	andi	a5,a1,63
    800013c0:	02079263          	bnez	a5,800013e4 <_ZN15MemoryAllocator13firstFitAllocEm+0x44>
    800013c4:	0065d713          	srli	a4,a1,0x6

    for (Fragment *fragment=head; fragment; fragment=fragment->next) {
    800013c8:	00053483          	ld	s1,0(a0)
    800013cc:	0340006f          	j	80001400 <_ZN15MemoryAllocator13firstFitAllocEm+0x60>
        __putc('!');
    800013d0:	02100513          	li	a0,33
    800013d4:	00002097          	auipc	ra,0x2
    800013d8:	308080e7          	jalr	776(ra) # 800036dc <__putc>
        return nullptr;
    800013dc:	00000493          	li	s1,0
    800013e0:	0a40006f          	j	80001484 <_ZN15MemoryAllocator13firstFitAllocEm+0xe4>
    size_t numOfBlocksNeeded=((size+sizeof(Fragment))%MEM_BLOCK_SIZE==0) ? (size+sizeof(Fragment))/MEM_BLOCK_SIZE : (size+sizeof(Fragment))/MEM_BLOCK_SIZE+1;
    800013e4:	0065d713          	srli	a4,a1,0x6
    800013e8:	00170713          	addi	a4,a4,1
    800013ec:	fddff06f          	j	800013c8 <_ZN15MemoryAllocator13firstFitAllocEm+0x28>
        if (fragment->free) {
            if (fragment->numOfBlocks==numOfBlocksNeeded || fragment->numOfBlocks==numOfBlocksNeeded+1) {
                fragment->free=0;
    800013f0:	00048c23          	sb	zero,24(s1)
                return (void*)((size_t)fragment+sizeof(Fragment));
    800013f4:	02048493          	addi	s1,s1,32
    800013f8:	08c0006f          	j	80001484 <_ZN15MemoryAllocator13firstFitAllocEm+0xe4>
    for (Fragment *fragment=head; fragment; fragment=fragment->next) {
    800013fc:	0084b483          	ld	s1,8(s1)
    80001400:	06048c63          	beqz	s1,80001478 <_ZN15MemoryAllocator13firstFitAllocEm+0xd8>
        if (fragment->free) {
    80001404:	0184c783          	lbu	a5,24(s1)
    80001408:	fe078ae3          	beqz	a5,800013fc <_ZN15MemoryAllocator13firstFitAllocEm+0x5c>
            if (fragment->numOfBlocks==numOfBlocksNeeded || fragment->numOfBlocks==numOfBlocksNeeded+1) {
    8000140c:	0004b783          	ld	a5,0(s1)
    80001410:	fee780e3          	beq	a5,a4,800013f0 <_ZN15MemoryAllocator13firstFitAllocEm+0x50>
    80001414:	00170693          	addi	a3,a4,1
    80001418:	fcd78ce3          	beq	a5,a3,800013f0 <_ZN15MemoryAllocator13firstFitAllocEm+0x50>
            }
            else if (fragment->numOfBlocks>numOfBlocksNeeded+1) {
    8000141c:	fef6f0e3          	bgeu	a3,a5,800013fc <_ZN15MemoryAllocator13firstFitAllocEm+0x5c>
                //how much memory was left int the fragment
                size_t freeSize=fragment->numOfBlocks-numOfBlocksNeeded;
    80001420:	40e787b3          	sub	a5,a5,a4

                //allocated block
                fragment->free=0;
    80001424:	00048c23          	sb	zero,24(s1)
                fragment->numOfBlocks=numOfBlocksNeeded;
    80001428:	00e4b023          	sd	a4,0(s1)
                Fragment* tmp=fragment->next;
    8000142c:	0084b683          	ld	a3,8(s1)

                //sad je okej

                //new free fragment
                fragment->next=(Fragment*)((size_t)fragment+numOfBlocksNeeded*MEM_BLOCK_SIZE);
    80001430:	00671713          	slli	a4,a4,0x6
    80001434:	00048613          	mv	a2,s1
    80001438:	00970733          	add	a4,a4,s1
    8000143c:	00e4b423          	sd	a4,8(s1)
                fragment->next->free=1;
    80001440:	00100593          	li	a1,1
    80001444:	00b70c23          	sb	a1,24(a4)
                fragment->next->prev=fragment;
    80001448:	0084b703          	ld	a4,8(s1)
    8000144c:	00973823          	sd	s1,16(a4)
                fragment->next->numOfBlocks=freeSize;
    80001450:	0084b703          	ld	a4,8(s1)
    80001454:	00f73023          	sd	a5,0(a4)
                fragment->next->next=tmp;
    80001458:	0084b783          	ld	a5,8(s1)
    8000145c:	00d7b423          	sd	a3,8(a5)
                if(tmp){
    80001460:	00068863          	beqz	a3,80001470 <_ZN15MemoryAllocator13firstFitAllocEm+0xd0>
                    fragment->next->next->prev=fragment->next;
    80001464:	0084b783          	ld	a5,8(s1)
    80001468:	0087b703          	ld	a4,8(a5)
    8000146c:	00f73823          	sd	a5,16(a4)
                }
                return (void*)((size_t)fragment+sizeof(Fragment));
    80001470:	02060493          	addi	s1,a2,32
    80001474:	0100006f          	j	80001484 <_ZN15MemoryAllocator13firstFitAllocEm+0xe4>
            }
        }
    }
    __putc('F');
    80001478:	04600513          	li	a0,70
    8000147c:	00002097          	auipc	ra,0x2
    80001480:	260080e7          	jalr	608(ra) # 800036dc <__putc>
    return nullptr;
}
    80001484:	00048513          	mv	a0,s1
    80001488:	01813083          	ld	ra,24(sp)
    8000148c:	01013403          	ld	s0,16(sp)
    80001490:	00813483          	ld	s1,8(sp)
    80001494:	02010113          	addi	sp,sp,32
    80001498:	00008067          	ret

000000008000149c <_ZN15MemoryAllocator8memAllocEm>:
void* MemoryAllocator::memAlloc(size_t size) {
    8000149c:	fe010113          	addi	sp,sp,-32
    800014a0:	00113c23          	sd	ra,24(sp)
    800014a4:	00813823          	sd	s0,16(sp)
    800014a8:	00913423          	sd	s1,8(sp)
    800014ac:	02010413          	addi	s0,sp,32
    800014b0:	00058493          	mv	s1,a1
    return MemoryAllocator::getInstance().firstFitAlloc(size);
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	e90080e7          	jalr	-368(ra) # 80001344 <_ZN15MemoryAllocator11getInstanceEv>
    800014bc:	00048593          	mv	a1,s1
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	ee0080e7          	jalr	-288(ra) # 800013a0 <_ZN15MemoryAllocator13firstFitAllocEm>
}
    800014c8:	01813083          	ld	ra,24(sp)
    800014cc:	01013403          	ld	s0,16(sp)
    800014d0:	00813483          	ld	s1,8(sp)
    800014d4:	02010113          	addi	sp,sp,32
    800014d8:	00008067          	ret

00000000800014dc <_ZN15MemoryAllocator9mergePrevEP8Fragment>:
    }
    // is should return the code of the error but I currently dont know what is the code and there might be many more undefined behaviors
    return -1;
}

void MemoryAllocator::mergePrev(Fragment *fragment) {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16
    if (fragment->prev && fragment->prev->free) {
    800014e8:	0105b783          	ld	a5,16(a1)
    800014ec:	02078c63          	beqz	a5,80001524 <_ZN15MemoryAllocator9mergePrevEP8Fragment+0x48>
    800014f0:	0187c703          	lbu	a4,24(a5)
    800014f4:	02070863          	beqz	a4,80001524 <_ZN15MemoryAllocator9mergePrevEP8Fragment+0x48>
        fragment->prev->numOfBlocks+=fragment->numOfBlocks;
    800014f8:	0005b683          	ld	a3,0(a1)
    800014fc:	0007b703          	ld	a4,0(a5)
    80001500:	00d70733          	add	a4,a4,a3
    80001504:	00e7b023          	sd	a4,0(a5)
        fragment->prev->next=fragment->next;
    80001508:	0105b783          	ld	a5,16(a1)
    8000150c:	0085b703          	ld	a4,8(a1)
    80001510:	00e7b423          	sd	a4,8(a5)
        if(fragment->prev->next){
    80001514:	0105b703          	ld	a4,16(a1)
    80001518:	00873783          	ld	a5,8(a4)
    8000151c:	00078463          	beqz	a5,80001524 <_ZN15MemoryAllocator9mergePrevEP8Fragment+0x48>
            fragment->prev->next->prev=fragment->prev;
    80001520:	00e7b823          	sd	a4,16(a5)
        }
    }
}
    80001524:	00813403          	ld	s0,8(sp)
    80001528:	01010113          	addi	sp,sp,16
    8000152c:	00008067          	ret

0000000080001530 <_ZN15MemoryAllocator9mergeNextEP8Fragment>:

void MemoryAllocator::mergeNext(Fragment *fragment) {
    80001530:	ff010113          	addi	sp,sp,-16
    80001534:	00813423          	sd	s0,8(sp)
    80001538:	01010413          	addi	s0,sp,16
    if (fragment->next && fragment->next->free) {
    8000153c:	0085b783          	ld	a5,8(a1)
    80001540:	02078663          	beqz	a5,8000156c <_ZN15MemoryAllocator9mergeNextEP8Fragment+0x3c>
    80001544:	0187c703          	lbu	a4,24(a5)
    80001548:	02070263          	beqz	a4,8000156c <_ZN15MemoryAllocator9mergeNextEP8Fragment+0x3c>
        fragment->numOfBlocks+=fragment->next->numOfBlocks;
    8000154c:	0007b683          	ld	a3,0(a5)
    80001550:	0005b703          	ld	a4,0(a1)
    80001554:	00d70733          	add	a4,a4,a3
    80001558:	00e5b023          	sd	a4,0(a1)
        fragment->next=fragment->next->next;
    8000155c:	0087b783          	ld	a5,8(a5)
    80001560:	00f5b423          	sd	a5,8(a1)
        if(fragment->next){
    80001564:	00078463          	beqz	a5,8000156c <_ZN15MemoryAllocator9mergeNextEP8Fragment+0x3c>
            fragment->next->prev=fragment;
    80001568:	00b7b823          	sd	a1,16(a5)
        }
    }
}
    8000156c:	00813403          	ld	s0,8(sp)
    80001570:	01010113          	addi	sp,sp,16
    80001574:	00008067          	ret

0000000080001578 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *fragment) {
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	01213023          	sd	s2,0(sp)
    8000158c:	02010413          	addi	s0,sp,32
    80001590:	00050913          	mv	s2,a0
    for (Fragment* curr=head; curr; curr=curr->next) {
    80001594:	00053483          	ld	s1,0(a0)
    80001598:	06048063          	beqz	s1,800015f8 <_ZN15MemoryAllocator4freeEPv+0x80>
        if ((size_t)curr+sizeof(Fragment)==(size_t)fragment) {
    8000159c:	02048793          	addi	a5,s1,32
    800015a0:	00b78663          	beq	a5,a1,800015ac <_ZN15MemoryAllocator4freeEPv+0x34>
    for (Fragment* curr=head; curr; curr=curr->next) {
    800015a4:	0084b483          	ld	s1,8(s1)
    800015a8:	ff1ff06f          	j	80001598 <_ZN15MemoryAllocator4freeEPv+0x20>
            if (curr->free) {
    800015ac:	0184c783          	lbu	a5,24(s1)
    800015b0:	02079a63          	bnez	a5,800015e4 <_ZN15MemoryAllocator4freeEPv+0x6c>
                curr->free=1;
    800015b4:	00100793          	li	a5,1
    800015b8:	00f48c23          	sb	a5,24(s1)
                mergeNext(curr);
    800015bc:	00048593          	mv	a1,s1
    800015c0:	00090513          	mv	a0,s2
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	f6c080e7          	jalr	-148(ra) # 80001530 <_ZN15MemoryAllocator9mergeNextEP8Fragment>
                mergePrev(curr);
    800015cc:	00048593          	mv	a1,s1
    800015d0:	00090513          	mv	a0,s2
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	f08080e7          	jalr	-248(ra) # 800014dc <_ZN15MemoryAllocator9mergePrevEP8Fragment>
                return 0;
    800015dc:	00000513          	li	a0,0
    800015e0:	01c0006f          	j	800015fc <_ZN15MemoryAllocator4freeEPv+0x84>
                __putc('!');
    800015e4:	02100513          	li	a0,33
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	0f4080e7          	jalr	244(ra) # 800036dc <__putc>
                return -1;
    800015f0:	fff00513          	li	a0,-1
    800015f4:	0080006f          	j	800015fc <_ZN15MemoryAllocator4freeEPv+0x84>
    return -1;
    800015f8:	fff00513          	li	a0,-1
}
    800015fc:	01813083          	ld	ra,24(sp)
    80001600:	01013403          	ld	s0,16(sp)
    80001604:	00813483          	ld	s1,8(sp)
    80001608:	00013903          	ld	s2,0(sp)
    8000160c:	02010113          	addi	sp,sp,32
    80001610:	00008067          	ret

0000000080001614 <start>:
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00813423          	sd	s0,8(sp)
    8000161c:	01010413          	addi	s0,sp,16
    80001620:	300027f3          	csrr	a5,mstatus
    80001624:	ffffe737          	lui	a4,0xffffe
    80001628:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff913f>
    8000162c:	00e7f7b3          	and	a5,a5,a4
    80001630:	00001737          	lui	a4,0x1
    80001634:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001638:	00e7e7b3          	or	a5,a5,a4
    8000163c:	30079073          	csrw	mstatus,a5
    80001640:	00000797          	auipc	a5,0x0
    80001644:	16078793          	addi	a5,a5,352 # 800017a0 <system_main>
    80001648:	34179073          	csrw	mepc,a5
    8000164c:	00000793          	li	a5,0
    80001650:	18079073          	csrw	satp,a5
    80001654:	000107b7          	lui	a5,0x10
    80001658:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000165c:	30279073          	csrw	medeleg,a5
    80001660:	30379073          	csrw	mideleg,a5
    80001664:	104027f3          	csrr	a5,sie
    80001668:	2227e793          	ori	a5,a5,546
    8000166c:	10479073          	csrw	sie,a5
    80001670:	fff00793          	li	a5,-1
    80001674:	00a7d793          	srli	a5,a5,0xa
    80001678:	3b079073          	csrw	pmpaddr0,a5
    8000167c:	00f00793          	li	a5,15
    80001680:	3a079073          	csrw	pmpcfg0,a5
    80001684:	f14027f3          	csrr	a5,mhartid
    80001688:	0200c737          	lui	a4,0x200c
    8000168c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001690:	0007869b          	sext.w	a3,a5
    80001694:	00269713          	slli	a4,a3,0x2
    80001698:	000f4637          	lui	a2,0xf4
    8000169c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800016a0:	00d70733          	add	a4,a4,a3
    800016a4:	0037979b          	slliw	a5,a5,0x3
    800016a8:	020046b7          	lui	a3,0x2004
    800016ac:	00d787b3          	add	a5,a5,a3
    800016b0:	00c585b3          	add	a1,a1,a2
    800016b4:	00371693          	slli	a3,a4,0x3
    800016b8:	00003717          	auipc	a4,0x3
    800016bc:	db870713          	addi	a4,a4,-584 # 80004470 <timer_scratch>
    800016c0:	00b7b023          	sd	a1,0(a5)
    800016c4:	00d70733          	add	a4,a4,a3
    800016c8:	00f73c23          	sd	a5,24(a4)
    800016cc:	02c73023          	sd	a2,32(a4)
    800016d0:	34071073          	csrw	mscratch,a4
    800016d4:	00000797          	auipc	a5,0x0
    800016d8:	6ec78793          	addi	a5,a5,1772 # 80001dc0 <timervec>
    800016dc:	30579073          	csrw	mtvec,a5
    800016e0:	300027f3          	csrr	a5,mstatus
    800016e4:	0087e793          	ori	a5,a5,8
    800016e8:	30079073          	csrw	mstatus,a5
    800016ec:	304027f3          	csrr	a5,mie
    800016f0:	0807e793          	ori	a5,a5,128
    800016f4:	30479073          	csrw	mie,a5
    800016f8:	f14027f3          	csrr	a5,mhartid
    800016fc:	0007879b          	sext.w	a5,a5
    80001700:	00078213          	mv	tp,a5
    80001704:	30200073          	mret
    80001708:	00813403          	ld	s0,8(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <timerinit>:
    80001714:	ff010113          	addi	sp,sp,-16
    80001718:	00813423          	sd	s0,8(sp)
    8000171c:	01010413          	addi	s0,sp,16
    80001720:	f14027f3          	csrr	a5,mhartid
    80001724:	0200c737          	lui	a4,0x200c
    80001728:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000172c:	0007869b          	sext.w	a3,a5
    80001730:	00269713          	slli	a4,a3,0x2
    80001734:	000f4637          	lui	a2,0xf4
    80001738:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000173c:	00d70733          	add	a4,a4,a3
    80001740:	0037979b          	slliw	a5,a5,0x3
    80001744:	020046b7          	lui	a3,0x2004
    80001748:	00d787b3          	add	a5,a5,a3
    8000174c:	00c585b3          	add	a1,a1,a2
    80001750:	00371693          	slli	a3,a4,0x3
    80001754:	00003717          	auipc	a4,0x3
    80001758:	d1c70713          	addi	a4,a4,-740 # 80004470 <timer_scratch>
    8000175c:	00b7b023          	sd	a1,0(a5)
    80001760:	00d70733          	add	a4,a4,a3
    80001764:	00f73c23          	sd	a5,24(a4)
    80001768:	02c73023          	sd	a2,32(a4)
    8000176c:	34071073          	csrw	mscratch,a4
    80001770:	00000797          	auipc	a5,0x0
    80001774:	65078793          	addi	a5,a5,1616 # 80001dc0 <timervec>
    80001778:	30579073          	csrw	mtvec,a5
    8000177c:	300027f3          	csrr	a5,mstatus
    80001780:	0087e793          	ori	a5,a5,8
    80001784:	30079073          	csrw	mstatus,a5
    80001788:	304027f3          	csrr	a5,mie
    8000178c:	0807e793          	ori	a5,a5,128
    80001790:	30479073          	csrw	mie,a5
    80001794:	00813403          	ld	s0,8(sp)
    80001798:	01010113          	addi	sp,sp,16
    8000179c:	00008067          	ret

00000000800017a0 <system_main>:
    800017a0:	fe010113          	addi	sp,sp,-32
    800017a4:	00813823          	sd	s0,16(sp)
    800017a8:	00913423          	sd	s1,8(sp)
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	02010413          	addi	s0,sp,32
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	0c4080e7          	jalr	196(ra) # 80001878 <cpuid>
    800017bc:	00003497          	auipc	s1,0x3
    800017c0:	c8448493          	addi	s1,s1,-892 # 80004440 <started>
    800017c4:	02050263          	beqz	a0,800017e8 <system_main+0x48>
    800017c8:	0004a783          	lw	a5,0(s1)
    800017cc:	0007879b          	sext.w	a5,a5
    800017d0:	fe078ce3          	beqz	a5,800017c8 <system_main+0x28>
    800017d4:	0ff0000f          	fence
    800017d8:	00003517          	auipc	a0,0x3
    800017dc:	87850513          	addi	a0,a0,-1928 # 80004050 <CONSOLE_STATUS+0x40>
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	a7c080e7          	jalr	-1412(ra) # 8000225c <panic>
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	9d0080e7          	jalr	-1584(ra) # 800021b8 <consoleinit>
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	15c080e7          	jalr	348(ra) # 8000294c <printfinit>
    800017f8:	00003517          	auipc	a0,0x3
    800017fc:	93850513          	addi	a0,a0,-1736 # 80004130 <CONSOLE_STATUS+0x120>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	ab8080e7          	jalr	-1352(ra) # 800022b8 <__printf>
    80001808:	00003517          	auipc	a0,0x3
    8000180c:	81850513          	addi	a0,a0,-2024 # 80004020 <CONSOLE_STATUS+0x10>
    80001810:	00001097          	auipc	ra,0x1
    80001814:	aa8080e7          	jalr	-1368(ra) # 800022b8 <__printf>
    80001818:	00003517          	auipc	a0,0x3
    8000181c:	91850513          	addi	a0,a0,-1768 # 80004130 <CONSOLE_STATUS+0x120>
    80001820:	00001097          	auipc	ra,0x1
    80001824:	a98080e7          	jalr	-1384(ra) # 800022b8 <__printf>
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	4b0080e7          	jalr	1200(ra) # 80002cd8 <kinit>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	148080e7          	jalr	328(ra) # 80001978 <trapinit>
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	16c080e7          	jalr	364(ra) # 800019a4 <trapinithart>
    80001840:	00000097          	auipc	ra,0x0
    80001844:	5c0080e7          	jalr	1472(ra) # 80001e00 <plicinit>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	5e0080e7          	jalr	1504(ra) # 80001e28 <plicinithart>
    80001850:	00000097          	auipc	ra,0x0
    80001854:	078080e7          	jalr	120(ra) # 800018c8 <userinit>
    80001858:	0ff0000f          	fence
    8000185c:	00100793          	li	a5,1
    80001860:	00002517          	auipc	a0,0x2
    80001864:	7d850513          	addi	a0,a0,2008 # 80004038 <CONSOLE_STATUS+0x28>
    80001868:	00f4a023          	sw	a5,0(s1)
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	a4c080e7          	jalr	-1460(ra) # 800022b8 <__printf>
    80001874:	0000006f          	j	80001874 <system_main+0xd4>

0000000080001878 <cpuid>:
    80001878:	ff010113          	addi	sp,sp,-16
    8000187c:	00813423          	sd	s0,8(sp)
    80001880:	01010413          	addi	s0,sp,16
    80001884:	00020513          	mv	a0,tp
    80001888:	00813403          	ld	s0,8(sp)
    8000188c:	0005051b          	sext.w	a0,a0
    80001890:	01010113          	addi	sp,sp,16
    80001894:	00008067          	ret

0000000080001898 <mycpu>:
    80001898:	ff010113          	addi	sp,sp,-16
    8000189c:	00813423          	sd	s0,8(sp)
    800018a0:	01010413          	addi	s0,sp,16
    800018a4:	00020793          	mv	a5,tp
    800018a8:	00813403          	ld	s0,8(sp)
    800018ac:	0007879b          	sext.w	a5,a5
    800018b0:	00779793          	slli	a5,a5,0x7
    800018b4:	00004517          	auipc	a0,0x4
    800018b8:	bec50513          	addi	a0,a0,-1044 # 800054a0 <cpus>
    800018bc:	00f50533          	add	a0,a0,a5
    800018c0:	01010113          	addi	sp,sp,16
    800018c4:	00008067          	ret

00000000800018c8 <userinit>:
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00813423          	sd	s0,8(sp)
    800018d0:	01010413          	addi	s0,sp,16
    800018d4:	00813403          	ld	s0,8(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00000317          	auipc	t1,0x0
    800018e0:	89030067          	jr	-1904(t1) # 8000116c <main>

00000000800018e4 <either_copyout>:
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00813023          	sd	s0,0(sp)
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	01010413          	addi	s0,sp,16
    800018f4:	02051663          	bnez	a0,80001920 <either_copyout+0x3c>
    800018f8:	00058513          	mv	a0,a1
    800018fc:	00060593          	mv	a1,a2
    80001900:	0006861b          	sext.w	a2,a3
    80001904:	00002097          	auipc	ra,0x2
    80001908:	c60080e7          	jalr	-928(ra) # 80003564 <__memmove>
    8000190c:	00813083          	ld	ra,8(sp)
    80001910:	00013403          	ld	s0,0(sp)
    80001914:	00000513          	li	a0,0
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret
    80001920:	00002517          	auipc	a0,0x2
    80001924:	75850513          	addi	a0,a0,1880 # 80004078 <CONSOLE_STATUS+0x68>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	934080e7          	jalr	-1740(ra) # 8000225c <panic>

0000000080001930 <either_copyin>:
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	01010413          	addi	s0,sp,16
    80001940:	02059463          	bnez	a1,80001968 <either_copyin+0x38>
    80001944:	00060593          	mv	a1,a2
    80001948:	0006861b          	sext.w	a2,a3
    8000194c:	00002097          	auipc	ra,0x2
    80001950:	c18080e7          	jalr	-1000(ra) # 80003564 <__memmove>
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	00000513          	li	a0,0
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret
    80001968:	00002517          	auipc	a0,0x2
    8000196c:	73850513          	addi	a0,a0,1848 # 800040a0 <CONSOLE_STATUS+0x90>
    80001970:	00001097          	auipc	ra,0x1
    80001974:	8ec080e7          	jalr	-1812(ra) # 8000225c <panic>

0000000080001978 <trapinit>:
    80001978:	ff010113          	addi	sp,sp,-16
    8000197c:	00813423          	sd	s0,8(sp)
    80001980:	01010413          	addi	s0,sp,16
    80001984:	00813403          	ld	s0,8(sp)
    80001988:	00002597          	auipc	a1,0x2
    8000198c:	74058593          	addi	a1,a1,1856 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001990:	00004517          	auipc	a0,0x4
    80001994:	b9050513          	addi	a0,a0,-1136 # 80005520 <tickslock>
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00001317          	auipc	t1,0x1
    800019a0:	5cc30067          	jr	1484(t1) # 80002f68 <initlock>

00000000800019a4 <trapinithart>:
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00813423          	sd	s0,8(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	00000797          	auipc	a5,0x0
    800019b4:	30078793          	addi	a5,a5,768 # 80001cb0 <kernelvec>
    800019b8:	10579073          	csrw	stvec,a5
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <usertrap>:
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16
    800019d4:	00813403          	ld	s0,8(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <usertrapret>:
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00813423          	sd	s0,8(sp)
    800019e8:	01010413          	addi	s0,sp,16
    800019ec:	00813403          	ld	s0,8(sp)
    800019f0:	01010113          	addi	sp,sp,16
    800019f4:	00008067          	ret

00000000800019f8 <kerneltrap>:
    800019f8:	fe010113          	addi	sp,sp,-32
    800019fc:	00813823          	sd	s0,16(sp)
    80001a00:	00113c23          	sd	ra,24(sp)
    80001a04:	00913423          	sd	s1,8(sp)
    80001a08:	02010413          	addi	s0,sp,32
    80001a0c:	142025f3          	csrr	a1,scause
    80001a10:	100027f3          	csrr	a5,sstatus
    80001a14:	0027f793          	andi	a5,a5,2
    80001a18:	10079c63          	bnez	a5,80001b30 <kerneltrap+0x138>
    80001a1c:	142027f3          	csrr	a5,scause
    80001a20:	0207ce63          	bltz	a5,80001a5c <kerneltrap+0x64>
    80001a24:	00002517          	auipc	a0,0x2
    80001a28:	6ec50513          	addi	a0,a0,1772 # 80004110 <CONSOLE_STATUS+0x100>
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	88c080e7          	jalr	-1908(ra) # 800022b8 <__printf>
    80001a34:	141025f3          	csrr	a1,sepc
    80001a38:	14302673          	csrr	a2,stval
    80001a3c:	00002517          	auipc	a0,0x2
    80001a40:	6e450513          	addi	a0,a0,1764 # 80004120 <CONSOLE_STATUS+0x110>
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	874080e7          	jalr	-1932(ra) # 800022b8 <__printf>
    80001a4c:	00002517          	auipc	a0,0x2
    80001a50:	6ec50513          	addi	a0,a0,1772 # 80004138 <CONSOLE_STATUS+0x128>
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	808080e7          	jalr	-2040(ra) # 8000225c <panic>
    80001a5c:	0ff7f713          	andi	a4,a5,255
    80001a60:	00900693          	li	a3,9
    80001a64:	04d70063          	beq	a4,a3,80001aa4 <kerneltrap+0xac>
    80001a68:	fff00713          	li	a4,-1
    80001a6c:	03f71713          	slli	a4,a4,0x3f
    80001a70:	00170713          	addi	a4,a4,1
    80001a74:	fae798e3          	bne	a5,a4,80001a24 <kerneltrap+0x2c>
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	e00080e7          	jalr	-512(ra) # 80001878 <cpuid>
    80001a80:	06050663          	beqz	a0,80001aec <kerneltrap+0xf4>
    80001a84:	144027f3          	csrr	a5,sip
    80001a88:	ffd7f793          	andi	a5,a5,-3
    80001a8c:	14479073          	csrw	sip,a5
    80001a90:	01813083          	ld	ra,24(sp)
    80001a94:	01013403          	ld	s0,16(sp)
    80001a98:	00813483          	ld	s1,8(sp)
    80001a9c:	02010113          	addi	sp,sp,32
    80001aa0:	00008067          	ret
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	3d0080e7          	jalr	976(ra) # 80001e74 <plic_claim>
    80001aac:	00a00793          	li	a5,10
    80001ab0:	00050493          	mv	s1,a0
    80001ab4:	06f50863          	beq	a0,a5,80001b24 <kerneltrap+0x12c>
    80001ab8:	fc050ce3          	beqz	a0,80001a90 <kerneltrap+0x98>
    80001abc:	00050593          	mv	a1,a0
    80001ac0:	00002517          	auipc	a0,0x2
    80001ac4:	63050513          	addi	a0,a0,1584 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	7f0080e7          	jalr	2032(ra) # 800022b8 <__printf>
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	01813083          	ld	ra,24(sp)
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00813483          	ld	s1,8(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00000317          	auipc	t1,0x0
    80001ae8:	3c830067          	jr	968(t1) # 80001eac <plic_complete>
    80001aec:	00004517          	auipc	a0,0x4
    80001af0:	a3450513          	addi	a0,a0,-1484 # 80005520 <tickslock>
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	498080e7          	jalr	1176(ra) # 80002f8c <acquire>
    80001afc:	00003717          	auipc	a4,0x3
    80001b00:	94870713          	addi	a4,a4,-1720 # 80004444 <ticks>
    80001b04:	00072783          	lw	a5,0(a4)
    80001b08:	00004517          	auipc	a0,0x4
    80001b0c:	a1850513          	addi	a0,a0,-1512 # 80005520 <tickslock>
    80001b10:	0017879b          	addiw	a5,a5,1
    80001b14:	00f72023          	sw	a5,0(a4)
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	540080e7          	jalr	1344(ra) # 80003058 <release>
    80001b20:	f65ff06f          	j	80001a84 <kerneltrap+0x8c>
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	09c080e7          	jalr	156(ra) # 80002bc0 <uartintr>
    80001b2c:	fa5ff06f          	j	80001ad0 <kerneltrap+0xd8>
    80001b30:	00002517          	auipc	a0,0x2
    80001b34:	5a050513          	addi	a0,a0,1440 # 800040d0 <CONSOLE_STATUS+0xc0>
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	724080e7          	jalr	1828(ra) # 8000225c <panic>

0000000080001b40 <clockintr>:
    80001b40:	fe010113          	addi	sp,sp,-32
    80001b44:	00813823          	sd	s0,16(sp)
    80001b48:	00913423          	sd	s1,8(sp)
    80001b4c:	00113c23          	sd	ra,24(sp)
    80001b50:	02010413          	addi	s0,sp,32
    80001b54:	00004497          	auipc	s1,0x4
    80001b58:	9cc48493          	addi	s1,s1,-1588 # 80005520 <tickslock>
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	42c080e7          	jalr	1068(ra) # 80002f8c <acquire>
    80001b68:	00003717          	auipc	a4,0x3
    80001b6c:	8dc70713          	addi	a4,a4,-1828 # 80004444 <ticks>
    80001b70:	00072783          	lw	a5,0(a4)
    80001b74:	01013403          	ld	s0,16(sp)
    80001b78:	01813083          	ld	ra,24(sp)
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	0017879b          	addiw	a5,a5,1
    80001b84:	00813483          	ld	s1,8(sp)
    80001b88:	00f72023          	sw	a5,0(a4)
    80001b8c:	02010113          	addi	sp,sp,32
    80001b90:	00001317          	auipc	t1,0x1
    80001b94:	4c830067          	jr	1224(t1) # 80003058 <release>

0000000080001b98 <devintr>:
    80001b98:	142027f3          	csrr	a5,scause
    80001b9c:	00000513          	li	a0,0
    80001ba0:	0007c463          	bltz	a5,80001ba8 <devintr+0x10>
    80001ba4:	00008067          	ret
    80001ba8:	fe010113          	addi	sp,sp,-32
    80001bac:	00813823          	sd	s0,16(sp)
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00913423          	sd	s1,8(sp)
    80001bb8:	02010413          	addi	s0,sp,32
    80001bbc:	0ff7f713          	andi	a4,a5,255
    80001bc0:	00900693          	li	a3,9
    80001bc4:	04d70c63          	beq	a4,a3,80001c1c <devintr+0x84>
    80001bc8:	fff00713          	li	a4,-1
    80001bcc:	03f71713          	slli	a4,a4,0x3f
    80001bd0:	00170713          	addi	a4,a4,1
    80001bd4:	00e78c63          	beq	a5,a4,80001bec <devintr+0x54>
    80001bd8:	01813083          	ld	ra,24(sp)
    80001bdc:	01013403          	ld	s0,16(sp)
    80001be0:	00813483          	ld	s1,8(sp)
    80001be4:	02010113          	addi	sp,sp,32
    80001be8:	00008067          	ret
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	c8c080e7          	jalr	-884(ra) # 80001878 <cpuid>
    80001bf4:	06050663          	beqz	a0,80001c60 <devintr+0xc8>
    80001bf8:	144027f3          	csrr	a5,sip
    80001bfc:	ffd7f793          	andi	a5,a5,-3
    80001c00:	14479073          	csrw	sip,a5
    80001c04:	01813083          	ld	ra,24(sp)
    80001c08:	01013403          	ld	s0,16(sp)
    80001c0c:	00813483          	ld	s1,8(sp)
    80001c10:	00200513          	li	a0,2
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	258080e7          	jalr	600(ra) # 80001e74 <plic_claim>
    80001c24:	00a00793          	li	a5,10
    80001c28:	00050493          	mv	s1,a0
    80001c2c:	06f50663          	beq	a0,a5,80001c98 <devintr+0x100>
    80001c30:	00100513          	li	a0,1
    80001c34:	fa0482e3          	beqz	s1,80001bd8 <devintr+0x40>
    80001c38:	00048593          	mv	a1,s1
    80001c3c:	00002517          	auipc	a0,0x2
    80001c40:	4b450513          	addi	a0,a0,1204 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	674080e7          	jalr	1652(ra) # 800022b8 <__printf>
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	25c080e7          	jalr	604(ra) # 80001eac <plic_complete>
    80001c58:	00100513          	li	a0,1
    80001c5c:	f7dff06f          	j	80001bd8 <devintr+0x40>
    80001c60:	00004517          	auipc	a0,0x4
    80001c64:	8c050513          	addi	a0,a0,-1856 # 80005520 <tickslock>
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	324080e7          	jalr	804(ra) # 80002f8c <acquire>
    80001c70:	00002717          	auipc	a4,0x2
    80001c74:	7d470713          	addi	a4,a4,2004 # 80004444 <ticks>
    80001c78:	00072783          	lw	a5,0(a4)
    80001c7c:	00004517          	auipc	a0,0x4
    80001c80:	8a450513          	addi	a0,a0,-1884 # 80005520 <tickslock>
    80001c84:	0017879b          	addiw	a5,a5,1
    80001c88:	00f72023          	sw	a5,0(a4)
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	3cc080e7          	jalr	972(ra) # 80003058 <release>
    80001c94:	f65ff06f          	j	80001bf8 <devintr+0x60>
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	f28080e7          	jalr	-216(ra) # 80002bc0 <uartintr>
    80001ca0:	fadff06f          	j	80001c4c <devintr+0xb4>
	...

0000000080001cb0 <kernelvec>:
    80001cb0:	f0010113          	addi	sp,sp,-256
    80001cb4:	00113023          	sd	ra,0(sp)
    80001cb8:	00213423          	sd	sp,8(sp)
    80001cbc:	00313823          	sd	gp,16(sp)
    80001cc0:	00413c23          	sd	tp,24(sp)
    80001cc4:	02513023          	sd	t0,32(sp)
    80001cc8:	02613423          	sd	t1,40(sp)
    80001ccc:	02713823          	sd	t2,48(sp)
    80001cd0:	02813c23          	sd	s0,56(sp)
    80001cd4:	04913023          	sd	s1,64(sp)
    80001cd8:	04a13423          	sd	a0,72(sp)
    80001cdc:	04b13823          	sd	a1,80(sp)
    80001ce0:	04c13c23          	sd	a2,88(sp)
    80001ce4:	06d13023          	sd	a3,96(sp)
    80001ce8:	06e13423          	sd	a4,104(sp)
    80001cec:	06f13823          	sd	a5,112(sp)
    80001cf0:	07013c23          	sd	a6,120(sp)
    80001cf4:	09113023          	sd	a7,128(sp)
    80001cf8:	09213423          	sd	s2,136(sp)
    80001cfc:	09313823          	sd	s3,144(sp)
    80001d00:	09413c23          	sd	s4,152(sp)
    80001d04:	0b513023          	sd	s5,160(sp)
    80001d08:	0b613423          	sd	s6,168(sp)
    80001d0c:	0b713823          	sd	s7,176(sp)
    80001d10:	0b813c23          	sd	s8,184(sp)
    80001d14:	0d913023          	sd	s9,192(sp)
    80001d18:	0da13423          	sd	s10,200(sp)
    80001d1c:	0db13823          	sd	s11,208(sp)
    80001d20:	0dc13c23          	sd	t3,216(sp)
    80001d24:	0fd13023          	sd	t4,224(sp)
    80001d28:	0fe13423          	sd	t5,232(sp)
    80001d2c:	0ff13823          	sd	t6,240(sp)
    80001d30:	cc9ff0ef          	jal	ra,800019f8 <kerneltrap>
    80001d34:	00013083          	ld	ra,0(sp)
    80001d38:	00813103          	ld	sp,8(sp)
    80001d3c:	01013183          	ld	gp,16(sp)
    80001d40:	02013283          	ld	t0,32(sp)
    80001d44:	02813303          	ld	t1,40(sp)
    80001d48:	03013383          	ld	t2,48(sp)
    80001d4c:	03813403          	ld	s0,56(sp)
    80001d50:	04013483          	ld	s1,64(sp)
    80001d54:	04813503          	ld	a0,72(sp)
    80001d58:	05013583          	ld	a1,80(sp)
    80001d5c:	05813603          	ld	a2,88(sp)
    80001d60:	06013683          	ld	a3,96(sp)
    80001d64:	06813703          	ld	a4,104(sp)
    80001d68:	07013783          	ld	a5,112(sp)
    80001d6c:	07813803          	ld	a6,120(sp)
    80001d70:	08013883          	ld	a7,128(sp)
    80001d74:	08813903          	ld	s2,136(sp)
    80001d78:	09013983          	ld	s3,144(sp)
    80001d7c:	09813a03          	ld	s4,152(sp)
    80001d80:	0a013a83          	ld	s5,160(sp)
    80001d84:	0a813b03          	ld	s6,168(sp)
    80001d88:	0b013b83          	ld	s7,176(sp)
    80001d8c:	0b813c03          	ld	s8,184(sp)
    80001d90:	0c013c83          	ld	s9,192(sp)
    80001d94:	0c813d03          	ld	s10,200(sp)
    80001d98:	0d013d83          	ld	s11,208(sp)
    80001d9c:	0d813e03          	ld	t3,216(sp)
    80001da0:	0e013e83          	ld	t4,224(sp)
    80001da4:	0e813f03          	ld	t5,232(sp)
    80001da8:	0f013f83          	ld	t6,240(sp)
    80001dac:	10010113          	addi	sp,sp,256
    80001db0:	10200073          	sret
    80001db4:	00000013          	nop
    80001db8:	00000013          	nop
    80001dbc:	00000013          	nop

0000000080001dc0 <timervec>:
    80001dc0:	34051573          	csrrw	a0,mscratch,a0
    80001dc4:	00b53023          	sd	a1,0(a0)
    80001dc8:	00c53423          	sd	a2,8(a0)
    80001dcc:	00d53823          	sd	a3,16(a0)
    80001dd0:	01853583          	ld	a1,24(a0)
    80001dd4:	02053603          	ld	a2,32(a0)
    80001dd8:	0005b683          	ld	a3,0(a1)
    80001ddc:	00c686b3          	add	a3,a3,a2
    80001de0:	00d5b023          	sd	a3,0(a1)
    80001de4:	00200593          	li	a1,2
    80001de8:	14459073          	csrw	sip,a1
    80001dec:	01053683          	ld	a3,16(a0)
    80001df0:	00853603          	ld	a2,8(a0)
    80001df4:	00053583          	ld	a1,0(a0)
    80001df8:	34051573          	csrrw	a0,mscratch,a0
    80001dfc:	30200073          	mret

0000000080001e00 <plicinit>:
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00813423          	sd	s0,8(sp)
    80001e08:	01010413          	addi	s0,sp,16
    80001e0c:	00813403          	ld	s0,8(sp)
    80001e10:	0c0007b7          	lui	a5,0xc000
    80001e14:	00100713          	li	a4,1
    80001e18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001e1c:	00e7a223          	sw	a4,4(a5)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <plicinithart>:
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813023          	sd	s0,0(sp)
    80001e30:	00113423          	sd	ra,8(sp)
    80001e34:	01010413          	addi	s0,sp,16
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	a40080e7          	jalr	-1472(ra) # 80001878 <cpuid>
    80001e40:	0085171b          	slliw	a4,a0,0x8
    80001e44:	0c0027b7          	lui	a5,0xc002
    80001e48:	00e787b3          	add	a5,a5,a4
    80001e4c:	40200713          	li	a4,1026
    80001e50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	00d5151b          	slliw	a0,a0,0xd
    80001e60:	0c2017b7          	lui	a5,0xc201
    80001e64:	00a78533          	add	a0,a5,a0
    80001e68:	00052023          	sw	zero,0(a0)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <plic_claim>:
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00813023          	sd	s0,0(sp)
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	9f4080e7          	jalr	-1548(ra) # 80001878 <cpuid>
    80001e8c:	00813083          	ld	ra,8(sp)
    80001e90:	00013403          	ld	s0,0(sp)
    80001e94:	00d5151b          	slliw	a0,a0,0xd
    80001e98:	0c2017b7          	lui	a5,0xc201
    80001e9c:	00a78533          	add	a0,a5,a0
    80001ea0:	00452503          	lw	a0,4(a0)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <plic_complete>:
    80001eac:	fe010113          	addi	sp,sp,-32
    80001eb0:	00813823          	sd	s0,16(sp)
    80001eb4:	00913423          	sd	s1,8(sp)
    80001eb8:	00113c23          	sd	ra,24(sp)
    80001ebc:	02010413          	addi	s0,sp,32
    80001ec0:	00050493          	mv	s1,a0
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	9b4080e7          	jalr	-1612(ra) # 80001878 <cpuid>
    80001ecc:	01813083          	ld	ra,24(sp)
    80001ed0:	01013403          	ld	s0,16(sp)
    80001ed4:	00d5179b          	slliw	a5,a0,0xd
    80001ed8:	0c201737          	lui	a4,0xc201
    80001edc:	00f707b3          	add	a5,a4,a5
    80001ee0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001ee4:	00813483          	ld	s1,8(sp)
    80001ee8:	02010113          	addi	sp,sp,32
    80001eec:	00008067          	ret

0000000080001ef0 <consolewrite>:
    80001ef0:	fb010113          	addi	sp,sp,-80
    80001ef4:	04813023          	sd	s0,64(sp)
    80001ef8:	04113423          	sd	ra,72(sp)
    80001efc:	02913c23          	sd	s1,56(sp)
    80001f00:	03213823          	sd	s2,48(sp)
    80001f04:	03313423          	sd	s3,40(sp)
    80001f08:	03413023          	sd	s4,32(sp)
    80001f0c:	01513c23          	sd	s5,24(sp)
    80001f10:	05010413          	addi	s0,sp,80
    80001f14:	06c05c63          	blez	a2,80001f8c <consolewrite+0x9c>
    80001f18:	00060993          	mv	s3,a2
    80001f1c:	00050a13          	mv	s4,a0
    80001f20:	00058493          	mv	s1,a1
    80001f24:	00000913          	li	s2,0
    80001f28:	fff00a93          	li	s5,-1
    80001f2c:	01c0006f          	j	80001f48 <consolewrite+0x58>
    80001f30:	fbf44503          	lbu	a0,-65(s0)
    80001f34:	0019091b          	addiw	s2,s2,1
    80001f38:	00148493          	addi	s1,s1,1
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	a9c080e7          	jalr	-1380(ra) # 800029d8 <uartputc>
    80001f44:	03298063          	beq	s3,s2,80001f64 <consolewrite+0x74>
    80001f48:	00048613          	mv	a2,s1
    80001f4c:	00100693          	li	a3,1
    80001f50:	000a0593          	mv	a1,s4
    80001f54:	fbf40513          	addi	a0,s0,-65
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	9d8080e7          	jalr	-1576(ra) # 80001930 <either_copyin>
    80001f60:	fd5518e3          	bne	a0,s5,80001f30 <consolewrite+0x40>
    80001f64:	04813083          	ld	ra,72(sp)
    80001f68:	04013403          	ld	s0,64(sp)
    80001f6c:	03813483          	ld	s1,56(sp)
    80001f70:	02813983          	ld	s3,40(sp)
    80001f74:	02013a03          	ld	s4,32(sp)
    80001f78:	01813a83          	ld	s5,24(sp)
    80001f7c:	00090513          	mv	a0,s2
    80001f80:	03013903          	ld	s2,48(sp)
    80001f84:	05010113          	addi	sp,sp,80
    80001f88:	00008067          	ret
    80001f8c:	00000913          	li	s2,0
    80001f90:	fd5ff06f          	j	80001f64 <consolewrite+0x74>

0000000080001f94 <consoleread>:
    80001f94:	f9010113          	addi	sp,sp,-112
    80001f98:	06813023          	sd	s0,96(sp)
    80001f9c:	04913c23          	sd	s1,88(sp)
    80001fa0:	05213823          	sd	s2,80(sp)
    80001fa4:	05313423          	sd	s3,72(sp)
    80001fa8:	05413023          	sd	s4,64(sp)
    80001fac:	03513c23          	sd	s5,56(sp)
    80001fb0:	03613823          	sd	s6,48(sp)
    80001fb4:	03713423          	sd	s7,40(sp)
    80001fb8:	03813023          	sd	s8,32(sp)
    80001fbc:	06113423          	sd	ra,104(sp)
    80001fc0:	01913c23          	sd	s9,24(sp)
    80001fc4:	07010413          	addi	s0,sp,112
    80001fc8:	00060b93          	mv	s7,a2
    80001fcc:	00050913          	mv	s2,a0
    80001fd0:	00058c13          	mv	s8,a1
    80001fd4:	00060b1b          	sext.w	s6,a2
    80001fd8:	00003497          	auipc	s1,0x3
    80001fdc:	56048493          	addi	s1,s1,1376 # 80005538 <cons>
    80001fe0:	00400993          	li	s3,4
    80001fe4:	fff00a13          	li	s4,-1
    80001fe8:	00a00a93          	li	s5,10
    80001fec:	05705e63          	blez	s7,80002048 <consoleread+0xb4>
    80001ff0:	09c4a703          	lw	a4,156(s1)
    80001ff4:	0984a783          	lw	a5,152(s1)
    80001ff8:	0007071b          	sext.w	a4,a4
    80001ffc:	08e78463          	beq	a5,a4,80002084 <consoleread+0xf0>
    80002000:	07f7f713          	andi	a4,a5,127
    80002004:	00e48733          	add	a4,s1,a4
    80002008:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000200c:	0017869b          	addiw	a3,a5,1
    80002010:	08d4ac23          	sw	a3,152(s1)
    80002014:	00070c9b          	sext.w	s9,a4
    80002018:	0b370663          	beq	a4,s3,800020c4 <consoleread+0x130>
    8000201c:	00100693          	li	a3,1
    80002020:	f9f40613          	addi	a2,s0,-97
    80002024:	000c0593          	mv	a1,s8
    80002028:	00090513          	mv	a0,s2
    8000202c:	f8e40fa3          	sb	a4,-97(s0)
    80002030:	00000097          	auipc	ra,0x0
    80002034:	8b4080e7          	jalr	-1868(ra) # 800018e4 <either_copyout>
    80002038:	01450863          	beq	a0,s4,80002048 <consoleread+0xb4>
    8000203c:	001c0c13          	addi	s8,s8,1
    80002040:	fffb8b9b          	addiw	s7,s7,-1
    80002044:	fb5c94e3          	bne	s9,s5,80001fec <consoleread+0x58>
    80002048:	000b851b          	sext.w	a0,s7
    8000204c:	06813083          	ld	ra,104(sp)
    80002050:	06013403          	ld	s0,96(sp)
    80002054:	05813483          	ld	s1,88(sp)
    80002058:	05013903          	ld	s2,80(sp)
    8000205c:	04813983          	ld	s3,72(sp)
    80002060:	04013a03          	ld	s4,64(sp)
    80002064:	03813a83          	ld	s5,56(sp)
    80002068:	02813b83          	ld	s7,40(sp)
    8000206c:	02013c03          	ld	s8,32(sp)
    80002070:	01813c83          	ld	s9,24(sp)
    80002074:	40ab053b          	subw	a0,s6,a0
    80002078:	03013b03          	ld	s6,48(sp)
    8000207c:	07010113          	addi	sp,sp,112
    80002080:	00008067          	ret
    80002084:	00001097          	auipc	ra,0x1
    80002088:	1d8080e7          	jalr	472(ra) # 8000325c <push_on>
    8000208c:	0984a703          	lw	a4,152(s1)
    80002090:	09c4a783          	lw	a5,156(s1)
    80002094:	0007879b          	sext.w	a5,a5
    80002098:	fef70ce3          	beq	a4,a5,80002090 <consoleread+0xfc>
    8000209c:	00001097          	auipc	ra,0x1
    800020a0:	234080e7          	jalr	564(ra) # 800032d0 <pop_on>
    800020a4:	0984a783          	lw	a5,152(s1)
    800020a8:	07f7f713          	andi	a4,a5,127
    800020ac:	00e48733          	add	a4,s1,a4
    800020b0:	01874703          	lbu	a4,24(a4)
    800020b4:	0017869b          	addiw	a3,a5,1
    800020b8:	08d4ac23          	sw	a3,152(s1)
    800020bc:	00070c9b          	sext.w	s9,a4
    800020c0:	f5371ee3          	bne	a4,s3,8000201c <consoleread+0x88>
    800020c4:	000b851b          	sext.w	a0,s7
    800020c8:	f96bf2e3          	bgeu	s7,s6,8000204c <consoleread+0xb8>
    800020cc:	08f4ac23          	sw	a5,152(s1)
    800020d0:	f7dff06f          	j	8000204c <consoleread+0xb8>

00000000800020d4 <consputc>:
    800020d4:	10000793          	li	a5,256
    800020d8:	00f50663          	beq	a0,a5,800020e4 <consputc+0x10>
    800020dc:	00001317          	auipc	t1,0x1
    800020e0:	9f430067          	jr	-1548(t1) # 80002ad0 <uartputc_sync>
    800020e4:	ff010113          	addi	sp,sp,-16
    800020e8:	00113423          	sd	ra,8(sp)
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	01010413          	addi	s0,sp,16
    800020f4:	00800513          	li	a0,8
    800020f8:	00001097          	auipc	ra,0x1
    800020fc:	9d8080e7          	jalr	-1576(ra) # 80002ad0 <uartputc_sync>
    80002100:	02000513          	li	a0,32
    80002104:	00001097          	auipc	ra,0x1
    80002108:	9cc080e7          	jalr	-1588(ra) # 80002ad0 <uartputc_sync>
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	00813083          	ld	ra,8(sp)
    80002114:	00800513          	li	a0,8
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00001317          	auipc	t1,0x1
    80002120:	9b430067          	jr	-1612(t1) # 80002ad0 <uartputc_sync>

0000000080002124 <consoleintr>:
    80002124:	fe010113          	addi	sp,sp,-32
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	01213023          	sd	s2,0(sp)
    80002134:	00113c23          	sd	ra,24(sp)
    80002138:	02010413          	addi	s0,sp,32
    8000213c:	00003917          	auipc	s2,0x3
    80002140:	3fc90913          	addi	s2,s2,1020 # 80005538 <cons>
    80002144:	00050493          	mv	s1,a0
    80002148:	00090513          	mv	a0,s2
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	e40080e7          	jalr	-448(ra) # 80002f8c <acquire>
    80002154:	02048c63          	beqz	s1,8000218c <consoleintr+0x68>
    80002158:	0a092783          	lw	a5,160(s2)
    8000215c:	09892703          	lw	a4,152(s2)
    80002160:	07f00693          	li	a3,127
    80002164:	40e7873b          	subw	a4,a5,a4
    80002168:	02e6e263          	bltu	a3,a4,8000218c <consoleintr+0x68>
    8000216c:	00d00713          	li	a4,13
    80002170:	04e48063          	beq	s1,a4,800021b0 <consoleintr+0x8c>
    80002174:	07f7f713          	andi	a4,a5,127
    80002178:	00e90733          	add	a4,s2,a4
    8000217c:	0017879b          	addiw	a5,a5,1
    80002180:	0af92023          	sw	a5,160(s2)
    80002184:	00970c23          	sb	s1,24(a4)
    80002188:	08f92e23          	sw	a5,156(s2)
    8000218c:	01013403          	ld	s0,16(sp)
    80002190:	01813083          	ld	ra,24(sp)
    80002194:	00813483          	ld	s1,8(sp)
    80002198:	00013903          	ld	s2,0(sp)
    8000219c:	00003517          	auipc	a0,0x3
    800021a0:	39c50513          	addi	a0,a0,924 # 80005538 <cons>
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00001317          	auipc	t1,0x1
    800021ac:	eb030067          	jr	-336(t1) # 80003058 <release>
    800021b0:	00a00493          	li	s1,10
    800021b4:	fc1ff06f          	j	80002174 <consoleintr+0x50>

00000000800021b8 <consoleinit>:
    800021b8:	fe010113          	addi	sp,sp,-32
    800021bc:	00113c23          	sd	ra,24(sp)
    800021c0:	00813823          	sd	s0,16(sp)
    800021c4:	00913423          	sd	s1,8(sp)
    800021c8:	02010413          	addi	s0,sp,32
    800021cc:	00003497          	auipc	s1,0x3
    800021d0:	36c48493          	addi	s1,s1,876 # 80005538 <cons>
    800021d4:	00048513          	mv	a0,s1
    800021d8:	00002597          	auipc	a1,0x2
    800021dc:	f7058593          	addi	a1,a1,-144 # 80004148 <CONSOLE_STATUS+0x138>
    800021e0:	00001097          	auipc	ra,0x1
    800021e4:	d88080e7          	jalr	-632(ra) # 80002f68 <initlock>
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	7ac080e7          	jalr	1964(ra) # 80002994 <uartinit>
    800021f0:	01813083          	ld	ra,24(sp)
    800021f4:	01013403          	ld	s0,16(sp)
    800021f8:	00000797          	auipc	a5,0x0
    800021fc:	d9c78793          	addi	a5,a5,-612 # 80001f94 <consoleread>
    80002200:	0af4bc23          	sd	a5,184(s1)
    80002204:	00000797          	auipc	a5,0x0
    80002208:	cec78793          	addi	a5,a5,-788 # 80001ef0 <consolewrite>
    8000220c:	0cf4b023          	sd	a5,192(s1)
    80002210:	00813483          	ld	s1,8(sp)
    80002214:	02010113          	addi	sp,sp,32
    80002218:	00008067          	ret

000000008000221c <console_read>:
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00813423          	sd	s0,8(sp)
    80002224:	01010413          	addi	s0,sp,16
    80002228:	00813403          	ld	s0,8(sp)
    8000222c:	00003317          	auipc	t1,0x3
    80002230:	3c433303          	ld	t1,964(t1) # 800055f0 <devsw+0x10>
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00030067          	jr	t1

000000008000223c <console_write>:
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00813423          	sd	s0,8(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	00813403          	ld	s0,8(sp)
    8000224c:	00003317          	auipc	t1,0x3
    80002250:	3ac33303          	ld	t1,940(t1) # 800055f8 <devsw+0x18>
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00030067          	jr	t1

000000008000225c <panic>:
    8000225c:	fe010113          	addi	sp,sp,-32
    80002260:	00113c23          	sd	ra,24(sp)
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	02010413          	addi	s0,sp,32
    80002270:	00050493          	mv	s1,a0
    80002274:	00002517          	auipc	a0,0x2
    80002278:	edc50513          	addi	a0,a0,-292 # 80004150 <CONSOLE_STATUS+0x140>
    8000227c:	00003797          	auipc	a5,0x3
    80002280:	4007ae23          	sw	zero,1052(a5) # 80005698 <pr+0x18>
    80002284:	00000097          	auipc	ra,0x0
    80002288:	034080e7          	jalr	52(ra) # 800022b8 <__printf>
    8000228c:	00048513          	mv	a0,s1
    80002290:	00000097          	auipc	ra,0x0
    80002294:	028080e7          	jalr	40(ra) # 800022b8 <__printf>
    80002298:	00002517          	auipc	a0,0x2
    8000229c:	e9850513          	addi	a0,a0,-360 # 80004130 <CONSOLE_STATUS+0x120>
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	018080e7          	jalr	24(ra) # 800022b8 <__printf>
    800022a8:	00100793          	li	a5,1
    800022ac:	00002717          	auipc	a4,0x2
    800022b0:	18f72e23          	sw	a5,412(a4) # 80004448 <panicked>
    800022b4:	0000006f          	j	800022b4 <panic+0x58>

00000000800022b8 <__printf>:
    800022b8:	f3010113          	addi	sp,sp,-208
    800022bc:	08813023          	sd	s0,128(sp)
    800022c0:	07313423          	sd	s3,104(sp)
    800022c4:	09010413          	addi	s0,sp,144
    800022c8:	05813023          	sd	s8,64(sp)
    800022cc:	08113423          	sd	ra,136(sp)
    800022d0:	06913c23          	sd	s1,120(sp)
    800022d4:	07213823          	sd	s2,112(sp)
    800022d8:	07413023          	sd	s4,96(sp)
    800022dc:	05513c23          	sd	s5,88(sp)
    800022e0:	05613823          	sd	s6,80(sp)
    800022e4:	05713423          	sd	s7,72(sp)
    800022e8:	03913c23          	sd	s9,56(sp)
    800022ec:	03a13823          	sd	s10,48(sp)
    800022f0:	03b13423          	sd	s11,40(sp)
    800022f4:	00003317          	auipc	t1,0x3
    800022f8:	38c30313          	addi	t1,t1,908 # 80005680 <pr>
    800022fc:	01832c03          	lw	s8,24(t1)
    80002300:	00b43423          	sd	a1,8(s0)
    80002304:	00c43823          	sd	a2,16(s0)
    80002308:	00d43c23          	sd	a3,24(s0)
    8000230c:	02e43023          	sd	a4,32(s0)
    80002310:	02f43423          	sd	a5,40(s0)
    80002314:	03043823          	sd	a6,48(s0)
    80002318:	03143c23          	sd	a7,56(s0)
    8000231c:	00050993          	mv	s3,a0
    80002320:	4a0c1663          	bnez	s8,800027cc <__printf+0x514>
    80002324:	60098c63          	beqz	s3,8000293c <__printf+0x684>
    80002328:	0009c503          	lbu	a0,0(s3)
    8000232c:	00840793          	addi	a5,s0,8
    80002330:	f6f43c23          	sd	a5,-136(s0)
    80002334:	00000493          	li	s1,0
    80002338:	22050063          	beqz	a0,80002558 <__printf+0x2a0>
    8000233c:	00002a37          	lui	s4,0x2
    80002340:	00018ab7          	lui	s5,0x18
    80002344:	000f4b37          	lui	s6,0xf4
    80002348:	00989bb7          	lui	s7,0x989
    8000234c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002350:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002354:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002358:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000235c:	00148c9b          	addiw	s9,s1,1
    80002360:	02500793          	li	a5,37
    80002364:	01998933          	add	s2,s3,s9
    80002368:	38f51263          	bne	a0,a5,800026ec <__printf+0x434>
    8000236c:	00094783          	lbu	a5,0(s2)
    80002370:	00078c9b          	sext.w	s9,a5
    80002374:	1e078263          	beqz	a5,80002558 <__printf+0x2a0>
    80002378:	0024849b          	addiw	s1,s1,2
    8000237c:	07000713          	li	a4,112
    80002380:	00998933          	add	s2,s3,s1
    80002384:	38e78a63          	beq	a5,a4,80002718 <__printf+0x460>
    80002388:	20f76863          	bltu	a4,a5,80002598 <__printf+0x2e0>
    8000238c:	42a78863          	beq	a5,a0,800027bc <__printf+0x504>
    80002390:	06400713          	li	a4,100
    80002394:	40e79663          	bne	a5,a4,800027a0 <__printf+0x4e8>
    80002398:	f7843783          	ld	a5,-136(s0)
    8000239c:	0007a603          	lw	a2,0(a5)
    800023a0:	00878793          	addi	a5,a5,8
    800023a4:	f6f43c23          	sd	a5,-136(s0)
    800023a8:	42064a63          	bltz	a2,800027dc <__printf+0x524>
    800023ac:	00a00713          	li	a4,10
    800023b0:	02e677bb          	remuw	a5,a2,a4
    800023b4:	00002d97          	auipc	s11,0x2
    800023b8:	dc4d8d93          	addi	s11,s11,-572 # 80004178 <digits>
    800023bc:	00900593          	li	a1,9
    800023c0:	0006051b          	sext.w	a0,a2
    800023c4:	00000c93          	li	s9,0
    800023c8:	02079793          	slli	a5,a5,0x20
    800023cc:	0207d793          	srli	a5,a5,0x20
    800023d0:	00fd87b3          	add	a5,s11,a5
    800023d4:	0007c783          	lbu	a5,0(a5)
    800023d8:	02e656bb          	divuw	a3,a2,a4
    800023dc:	f8f40023          	sb	a5,-128(s0)
    800023e0:	14c5d863          	bge	a1,a2,80002530 <__printf+0x278>
    800023e4:	06300593          	li	a1,99
    800023e8:	00100c93          	li	s9,1
    800023ec:	02e6f7bb          	remuw	a5,a3,a4
    800023f0:	02079793          	slli	a5,a5,0x20
    800023f4:	0207d793          	srli	a5,a5,0x20
    800023f8:	00fd87b3          	add	a5,s11,a5
    800023fc:	0007c783          	lbu	a5,0(a5)
    80002400:	02e6d73b          	divuw	a4,a3,a4
    80002404:	f8f400a3          	sb	a5,-127(s0)
    80002408:	12a5f463          	bgeu	a1,a0,80002530 <__printf+0x278>
    8000240c:	00a00693          	li	a3,10
    80002410:	00900593          	li	a1,9
    80002414:	02d777bb          	remuw	a5,a4,a3
    80002418:	02079793          	slli	a5,a5,0x20
    8000241c:	0207d793          	srli	a5,a5,0x20
    80002420:	00fd87b3          	add	a5,s11,a5
    80002424:	0007c503          	lbu	a0,0(a5)
    80002428:	02d757bb          	divuw	a5,a4,a3
    8000242c:	f8a40123          	sb	a0,-126(s0)
    80002430:	48e5f263          	bgeu	a1,a4,800028b4 <__printf+0x5fc>
    80002434:	06300513          	li	a0,99
    80002438:	02d7f5bb          	remuw	a1,a5,a3
    8000243c:	02059593          	slli	a1,a1,0x20
    80002440:	0205d593          	srli	a1,a1,0x20
    80002444:	00bd85b3          	add	a1,s11,a1
    80002448:	0005c583          	lbu	a1,0(a1)
    8000244c:	02d7d7bb          	divuw	a5,a5,a3
    80002450:	f8b401a3          	sb	a1,-125(s0)
    80002454:	48e57263          	bgeu	a0,a4,800028d8 <__printf+0x620>
    80002458:	3e700513          	li	a0,999
    8000245c:	02d7f5bb          	remuw	a1,a5,a3
    80002460:	02059593          	slli	a1,a1,0x20
    80002464:	0205d593          	srli	a1,a1,0x20
    80002468:	00bd85b3          	add	a1,s11,a1
    8000246c:	0005c583          	lbu	a1,0(a1)
    80002470:	02d7d7bb          	divuw	a5,a5,a3
    80002474:	f8b40223          	sb	a1,-124(s0)
    80002478:	46e57663          	bgeu	a0,a4,800028e4 <__printf+0x62c>
    8000247c:	02d7f5bb          	remuw	a1,a5,a3
    80002480:	02059593          	slli	a1,a1,0x20
    80002484:	0205d593          	srli	a1,a1,0x20
    80002488:	00bd85b3          	add	a1,s11,a1
    8000248c:	0005c583          	lbu	a1,0(a1)
    80002490:	02d7d7bb          	divuw	a5,a5,a3
    80002494:	f8b402a3          	sb	a1,-123(s0)
    80002498:	46ea7863          	bgeu	s4,a4,80002908 <__printf+0x650>
    8000249c:	02d7f5bb          	remuw	a1,a5,a3
    800024a0:	02059593          	slli	a1,a1,0x20
    800024a4:	0205d593          	srli	a1,a1,0x20
    800024a8:	00bd85b3          	add	a1,s11,a1
    800024ac:	0005c583          	lbu	a1,0(a1)
    800024b0:	02d7d7bb          	divuw	a5,a5,a3
    800024b4:	f8b40323          	sb	a1,-122(s0)
    800024b8:	3eeaf863          	bgeu	s5,a4,800028a8 <__printf+0x5f0>
    800024bc:	02d7f5bb          	remuw	a1,a5,a3
    800024c0:	02059593          	slli	a1,a1,0x20
    800024c4:	0205d593          	srli	a1,a1,0x20
    800024c8:	00bd85b3          	add	a1,s11,a1
    800024cc:	0005c583          	lbu	a1,0(a1)
    800024d0:	02d7d7bb          	divuw	a5,a5,a3
    800024d4:	f8b403a3          	sb	a1,-121(s0)
    800024d8:	42eb7e63          	bgeu	s6,a4,80002914 <__printf+0x65c>
    800024dc:	02d7f5bb          	remuw	a1,a5,a3
    800024e0:	02059593          	slli	a1,a1,0x20
    800024e4:	0205d593          	srli	a1,a1,0x20
    800024e8:	00bd85b3          	add	a1,s11,a1
    800024ec:	0005c583          	lbu	a1,0(a1)
    800024f0:	02d7d7bb          	divuw	a5,a5,a3
    800024f4:	f8b40423          	sb	a1,-120(s0)
    800024f8:	42ebfc63          	bgeu	s7,a4,80002930 <__printf+0x678>
    800024fc:	02079793          	slli	a5,a5,0x20
    80002500:	0207d793          	srli	a5,a5,0x20
    80002504:	00fd8db3          	add	s11,s11,a5
    80002508:	000dc703          	lbu	a4,0(s11)
    8000250c:	00a00793          	li	a5,10
    80002510:	00900c93          	li	s9,9
    80002514:	f8e404a3          	sb	a4,-119(s0)
    80002518:	00065c63          	bgez	a2,80002530 <__printf+0x278>
    8000251c:	f9040713          	addi	a4,s0,-112
    80002520:	00f70733          	add	a4,a4,a5
    80002524:	02d00693          	li	a3,45
    80002528:	fed70823          	sb	a3,-16(a4)
    8000252c:	00078c93          	mv	s9,a5
    80002530:	f8040793          	addi	a5,s0,-128
    80002534:	01978cb3          	add	s9,a5,s9
    80002538:	f7f40d13          	addi	s10,s0,-129
    8000253c:	000cc503          	lbu	a0,0(s9)
    80002540:	fffc8c93          	addi	s9,s9,-1
    80002544:	00000097          	auipc	ra,0x0
    80002548:	b90080e7          	jalr	-1136(ra) # 800020d4 <consputc>
    8000254c:	ffac98e3          	bne	s9,s10,8000253c <__printf+0x284>
    80002550:	00094503          	lbu	a0,0(s2)
    80002554:	e00514e3          	bnez	a0,8000235c <__printf+0xa4>
    80002558:	1a0c1663          	bnez	s8,80002704 <__printf+0x44c>
    8000255c:	08813083          	ld	ra,136(sp)
    80002560:	08013403          	ld	s0,128(sp)
    80002564:	07813483          	ld	s1,120(sp)
    80002568:	07013903          	ld	s2,112(sp)
    8000256c:	06813983          	ld	s3,104(sp)
    80002570:	06013a03          	ld	s4,96(sp)
    80002574:	05813a83          	ld	s5,88(sp)
    80002578:	05013b03          	ld	s6,80(sp)
    8000257c:	04813b83          	ld	s7,72(sp)
    80002580:	04013c03          	ld	s8,64(sp)
    80002584:	03813c83          	ld	s9,56(sp)
    80002588:	03013d03          	ld	s10,48(sp)
    8000258c:	02813d83          	ld	s11,40(sp)
    80002590:	0d010113          	addi	sp,sp,208
    80002594:	00008067          	ret
    80002598:	07300713          	li	a4,115
    8000259c:	1ce78a63          	beq	a5,a4,80002770 <__printf+0x4b8>
    800025a0:	07800713          	li	a4,120
    800025a4:	1ee79e63          	bne	a5,a4,800027a0 <__printf+0x4e8>
    800025a8:	f7843783          	ld	a5,-136(s0)
    800025ac:	0007a703          	lw	a4,0(a5)
    800025b0:	00878793          	addi	a5,a5,8
    800025b4:	f6f43c23          	sd	a5,-136(s0)
    800025b8:	28074263          	bltz	a4,8000283c <__printf+0x584>
    800025bc:	00002d97          	auipc	s11,0x2
    800025c0:	bbcd8d93          	addi	s11,s11,-1092 # 80004178 <digits>
    800025c4:	00f77793          	andi	a5,a4,15
    800025c8:	00fd87b3          	add	a5,s11,a5
    800025cc:	0007c683          	lbu	a3,0(a5)
    800025d0:	00f00613          	li	a2,15
    800025d4:	0007079b          	sext.w	a5,a4
    800025d8:	f8d40023          	sb	a3,-128(s0)
    800025dc:	0047559b          	srliw	a1,a4,0x4
    800025e0:	0047569b          	srliw	a3,a4,0x4
    800025e4:	00000c93          	li	s9,0
    800025e8:	0ee65063          	bge	a2,a4,800026c8 <__printf+0x410>
    800025ec:	00f6f693          	andi	a3,a3,15
    800025f0:	00dd86b3          	add	a3,s11,a3
    800025f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800025f8:	0087d79b          	srliw	a5,a5,0x8
    800025fc:	00100c93          	li	s9,1
    80002600:	f8d400a3          	sb	a3,-127(s0)
    80002604:	0cb67263          	bgeu	a2,a1,800026c8 <__printf+0x410>
    80002608:	00f7f693          	andi	a3,a5,15
    8000260c:	00dd86b3          	add	a3,s11,a3
    80002610:	0006c583          	lbu	a1,0(a3)
    80002614:	00f00613          	li	a2,15
    80002618:	0047d69b          	srliw	a3,a5,0x4
    8000261c:	f8b40123          	sb	a1,-126(s0)
    80002620:	0047d593          	srli	a1,a5,0x4
    80002624:	28f67e63          	bgeu	a2,a5,800028c0 <__printf+0x608>
    80002628:	00f6f693          	andi	a3,a3,15
    8000262c:	00dd86b3          	add	a3,s11,a3
    80002630:	0006c503          	lbu	a0,0(a3)
    80002634:	0087d813          	srli	a6,a5,0x8
    80002638:	0087d69b          	srliw	a3,a5,0x8
    8000263c:	f8a401a3          	sb	a0,-125(s0)
    80002640:	28b67663          	bgeu	a2,a1,800028cc <__printf+0x614>
    80002644:	00f6f693          	andi	a3,a3,15
    80002648:	00dd86b3          	add	a3,s11,a3
    8000264c:	0006c583          	lbu	a1,0(a3)
    80002650:	00c7d513          	srli	a0,a5,0xc
    80002654:	00c7d69b          	srliw	a3,a5,0xc
    80002658:	f8b40223          	sb	a1,-124(s0)
    8000265c:	29067a63          	bgeu	a2,a6,800028f0 <__printf+0x638>
    80002660:	00f6f693          	andi	a3,a3,15
    80002664:	00dd86b3          	add	a3,s11,a3
    80002668:	0006c583          	lbu	a1,0(a3)
    8000266c:	0107d813          	srli	a6,a5,0x10
    80002670:	0107d69b          	srliw	a3,a5,0x10
    80002674:	f8b402a3          	sb	a1,-123(s0)
    80002678:	28a67263          	bgeu	a2,a0,800028fc <__printf+0x644>
    8000267c:	00f6f693          	andi	a3,a3,15
    80002680:	00dd86b3          	add	a3,s11,a3
    80002684:	0006c683          	lbu	a3,0(a3)
    80002688:	0147d79b          	srliw	a5,a5,0x14
    8000268c:	f8d40323          	sb	a3,-122(s0)
    80002690:	21067663          	bgeu	a2,a6,8000289c <__printf+0x5e4>
    80002694:	02079793          	slli	a5,a5,0x20
    80002698:	0207d793          	srli	a5,a5,0x20
    8000269c:	00fd8db3          	add	s11,s11,a5
    800026a0:	000dc683          	lbu	a3,0(s11)
    800026a4:	00800793          	li	a5,8
    800026a8:	00700c93          	li	s9,7
    800026ac:	f8d403a3          	sb	a3,-121(s0)
    800026b0:	00075c63          	bgez	a4,800026c8 <__printf+0x410>
    800026b4:	f9040713          	addi	a4,s0,-112
    800026b8:	00f70733          	add	a4,a4,a5
    800026bc:	02d00693          	li	a3,45
    800026c0:	fed70823          	sb	a3,-16(a4)
    800026c4:	00078c93          	mv	s9,a5
    800026c8:	f8040793          	addi	a5,s0,-128
    800026cc:	01978cb3          	add	s9,a5,s9
    800026d0:	f7f40d13          	addi	s10,s0,-129
    800026d4:	000cc503          	lbu	a0,0(s9)
    800026d8:	fffc8c93          	addi	s9,s9,-1
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	9f8080e7          	jalr	-1544(ra) # 800020d4 <consputc>
    800026e4:	ff9d18e3          	bne	s10,s9,800026d4 <__printf+0x41c>
    800026e8:	0100006f          	j	800026f8 <__printf+0x440>
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	9e8080e7          	jalr	-1560(ra) # 800020d4 <consputc>
    800026f4:	000c8493          	mv	s1,s9
    800026f8:	00094503          	lbu	a0,0(s2)
    800026fc:	c60510e3          	bnez	a0,8000235c <__printf+0xa4>
    80002700:	e40c0ee3          	beqz	s8,8000255c <__printf+0x2a4>
    80002704:	00003517          	auipc	a0,0x3
    80002708:	f7c50513          	addi	a0,a0,-132 # 80005680 <pr>
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	94c080e7          	jalr	-1716(ra) # 80003058 <release>
    80002714:	e49ff06f          	j	8000255c <__printf+0x2a4>
    80002718:	f7843783          	ld	a5,-136(s0)
    8000271c:	03000513          	li	a0,48
    80002720:	01000d13          	li	s10,16
    80002724:	00878713          	addi	a4,a5,8
    80002728:	0007bc83          	ld	s9,0(a5)
    8000272c:	f6e43c23          	sd	a4,-136(s0)
    80002730:	00000097          	auipc	ra,0x0
    80002734:	9a4080e7          	jalr	-1628(ra) # 800020d4 <consputc>
    80002738:	07800513          	li	a0,120
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	998080e7          	jalr	-1640(ra) # 800020d4 <consputc>
    80002744:	00002d97          	auipc	s11,0x2
    80002748:	a34d8d93          	addi	s11,s11,-1484 # 80004178 <digits>
    8000274c:	03ccd793          	srli	a5,s9,0x3c
    80002750:	00fd87b3          	add	a5,s11,a5
    80002754:	0007c503          	lbu	a0,0(a5)
    80002758:	fffd0d1b          	addiw	s10,s10,-1
    8000275c:	004c9c93          	slli	s9,s9,0x4
    80002760:	00000097          	auipc	ra,0x0
    80002764:	974080e7          	jalr	-1676(ra) # 800020d4 <consputc>
    80002768:	fe0d12e3          	bnez	s10,8000274c <__printf+0x494>
    8000276c:	f8dff06f          	j	800026f8 <__printf+0x440>
    80002770:	f7843783          	ld	a5,-136(s0)
    80002774:	0007bc83          	ld	s9,0(a5)
    80002778:	00878793          	addi	a5,a5,8
    8000277c:	f6f43c23          	sd	a5,-136(s0)
    80002780:	000c9a63          	bnez	s9,80002794 <__printf+0x4dc>
    80002784:	1080006f          	j	8000288c <__printf+0x5d4>
    80002788:	001c8c93          	addi	s9,s9,1
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	948080e7          	jalr	-1720(ra) # 800020d4 <consputc>
    80002794:	000cc503          	lbu	a0,0(s9)
    80002798:	fe0518e3          	bnez	a0,80002788 <__printf+0x4d0>
    8000279c:	f5dff06f          	j	800026f8 <__printf+0x440>
    800027a0:	02500513          	li	a0,37
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	930080e7          	jalr	-1744(ra) # 800020d4 <consputc>
    800027ac:	000c8513          	mv	a0,s9
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	924080e7          	jalr	-1756(ra) # 800020d4 <consputc>
    800027b8:	f41ff06f          	j	800026f8 <__printf+0x440>
    800027bc:	02500513          	li	a0,37
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	914080e7          	jalr	-1772(ra) # 800020d4 <consputc>
    800027c8:	f31ff06f          	j	800026f8 <__printf+0x440>
    800027cc:	00030513          	mv	a0,t1
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	7bc080e7          	jalr	1980(ra) # 80002f8c <acquire>
    800027d8:	b4dff06f          	j	80002324 <__printf+0x6c>
    800027dc:	40c0053b          	negw	a0,a2
    800027e0:	00a00713          	li	a4,10
    800027e4:	02e576bb          	remuw	a3,a0,a4
    800027e8:	00002d97          	auipc	s11,0x2
    800027ec:	990d8d93          	addi	s11,s11,-1648 # 80004178 <digits>
    800027f0:	ff700593          	li	a1,-9
    800027f4:	02069693          	slli	a3,a3,0x20
    800027f8:	0206d693          	srli	a3,a3,0x20
    800027fc:	00dd86b3          	add	a3,s11,a3
    80002800:	0006c683          	lbu	a3,0(a3)
    80002804:	02e557bb          	divuw	a5,a0,a4
    80002808:	f8d40023          	sb	a3,-128(s0)
    8000280c:	10b65e63          	bge	a2,a1,80002928 <__printf+0x670>
    80002810:	06300593          	li	a1,99
    80002814:	02e7f6bb          	remuw	a3,a5,a4
    80002818:	02069693          	slli	a3,a3,0x20
    8000281c:	0206d693          	srli	a3,a3,0x20
    80002820:	00dd86b3          	add	a3,s11,a3
    80002824:	0006c683          	lbu	a3,0(a3)
    80002828:	02e7d73b          	divuw	a4,a5,a4
    8000282c:	00200793          	li	a5,2
    80002830:	f8d400a3          	sb	a3,-127(s0)
    80002834:	bca5ece3          	bltu	a1,a0,8000240c <__printf+0x154>
    80002838:	ce5ff06f          	j	8000251c <__printf+0x264>
    8000283c:	40e007bb          	negw	a5,a4
    80002840:	00002d97          	auipc	s11,0x2
    80002844:	938d8d93          	addi	s11,s11,-1736 # 80004178 <digits>
    80002848:	00f7f693          	andi	a3,a5,15
    8000284c:	00dd86b3          	add	a3,s11,a3
    80002850:	0006c583          	lbu	a1,0(a3)
    80002854:	ff100613          	li	a2,-15
    80002858:	0047d69b          	srliw	a3,a5,0x4
    8000285c:	f8b40023          	sb	a1,-128(s0)
    80002860:	0047d59b          	srliw	a1,a5,0x4
    80002864:	0ac75e63          	bge	a4,a2,80002920 <__printf+0x668>
    80002868:	00f6f693          	andi	a3,a3,15
    8000286c:	00dd86b3          	add	a3,s11,a3
    80002870:	0006c603          	lbu	a2,0(a3)
    80002874:	00f00693          	li	a3,15
    80002878:	0087d79b          	srliw	a5,a5,0x8
    8000287c:	f8c400a3          	sb	a2,-127(s0)
    80002880:	d8b6e4e3          	bltu	a3,a1,80002608 <__printf+0x350>
    80002884:	00200793          	li	a5,2
    80002888:	e2dff06f          	j	800026b4 <__printf+0x3fc>
    8000288c:	00002c97          	auipc	s9,0x2
    80002890:	8ccc8c93          	addi	s9,s9,-1844 # 80004158 <CONSOLE_STATUS+0x148>
    80002894:	02800513          	li	a0,40
    80002898:	ef1ff06f          	j	80002788 <__printf+0x4d0>
    8000289c:	00700793          	li	a5,7
    800028a0:	00600c93          	li	s9,6
    800028a4:	e0dff06f          	j	800026b0 <__printf+0x3f8>
    800028a8:	00700793          	li	a5,7
    800028ac:	00600c93          	li	s9,6
    800028b0:	c69ff06f          	j	80002518 <__printf+0x260>
    800028b4:	00300793          	li	a5,3
    800028b8:	00200c93          	li	s9,2
    800028bc:	c5dff06f          	j	80002518 <__printf+0x260>
    800028c0:	00300793          	li	a5,3
    800028c4:	00200c93          	li	s9,2
    800028c8:	de9ff06f          	j	800026b0 <__printf+0x3f8>
    800028cc:	00400793          	li	a5,4
    800028d0:	00300c93          	li	s9,3
    800028d4:	dddff06f          	j	800026b0 <__printf+0x3f8>
    800028d8:	00400793          	li	a5,4
    800028dc:	00300c93          	li	s9,3
    800028e0:	c39ff06f          	j	80002518 <__printf+0x260>
    800028e4:	00500793          	li	a5,5
    800028e8:	00400c93          	li	s9,4
    800028ec:	c2dff06f          	j	80002518 <__printf+0x260>
    800028f0:	00500793          	li	a5,5
    800028f4:	00400c93          	li	s9,4
    800028f8:	db9ff06f          	j	800026b0 <__printf+0x3f8>
    800028fc:	00600793          	li	a5,6
    80002900:	00500c93          	li	s9,5
    80002904:	dadff06f          	j	800026b0 <__printf+0x3f8>
    80002908:	00600793          	li	a5,6
    8000290c:	00500c93          	li	s9,5
    80002910:	c09ff06f          	j	80002518 <__printf+0x260>
    80002914:	00800793          	li	a5,8
    80002918:	00700c93          	li	s9,7
    8000291c:	bfdff06f          	j	80002518 <__printf+0x260>
    80002920:	00100793          	li	a5,1
    80002924:	d91ff06f          	j	800026b4 <__printf+0x3fc>
    80002928:	00100793          	li	a5,1
    8000292c:	bf1ff06f          	j	8000251c <__printf+0x264>
    80002930:	00900793          	li	a5,9
    80002934:	00800c93          	li	s9,8
    80002938:	be1ff06f          	j	80002518 <__printf+0x260>
    8000293c:	00002517          	auipc	a0,0x2
    80002940:	82450513          	addi	a0,a0,-2012 # 80004160 <CONSOLE_STATUS+0x150>
    80002944:	00000097          	auipc	ra,0x0
    80002948:	918080e7          	jalr	-1768(ra) # 8000225c <panic>

000000008000294c <printfinit>:
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	00003497          	auipc	s1,0x3
    80002964:	d2048493          	addi	s1,s1,-736 # 80005680 <pr>
    80002968:	00048513          	mv	a0,s1
    8000296c:	00002597          	auipc	a1,0x2
    80002970:	80458593          	addi	a1,a1,-2044 # 80004170 <CONSOLE_STATUS+0x160>
    80002974:	00000097          	auipc	ra,0x0
    80002978:	5f4080e7          	jalr	1524(ra) # 80002f68 <initlock>
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	0004ac23          	sw	zero,24(s1)
    80002988:	00813483          	ld	s1,8(sp)
    8000298c:	02010113          	addi	sp,sp,32
    80002990:	00008067          	ret

0000000080002994 <uartinit>:
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00813423          	sd	s0,8(sp)
    8000299c:	01010413          	addi	s0,sp,16
    800029a0:	100007b7          	lui	a5,0x10000
    800029a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800029a8:	f8000713          	li	a4,-128
    800029ac:	00e781a3          	sb	a4,3(a5)
    800029b0:	00300713          	li	a4,3
    800029b4:	00e78023          	sb	a4,0(a5)
    800029b8:	000780a3          	sb	zero,1(a5)
    800029bc:	00e781a3          	sb	a4,3(a5)
    800029c0:	00700693          	li	a3,7
    800029c4:	00d78123          	sb	a3,2(a5)
    800029c8:	00e780a3          	sb	a4,1(a5)
    800029cc:	00813403          	ld	s0,8(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <uartputc>:
    800029d8:	00002797          	auipc	a5,0x2
    800029dc:	a707a783          	lw	a5,-1424(a5) # 80004448 <panicked>
    800029e0:	00078463          	beqz	a5,800029e8 <uartputc+0x10>
    800029e4:	0000006f          	j	800029e4 <uartputc+0xc>
    800029e8:	fd010113          	addi	sp,sp,-48
    800029ec:	02813023          	sd	s0,32(sp)
    800029f0:	00913c23          	sd	s1,24(sp)
    800029f4:	01213823          	sd	s2,16(sp)
    800029f8:	01313423          	sd	s3,8(sp)
    800029fc:	02113423          	sd	ra,40(sp)
    80002a00:	03010413          	addi	s0,sp,48
    80002a04:	00002917          	auipc	s2,0x2
    80002a08:	a4c90913          	addi	s2,s2,-1460 # 80004450 <uart_tx_r>
    80002a0c:	00093783          	ld	a5,0(s2)
    80002a10:	00002497          	auipc	s1,0x2
    80002a14:	a4848493          	addi	s1,s1,-1464 # 80004458 <uart_tx_w>
    80002a18:	0004b703          	ld	a4,0(s1)
    80002a1c:	02078693          	addi	a3,a5,32
    80002a20:	00050993          	mv	s3,a0
    80002a24:	02e69c63          	bne	a3,a4,80002a5c <uartputc+0x84>
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	834080e7          	jalr	-1996(ra) # 8000325c <push_on>
    80002a30:	00093783          	ld	a5,0(s2)
    80002a34:	0004b703          	ld	a4,0(s1)
    80002a38:	02078793          	addi	a5,a5,32
    80002a3c:	00e79463          	bne	a5,a4,80002a44 <uartputc+0x6c>
    80002a40:	0000006f          	j	80002a40 <uartputc+0x68>
    80002a44:	00001097          	auipc	ra,0x1
    80002a48:	88c080e7          	jalr	-1908(ra) # 800032d0 <pop_on>
    80002a4c:	00093783          	ld	a5,0(s2)
    80002a50:	0004b703          	ld	a4,0(s1)
    80002a54:	02078693          	addi	a3,a5,32
    80002a58:	fce688e3          	beq	a3,a4,80002a28 <uartputc+0x50>
    80002a5c:	01f77693          	andi	a3,a4,31
    80002a60:	00003597          	auipc	a1,0x3
    80002a64:	c4058593          	addi	a1,a1,-960 # 800056a0 <uart_tx_buf>
    80002a68:	00d586b3          	add	a3,a1,a3
    80002a6c:	00170713          	addi	a4,a4,1
    80002a70:	01368023          	sb	s3,0(a3)
    80002a74:	00e4b023          	sd	a4,0(s1)
    80002a78:	10000637          	lui	a2,0x10000
    80002a7c:	02f71063          	bne	a4,a5,80002a9c <uartputc+0xc4>
    80002a80:	0340006f          	j	80002ab4 <uartputc+0xdc>
    80002a84:	00074703          	lbu	a4,0(a4)
    80002a88:	00f93023          	sd	a5,0(s2)
    80002a8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002a90:	00093783          	ld	a5,0(s2)
    80002a94:	0004b703          	ld	a4,0(s1)
    80002a98:	00f70e63          	beq	a4,a5,80002ab4 <uartputc+0xdc>
    80002a9c:	00564683          	lbu	a3,5(a2)
    80002aa0:	01f7f713          	andi	a4,a5,31
    80002aa4:	00e58733          	add	a4,a1,a4
    80002aa8:	0206f693          	andi	a3,a3,32
    80002aac:	00178793          	addi	a5,a5,1
    80002ab0:	fc069ae3          	bnez	a3,80002a84 <uartputc+0xac>
    80002ab4:	02813083          	ld	ra,40(sp)
    80002ab8:	02013403          	ld	s0,32(sp)
    80002abc:	01813483          	ld	s1,24(sp)
    80002ac0:	01013903          	ld	s2,16(sp)
    80002ac4:	00813983          	ld	s3,8(sp)
    80002ac8:	03010113          	addi	sp,sp,48
    80002acc:	00008067          	ret

0000000080002ad0 <uartputc_sync>:
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    80002adc:	00002717          	auipc	a4,0x2
    80002ae0:	96c72703          	lw	a4,-1684(a4) # 80004448 <panicked>
    80002ae4:	02071663          	bnez	a4,80002b10 <uartputc_sync+0x40>
    80002ae8:	00050793          	mv	a5,a0
    80002aec:	100006b7          	lui	a3,0x10000
    80002af0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002af4:	02077713          	andi	a4,a4,32
    80002af8:	fe070ce3          	beqz	a4,80002af0 <uartputc_sync+0x20>
    80002afc:	0ff7f793          	andi	a5,a5,255
    80002b00:	00f68023          	sb	a5,0(a3)
    80002b04:	00813403          	ld	s0,8(sp)
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret
    80002b10:	0000006f          	j	80002b10 <uartputc_sync+0x40>

0000000080002b14 <uartstart>:
    80002b14:	ff010113          	addi	sp,sp,-16
    80002b18:	00813423          	sd	s0,8(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    80002b20:	00002617          	auipc	a2,0x2
    80002b24:	93060613          	addi	a2,a2,-1744 # 80004450 <uart_tx_r>
    80002b28:	00002517          	auipc	a0,0x2
    80002b2c:	93050513          	addi	a0,a0,-1744 # 80004458 <uart_tx_w>
    80002b30:	00063783          	ld	a5,0(a2)
    80002b34:	00053703          	ld	a4,0(a0)
    80002b38:	04f70263          	beq	a4,a5,80002b7c <uartstart+0x68>
    80002b3c:	100005b7          	lui	a1,0x10000
    80002b40:	00003817          	auipc	a6,0x3
    80002b44:	b6080813          	addi	a6,a6,-1184 # 800056a0 <uart_tx_buf>
    80002b48:	01c0006f          	j	80002b64 <uartstart+0x50>
    80002b4c:	0006c703          	lbu	a4,0(a3)
    80002b50:	00f63023          	sd	a5,0(a2)
    80002b54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b58:	00063783          	ld	a5,0(a2)
    80002b5c:	00053703          	ld	a4,0(a0)
    80002b60:	00f70e63          	beq	a4,a5,80002b7c <uartstart+0x68>
    80002b64:	01f7f713          	andi	a4,a5,31
    80002b68:	00e806b3          	add	a3,a6,a4
    80002b6c:	0055c703          	lbu	a4,5(a1)
    80002b70:	00178793          	addi	a5,a5,1
    80002b74:	02077713          	andi	a4,a4,32
    80002b78:	fc071ae3          	bnez	a4,80002b4c <uartstart+0x38>
    80002b7c:	00813403          	ld	s0,8(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <uartgetc>:
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00813423          	sd	s0,8(sp)
    80002b90:	01010413          	addi	s0,sp,16
    80002b94:	10000737          	lui	a4,0x10000
    80002b98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002b9c:	0017f793          	andi	a5,a5,1
    80002ba0:	00078c63          	beqz	a5,80002bb8 <uartgetc+0x30>
    80002ba4:	00074503          	lbu	a0,0(a4)
    80002ba8:	0ff57513          	andi	a0,a0,255
    80002bac:	00813403          	ld	s0,8(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret
    80002bb8:	fff00513          	li	a0,-1
    80002bbc:	ff1ff06f          	j	80002bac <uartgetc+0x24>

0000000080002bc0 <uartintr>:
    80002bc0:	100007b7          	lui	a5,0x10000
    80002bc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002bc8:	0017f793          	andi	a5,a5,1
    80002bcc:	0a078463          	beqz	a5,80002c74 <uartintr+0xb4>
    80002bd0:	fe010113          	addi	sp,sp,-32
    80002bd4:	00813823          	sd	s0,16(sp)
    80002bd8:	00913423          	sd	s1,8(sp)
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	02010413          	addi	s0,sp,32
    80002be4:	100004b7          	lui	s1,0x10000
    80002be8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002bec:	0ff57513          	andi	a0,a0,255
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	534080e7          	jalr	1332(ra) # 80002124 <consoleintr>
    80002bf8:	0054c783          	lbu	a5,5(s1)
    80002bfc:	0017f793          	andi	a5,a5,1
    80002c00:	fe0794e3          	bnez	a5,80002be8 <uartintr+0x28>
    80002c04:	00002617          	auipc	a2,0x2
    80002c08:	84c60613          	addi	a2,a2,-1972 # 80004450 <uart_tx_r>
    80002c0c:	00002517          	auipc	a0,0x2
    80002c10:	84c50513          	addi	a0,a0,-1972 # 80004458 <uart_tx_w>
    80002c14:	00063783          	ld	a5,0(a2)
    80002c18:	00053703          	ld	a4,0(a0)
    80002c1c:	04f70263          	beq	a4,a5,80002c60 <uartintr+0xa0>
    80002c20:	100005b7          	lui	a1,0x10000
    80002c24:	00003817          	auipc	a6,0x3
    80002c28:	a7c80813          	addi	a6,a6,-1412 # 800056a0 <uart_tx_buf>
    80002c2c:	01c0006f          	j	80002c48 <uartintr+0x88>
    80002c30:	0006c703          	lbu	a4,0(a3)
    80002c34:	00f63023          	sd	a5,0(a2)
    80002c38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c3c:	00063783          	ld	a5,0(a2)
    80002c40:	00053703          	ld	a4,0(a0)
    80002c44:	00f70e63          	beq	a4,a5,80002c60 <uartintr+0xa0>
    80002c48:	01f7f713          	andi	a4,a5,31
    80002c4c:	00e806b3          	add	a3,a6,a4
    80002c50:	0055c703          	lbu	a4,5(a1)
    80002c54:	00178793          	addi	a5,a5,1
    80002c58:	02077713          	andi	a4,a4,32
    80002c5c:	fc071ae3          	bnez	a4,80002c30 <uartintr+0x70>
    80002c60:	01813083          	ld	ra,24(sp)
    80002c64:	01013403          	ld	s0,16(sp)
    80002c68:	00813483          	ld	s1,8(sp)
    80002c6c:	02010113          	addi	sp,sp,32
    80002c70:	00008067          	ret
    80002c74:	00001617          	auipc	a2,0x1
    80002c78:	7dc60613          	addi	a2,a2,2012 # 80004450 <uart_tx_r>
    80002c7c:	00001517          	auipc	a0,0x1
    80002c80:	7dc50513          	addi	a0,a0,2012 # 80004458 <uart_tx_w>
    80002c84:	00063783          	ld	a5,0(a2)
    80002c88:	00053703          	ld	a4,0(a0)
    80002c8c:	04f70263          	beq	a4,a5,80002cd0 <uartintr+0x110>
    80002c90:	100005b7          	lui	a1,0x10000
    80002c94:	00003817          	auipc	a6,0x3
    80002c98:	a0c80813          	addi	a6,a6,-1524 # 800056a0 <uart_tx_buf>
    80002c9c:	01c0006f          	j	80002cb8 <uartintr+0xf8>
    80002ca0:	0006c703          	lbu	a4,0(a3)
    80002ca4:	00f63023          	sd	a5,0(a2)
    80002ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002cac:	00063783          	ld	a5,0(a2)
    80002cb0:	00053703          	ld	a4,0(a0)
    80002cb4:	02f70063          	beq	a4,a5,80002cd4 <uartintr+0x114>
    80002cb8:	01f7f713          	andi	a4,a5,31
    80002cbc:	00e806b3          	add	a3,a6,a4
    80002cc0:	0055c703          	lbu	a4,5(a1)
    80002cc4:	00178793          	addi	a5,a5,1
    80002cc8:	02077713          	andi	a4,a4,32
    80002ccc:	fc071ae3          	bnez	a4,80002ca0 <uartintr+0xe0>
    80002cd0:	00008067          	ret
    80002cd4:	00008067          	ret

0000000080002cd8 <kinit>:
    80002cd8:	fc010113          	addi	sp,sp,-64
    80002cdc:	02913423          	sd	s1,40(sp)
    80002ce0:	fffff7b7          	lui	a5,0xfffff
    80002ce4:	00004497          	auipc	s1,0x4
    80002ce8:	9db48493          	addi	s1,s1,-1573 # 800066bf <end+0xfff>
    80002cec:	02813823          	sd	s0,48(sp)
    80002cf0:	01313c23          	sd	s3,24(sp)
    80002cf4:	00f4f4b3          	and	s1,s1,a5
    80002cf8:	02113c23          	sd	ra,56(sp)
    80002cfc:	03213023          	sd	s2,32(sp)
    80002d00:	01413823          	sd	s4,16(sp)
    80002d04:	01513423          	sd	s5,8(sp)
    80002d08:	04010413          	addi	s0,sp,64
    80002d0c:	000017b7          	lui	a5,0x1
    80002d10:	01100993          	li	s3,17
    80002d14:	00f487b3          	add	a5,s1,a5
    80002d18:	01b99993          	slli	s3,s3,0x1b
    80002d1c:	06f9e063          	bltu	s3,a5,80002d7c <kinit+0xa4>
    80002d20:	00003a97          	auipc	s5,0x3
    80002d24:	9a0a8a93          	addi	s5,s5,-1632 # 800056c0 <end>
    80002d28:	0754ec63          	bltu	s1,s5,80002da0 <kinit+0xc8>
    80002d2c:	0734fa63          	bgeu	s1,s3,80002da0 <kinit+0xc8>
    80002d30:	00088a37          	lui	s4,0x88
    80002d34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002d38:	00001917          	auipc	s2,0x1
    80002d3c:	72890913          	addi	s2,s2,1832 # 80004460 <kmem>
    80002d40:	00ca1a13          	slli	s4,s4,0xc
    80002d44:	0140006f          	j	80002d58 <kinit+0x80>
    80002d48:	000017b7          	lui	a5,0x1
    80002d4c:	00f484b3          	add	s1,s1,a5
    80002d50:	0554e863          	bltu	s1,s5,80002da0 <kinit+0xc8>
    80002d54:	0534f663          	bgeu	s1,s3,80002da0 <kinit+0xc8>
    80002d58:	00001637          	lui	a2,0x1
    80002d5c:	00100593          	li	a1,1
    80002d60:	00048513          	mv	a0,s1
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	5e4080e7          	jalr	1508(ra) # 80003348 <__memset>
    80002d6c:	00093783          	ld	a5,0(s2)
    80002d70:	00f4b023          	sd	a5,0(s1)
    80002d74:	00993023          	sd	s1,0(s2)
    80002d78:	fd4498e3          	bne	s1,s4,80002d48 <kinit+0x70>
    80002d7c:	03813083          	ld	ra,56(sp)
    80002d80:	03013403          	ld	s0,48(sp)
    80002d84:	02813483          	ld	s1,40(sp)
    80002d88:	02013903          	ld	s2,32(sp)
    80002d8c:	01813983          	ld	s3,24(sp)
    80002d90:	01013a03          	ld	s4,16(sp)
    80002d94:	00813a83          	ld	s5,8(sp)
    80002d98:	04010113          	addi	sp,sp,64
    80002d9c:	00008067          	ret
    80002da0:	00001517          	auipc	a0,0x1
    80002da4:	3f050513          	addi	a0,a0,1008 # 80004190 <digits+0x18>
    80002da8:	fffff097          	auipc	ra,0xfffff
    80002dac:	4b4080e7          	jalr	1204(ra) # 8000225c <panic>

0000000080002db0 <freerange>:
    80002db0:	fc010113          	addi	sp,sp,-64
    80002db4:	000017b7          	lui	a5,0x1
    80002db8:	02913423          	sd	s1,40(sp)
    80002dbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002dc0:	009504b3          	add	s1,a0,s1
    80002dc4:	fffff537          	lui	a0,0xfffff
    80002dc8:	02813823          	sd	s0,48(sp)
    80002dcc:	02113c23          	sd	ra,56(sp)
    80002dd0:	03213023          	sd	s2,32(sp)
    80002dd4:	01313c23          	sd	s3,24(sp)
    80002dd8:	01413823          	sd	s4,16(sp)
    80002ddc:	01513423          	sd	s5,8(sp)
    80002de0:	01613023          	sd	s6,0(sp)
    80002de4:	04010413          	addi	s0,sp,64
    80002de8:	00a4f4b3          	and	s1,s1,a0
    80002dec:	00f487b3          	add	a5,s1,a5
    80002df0:	06f5e463          	bltu	a1,a5,80002e58 <freerange+0xa8>
    80002df4:	00003a97          	auipc	s5,0x3
    80002df8:	8cca8a93          	addi	s5,s5,-1844 # 800056c0 <end>
    80002dfc:	0954e263          	bltu	s1,s5,80002e80 <freerange+0xd0>
    80002e00:	01100993          	li	s3,17
    80002e04:	01b99993          	slli	s3,s3,0x1b
    80002e08:	0734fc63          	bgeu	s1,s3,80002e80 <freerange+0xd0>
    80002e0c:	00058a13          	mv	s4,a1
    80002e10:	00001917          	auipc	s2,0x1
    80002e14:	65090913          	addi	s2,s2,1616 # 80004460 <kmem>
    80002e18:	00002b37          	lui	s6,0x2
    80002e1c:	0140006f          	j	80002e30 <freerange+0x80>
    80002e20:	000017b7          	lui	a5,0x1
    80002e24:	00f484b3          	add	s1,s1,a5
    80002e28:	0554ec63          	bltu	s1,s5,80002e80 <freerange+0xd0>
    80002e2c:	0534fa63          	bgeu	s1,s3,80002e80 <freerange+0xd0>
    80002e30:	00001637          	lui	a2,0x1
    80002e34:	00100593          	li	a1,1
    80002e38:	00048513          	mv	a0,s1
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	50c080e7          	jalr	1292(ra) # 80003348 <__memset>
    80002e44:	00093703          	ld	a4,0(s2)
    80002e48:	016487b3          	add	a5,s1,s6
    80002e4c:	00e4b023          	sd	a4,0(s1)
    80002e50:	00993023          	sd	s1,0(s2)
    80002e54:	fcfa76e3          	bgeu	s4,a5,80002e20 <freerange+0x70>
    80002e58:	03813083          	ld	ra,56(sp)
    80002e5c:	03013403          	ld	s0,48(sp)
    80002e60:	02813483          	ld	s1,40(sp)
    80002e64:	02013903          	ld	s2,32(sp)
    80002e68:	01813983          	ld	s3,24(sp)
    80002e6c:	01013a03          	ld	s4,16(sp)
    80002e70:	00813a83          	ld	s5,8(sp)
    80002e74:	00013b03          	ld	s6,0(sp)
    80002e78:	04010113          	addi	sp,sp,64
    80002e7c:	00008067          	ret
    80002e80:	00001517          	auipc	a0,0x1
    80002e84:	31050513          	addi	a0,a0,784 # 80004190 <digits+0x18>
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	3d4080e7          	jalr	980(ra) # 8000225c <panic>

0000000080002e90 <kfree>:
    80002e90:	fe010113          	addi	sp,sp,-32
    80002e94:	00813823          	sd	s0,16(sp)
    80002e98:	00113c23          	sd	ra,24(sp)
    80002e9c:	00913423          	sd	s1,8(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    80002ea4:	03451793          	slli	a5,a0,0x34
    80002ea8:	04079c63          	bnez	a5,80002f00 <kfree+0x70>
    80002eac:	00003797          	auipc	a5,0x3
    80002eb0:	81478793          	addi	a5,a5,-2028 # 800056c0 <end>
    80002eb4:	00050493          	mv	s1,a0
    80002eb8:	04f56463          	bltu	a0,a5,80002f00 <kfree+0x70>
    80002ebc:	01100793          	li	a5,17
    80002ec0:	01b79793          	slli	a5,a5,0x1b
    80002ec4:	02f57e63          	bgeu	a0,a5,80002f00 <kfree+0x70>
    80002ec8:	00001637          	lui	a2,0x1
    80002ecc:	00100593          	li	a1,1
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	478080e7          	jalr	1144(ra) # 80003348 <__memset>
    80002ed8:	00001797          	auipc	a5,0x1
    80002edc:	58878793          	addi	a5,a5,1416 # 80004460 <kmem>
    80002ee0:	0007b703          	ld	a4,0(a5)
    80002ee4:	01813083          	ld	ra,24(sp)
    80002ee8:	01013403          	ld	s0,16(sp)
    80002eec:	00e4b023          	sd	a4,0(s1)
    80002ef0:	0097b023          	sd	s1,0(a5)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	02010113          	addi	sp,sp,32
    80002efc:	00008067          	ret
    80002f00:	00001517          	auipc	a0,0x1
    80002f04:	29050513          	addi	a0,a0,656 # 80004190 <digits+0x18>
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	354080e7          	jalr	852(ra) # 8000225c <panic>

0000000080002f10 <kalloc>:
    80002f10:	fe010113          	addi	sp,sp,-32
    80002f14:	00813823          	sd	s0,16(sp)
    80002f18:	00913423          	sd	s1,8(sp)
    80002f1c:	00113c23          	sd	ra,24(sp)
    80002f20:	02010413          	addi	s0,sp,32
    80002f24:	00001797          	auipc	a5,0x1
    80002f28:	53c78793          	addi	a5,a5,1340 # 80004460 <kmem>
    80002f2c:	0007b483          	ld	s1,0(a5)
    80002f30:	02048063          	beqz	s1,80002f50 <kalloc+0x40>
    80002f34:	0004b703          	ld	a4,0(s1)
    80002f38:	00001637          	lui	a2,0x1
    80002f3c:	00500593          	li	a1,5
    80002f40:	00048513          	mv	a0,s1
    80002f44:	00e7b023          	sd	a4,0(a5)
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	400080e7          	jalr	1024(ra) # 80003348 <__memset>
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00048513          	mv	a0,s1
    80002f5c:	00813483          	ld	s1,8(sp)
    80002f60:	02010113          	addi	sp,sp,32
    80002f64:	00008067          	ret

0000000080002f68 <initlock>:
    80002f68:	ff010113          	addi	sp,sp,-16
    80002f6c:	00813423          	sd	s0,8(sp)
    80002f70:	01010413          	addi	s0,sp,16
    80002f74:	00813403          	ld	s0,8(sp)
    80002f78:	00b53423          	sd	a1,8(a0)
    80002f7c:	00052023          	sw	zero,0(a0)
    80002f80:	00053823          	sd	zero,16(a0)
    80002f84:	01010113          	addi	sp,sp,16
    80002f88:	00008067          	ret

0000000080002f8c <acquire>:
    80002f8c:	fe010113          	addi	sp,sp,-32
    80002f90:	00813823          	sd	s0,16(sp)
    80002f94:	00913423          	sd	s1,8(sp)
    80002f98:	00113c23          	sd	ra,24(sp)
    80002f9c:	01213023          	sd	s2,0(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    80002fa4:	00050493          	mv	s1,a0
    80002fa8:	10002973          	csrr	s2,sstatus
    80002fac:	100027f3          	csrr	a5,sstatus
    80002fb0:	ffd7f793          	andi	a5,a5,-3
    80002fb4:	10079073          	csrw	sstatus,a5
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	8e0080e7          	jalr	-1824(ra) # 80001898 <mycpu>
    80002fc0:	07852783          	lw	a5,120(a0)
    80002fc4:	06078e63          	beqz	a5,80003040 <acquire+0xb4>
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	8d0080e7          	jalr	-1840(ra) # 80001898 <mycpu>
    80002fd0:	07852783          	lw	a5,120(a0)
    80002fd4:	0004a703          	lw	a4,0(s1)
    80002fd8:	0017879b          	addiw	a5,a5,1
    80002fdc:	06f52c23          	sw	a5,120(a0)
    80002fe0:	04071063          	bnez	a4,80003020 <acquire+0x94>
    80002fe4:	00100713          	li	a4,1
    80002fe8:	00070793          	mv	a5,a4
    80002fec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002ff0:	0007879b          	sext.w	a5,a5
    80002ff4:	fe079ae3          	bnez	a5,80002fe8 <acquire+0x5c>
    80002ff8:	0ff0000f          	fence
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	89c080e7          	jalr	-1892(ra) # 80001898 <mycpu>
    80003004:	01813083          	ld	ra,24(sp)
    80003008:	01013403          	ld	s0,16(sp)
    8000300c:	00a4b823          	sd	a0,16(s1)
    80003010:	00013903          	ld	s2,0(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret
    80003020:	0104b903          	ld	s2,16(s1)
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	874080e7          	jalr	-1932(ra) # 80001898 <mycpu>
    8000302c:	faa91ce3          	bne	s2,a0,80002fe4 <acquire+0x58>
    80003030:	00001517          	auipc	a0,0x1
    80003034:	16850513          	addi	a0,a0,360 # 80004198 <digits+0x20>
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	224080e7          	jalr	548(ra) # 8000225c <panic>
    80003040:	00195913          	srli	s2,s2,0x1
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	854080e7          	jalr	-1964(ra) # 80001898 <mycpu>
    8000304c:	00197913          	andi	s2,s2,1
    80003050:	07252e23          	sw	s2,124(a0)
    80003054:	f75ff06f          	j	80002fc8 <acquire+0x3c>

0000000080003058 <release>:
    80003058:	fe010113          	addi	sp,sp,-32
    8000305c:	00813823          	sd	s0,16(sp)
    80003060:	00113c23          	sd	ra,24(sp)
    80003064:	00913423          	sd	s1,8(sp)
    80003068:	01213023          	sd	s2,0(sp)
    8000306c:	02010413          	addi	s0,sp,32
    80003070:	00052783          	lw	a5,0(a0)
    80003074:	00079a63          	bnez	a5,80003088 <release+0x30>
    80003078:	00001517          	auipc	a0,0x1
    8000307c:	12850513          	addi	a0,a0,296 # 800041a0 <digits+0x28>
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	1dc080e7          	jalr	476(ra) # 8000225c <panic>
    80003088:	01053903          	ld	s2,16(a0)
    8000308c:	00050493          	mv	s1,a0
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	808080e7          	jalr	-2040(ra) # 80001898 <mycpu>
    80003098:	fea910e3          	bne	s2,a0,80003078 <release+0x20>
    8000309c:	0004b823          	sd	zero,16(s1)
    800030a0:	0ff0000f          	fence
    800030a4:	0f50000f          	fence	iorw,ow
    800030a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	7ec080e7          	jalr	2028(ra) # 80001898 <mycpu>
    800030b4:	100027f3          	csrr	a5,sstatus
    800030b8:	0027f793          	andi	a5,a5,2
    800030bc:	04079a63          	bnez	a5,80003110 <release+0xb8>
    800030c0:	07852783          	lw	a5,120(a0)
    800030c4:	02f05e63          	blez	a5,80003100 <release+0xa8>
    800030c8:	fff7871b          	addiw	a4,a5,-1
    800030cc:	06e52c23          	sw	a4,120(a0)
    800030d0:	00071c63          	bnez	a4,800030e8 <release+0x90>
    800030d4:	07c52783          	lw	a5,124(a0)
    800030d8:	00078863          	beqz	a5,800030e8 <release+0x90>
    800030dc:	100027f3          	csrr	a5,sstatus
    800030e0:	0027e793          	ori	a5,a5,2
    800030e4:	10079073          	csrw	sstatus,a5
    800030e8:	01813083          	ld	ra,24(sp)
    800030ec:	01013403          	ld	s0,16(sp)
    800030f0:	00813483          	ld	s1,8(sp)
    800030f4:	00013903          	ld	s2,0(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret
    80003100:	00001517          	auipc	a0,0x1
    80003104:	0c050513          	addi	a0,a0,192 # 800041c0 <digits+0x48>
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	154080e7          	jalr	340(ra) # 8000225c <panic>
    80003110:	00001517          	auipc	a0,0x1
    80003114:	09850513          	addi	a0,a0,152 # 800041a8 <digits+0x30>
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	144080e7          	jalr	324(ra) # 8000225c <panic>

0000000080003120 <holding>:
    80003120:	00052783          	lw	a5,0(a0)
    80003124:	00079663          	bnez	a5,80003130 <holding+0x10>
    80003128:	00000513          	li	a0,0
    8000312c:	00008067          	ret
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	00113c23          	sd	ra,24(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	01053483          	ld	s1,16(a0)
    80003148:	ffffe097          	auipc	ra,0xffffe
    8000314c:	750080e7          	jalr	1872(ra) # 80001898 <mycpu>
    80003150:	01813083          	ld	ra,24(sp)
    80003154:	01013403          	ld	s0,16(sp)
    80003158:	40a48533          	sub	a0,s1,a0
    8000315c:	00153513          	seqz	a0,a0
    80003160:	00813483          	ld	s1,8(sp)
    80003164:	02010113          	addi	sp,sp,32
    80003168:	00008067          	ret

000000008000316c <push_off>:
    8000316c:	fe010113          	addi	sp,sp,-32
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00113c23          	sd	ra,24(sp)
    80003178:	00913423          	sd	s1,8(sp)
    8000317c:	02010413          	addi	s0,sp,32
    80003180:	100024f3          	csrr	s1,sstatus
    80003184:	100027f3          	csrr	a5,sstatus
    80003188:	ffd7f793          	andi	a5,a5,-3
    8000318c:	10079073          	csrw	sstatus,a5
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	708080e7          	jalr	1800(ra) # 80001898 <mycpu>
    80003198:	07852783          	lw	a5,120(a0)
    8000319c:	02078663          	beqz	a5,800031c8 <push_off+0x5c>
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	6f8080e7          	jalr	1784(ra) # 80001898 <mycpu>
    800031a8:	07852783          	lw	a5,120(a0)
    800031ac:	01813083          	ld	ra,24(sp)
    800031b0:	01013403          	ld	s0,16(sp)
    800031b4:	0017879b          	addiw	a5,a5,1
    800031b8:	06f52c23          	sw	a5,120(a0)
    800031bc:	00813483          	ld	s1,8(sp)
    800031c0:	02010113          	addi	sp,sp,32
    800031c4:	00008067          	ret
    800031c8:	0014d493          	srli	s1,s1,0x1
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	6cc080e7          	jalr	1740(ra) # 80001898 <mycpu>
    800031d4:	0014f493          	andi	s1,s1,1
    800031d8:	06952e23          	sw	s1,124(a0)
    800031dc:	fc5ff06f          	j	800031a0 <push_off+0x34>

00000000800031e0 <pop_off>:
    800031e0:	ff010113          	addi	sp,sp,-16
    800031e4:	00813023          	sd	s0,0(sp)
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	01010413          	addi	s0,sp,16
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	6a8080e7          	jalr	1704(ra) # 80001898 <mycpu>
    800031f8:	100027f3          	csrr	a5,sstatus
    800031fc:	0027f793          	andi	a5,a5,2
    80003200:	04079663          	bnez	a5,8000324c <pop_off+0x6c>
    80003204:	07852783          	lw	a5,120(a0)
    80003208:	02f05a63          	blez	a5,8000323c <pop_off+0x5c>
    8000320c:	fff7871b          	addiw	a4,a5,-1
    80003210:	06e52c23          	sw	a4,120(a0)
    80003214:	00071c63          	bnez	a4,8000322c <pop_off+0x4c>
    80003218:	07c52783          	lw	a5,124(a0)
    8000321c:	00078863          	beqz	a5,8000322c <pop_off+0x4c>
    80003220:	100027f3          	csrr	a5,sstatus
    80003224:	0027e793          	ori	a5,a5,2
    80003228:	10079073          	csrw	sstatus,a5
    8000322c:	00813083          	ld	ra,8(sp)
    80003230:	00013403          	ld	s0,0(sp)
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00008067          	ret
    8000323c:	00001517          	auipc	a0,0x1
    80003240:	f8450513          	addi	a0,a0,-124 # 800041c0 <digits+0x48>
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	018080e7          	jalr	24(ra) # 8000225c <panic>
    8000324c:	00001517          	auipc	a0,0x1
    80003250:	f5c50513          	addi	a0,a0,-164 # 800041a8 <digits+0x30>
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	008080e7          	jalr	8(ra) # 8000225c <panic>

000000008000325c <push_on>:
    8000325c:	fe010113          	addi	sp,sp,-32
    80003260:	00813823          	sd	s0,16(sp)
    80003264:	00113c23          	sd	ra,24(sp)
    80003268:	00913423          	sd	s1,8(sp)
    8000326c:	02010413          	addi	s0,sp,32
    80003270:	100024f3          	csrr	s1,sstatus
    80003274:	100027f3          	csrr	a5,sstatus
    80003278:	0027e793          	ori	a5,a5,2
    8000327c:	10079073          	csrw	sstatus,a5
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	618080e7          	jalr	1560(ra) # 80001898 <mycpu>
    80003288:	07852783          	lw	a5,120(a0)
    8000328c:	02078663          	beqz	a5,800032b8 <push_on+0x5c>
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	608080e7          	jalr	1544(ra) # 80001898 <mycpu>
    80003298:	07852783          	lw	a5,120(a0)
    8000329c:	01813083          	ld	ra,24(sp)
    800032a0:	01013403          	ld	s0,16(sp)
    800032a4:	0017879b          	addiw	a5,a5,1
    800032a8:	06f52c23          	sw	a5,120(a0)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret
    800032b8:	0014d493          	srli	s1,s1,0x1
    800032bc:	ffffe097          	auipc	ra,0xffffe
    800032c0:	5dc080e7          	jalr	1500(ra) # 80001898 <mycpu>
    800032c4:	0014f493          	andi	s1,s1,1
    800032c8:	06952e23          	sw	s1,124(a0)
    800032cc:	fc5ff06f          	j	80003290 <push_on+0x34>

00000000800032d0 <pop_on>:
    800032d0:	ff010113          	addi	sp,sp,-16
    800032d4:	00813023          	sd	s0,0(sp)
    800032d8:	00113423          	sd	ra,8(sp)
    800032dc:	01010413          	addi	s0,sp,16
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	5b8080e7          	jalr	1464(ra) # 80001898 <mycpu>
    800032e8:	100027f3          	csrr	a5,sstatus
    800032ec:	0027f793          	andi	a5,a5,2
    800032f0:	04078463          	beqz	a5,80003338 <pop_on+0x68>
    800032f4:	07852783          	lw	a5,120(a0)
    800032f8:	02f05863          	blez	a5,80003328 <pop_on+0x58>
    800032fc:	fff7879b          	addiw	a5,a5,-1
    80003300:	06f52c23          	sw	a5,120(a0)
    80003304:	07853783          	ld	a5,120(a0)
    80003308:	00079863          	bnez	a5,80003318 <pop_on+0x48>
    8000330c:	100027f3          	csrr	a5,sstatus
    80003310:	ffd7f793          	andi	a5,a5,-3
    80003314:	10079073          	csrw	sstatus,a5
    80003318:	00813083          	ld	ra,8(sp)
    8000331c:	00013403          	ld	s0,0(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret
    80003328:	00001517          	auipc	a0,0x1
    8000332c:	ec050513          	addi	a0,a0,-320 # 800041e8 <digits+0x70>
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	f2c080e7          	jalr	-212(ra) # 8000225c <panic>
    80003338:	00001517          	auipc	a0,0x1
    8000333c:	e9050513          	addi	a0,a0,-368 # 800041c8 <digits+0x50>
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	f1c080e7          	jalr	-228(ra) # 8000225c <panic>

0000000080003348 <__memset>:
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00813423          	sd	s0,8(sp)
    80003350:	01010413          	addi	s0,sp,16
    80003354:	1a060e63          	beqz	a2,80003510 <__memset+0x1c8>
    80003358:	40a007b3          	neg	a5,a0
    8000335c:	0077f793          	andi	a5,a5,7
    80003360:	00778693          	addi	a3,a5,7
    80003364:	00b00813          	li	a6,11
    80003368:	0ff5f593          	andi	a1,a1,255
    8000336c:	fff6071b          	addiw	a4,a2,-1
    80003370:	1b06e663          	bltu	a3,a6,8000351c <__memset+0x1d4>
    80003374:	1cd76463          	bltu	a4,a3,8000353c <__memset+0x1f4>
    80003378:	1a078e63          	beqz	a5,80003534 <__memset+0x1ec>
    8000337c:	00b50023          	sb	a1,0(a0)
    80003380:	00100713          	li	a4,1
    80003384:	1ae78463          	beq	a5,a4,8000352c <__memset+0x1e4>
    80003388:	00b500a3          	sb	a1,1(a0)
    8000338c:	00200713          	li	a4,2
    80003390:	1ae78a63          	beq	a5,a4,80003544 <__memset+0x1fc>
    80003394:	00b50123          	sb	a1,2(a0)
    80003398:	00300713          	li	a4,3
    8000339c:	18e78463          	beq	a5,a4,80003524 <__memset+0x1dc>
    800033a0:	00b501a3          	sb	a1,3(a0)
    800033a4:	00400713          	li	a4,4
    800033a8:	1ae78263          	beq	a5,a4,8000354c <__memset+0x204>
    800033ac:	00b50223          	sb	a1,4(a0)
    800033b0:	00500713          	li	a4,5
    800033b4:	1ae78063          	beq	a5,a4,80003554 <__memset+0x20c>
    800033b8:	00b502a3          	sb	a1,5(a0)
    800033bc:	00700713          	li	a4,7
    800033c0:	18e79e63          	bne	a5,a4,8000355c <__memset+0x214>
    800033c4:	00b50323          	sb	a1,6(a0)
    800033c8:	00700e93          	li	t4,7
    800033cc:	00859713          	slli	a4,a1,0x8
    800033d0:	00e5e733          	or	a4,a1,a4
    800033d4:	01059e13          	slli	t3,a1,0x10
    800033d8:	01c76e33          	or	t3,a4,t3
    800033dc:	01859313          	slli	t1,a1,0x18
    800033e0:	006e6333          	or	t1,t3,t1
    800033e4:	02059893          	slli	a7,a1,0x20
    800033e8:	40f60e3b          	subw	t3,a2,a5
    800033ec:	011368b3          	or	a7,t1,a7
    800033f0:	02859813          	slli	a6,a1,0x28
    800033f4:	0108e833          	or	a6,a7,a6
    800033f8:	03059693          	slli	a3,a1,0x30
    800033fc:	003e589b          	srliw	a7,t3,0x3
    80003400:	00d866b3          	or	a3,a6,a3
    80003404:	03859713          	slli	a4,a1,0x38
    80003408:	00389813          	slli	a6,a7,0x3
    8000340c:	00f507b3          	add	a5,a0,a5
    80003410:	00e6e733          	or	a4,a3,a4
    80003414:	000e089b          	sext.w	a7,t3
    80003418:	00f806b3          	add	a3,a6,a5
    8000341c:	00e7b023          	sd	a4,0(a5)
    80003420:	00878793          	addi	a5,a5,8
    80003424:	fed79ce3          	bne	a5,a3,8000341c <__memset+0xd4>
    80003428:	ff8e7793          	andi	a5,t3,-8
    8000342c:	0007871b          	sext.w	a4,a5
    80003430:	01d787bb          	addw	a5,a5,t4
    80003434:	0ce88e63          	beq	a7,a4,80003510 <__memset+0x1c8>
    80003438:	00f50733          	add	a4,a0,a5
    8000343c:	00b70023          	sb	a1,0(a4)
    80003440:	0017871b          	addiw	a4,a5,1
    80003444:	0cc77663          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    80003448:	00e50733          	add	a4,a0,a4
    8000344c:	00b70023          	sb	a1,0(a4)
    80003450:	0027871b          	addiw	a4,a5,2
    80003454:	0ac77e63          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    80003458:	00e50733          	add	a4,a0,a4
    8000345c:	00b70023          	sb	a1,0(a4)
    80003460:	0037871b          	addiw	a4,a5,3
    80003464:	0ac77663          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    80003468:	00e50733          	add	a4,a0,a4
    8000346c:	00b70023          	sb	a1,0(a4)
    80003470:	0047871b          	addiw	a4,a5,4
    80003474:	08c77e63          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00b70023          	sb	a1,0(a4)
    80003480:	0057871b          	addiw	a4,a5,5
    80003484:	08c77663          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    80003488:	00e50733          	add	a4,a0,a4
    8000348c:	00b70023          	sb	a1,0(a4)
    80003490:	0067871b          	addiw	a4,a5,6
    80003494:	06c77e63          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    80003498:	00e50733          	add	a4,a0,a4
    8000349c:	00b70023          	sb	a1,0(a4)
    800034a0:	0077871b          	addiw	a4,a5,7
    800034a4:	06c77663          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    800034a8:	00e50733          	add	a4,a0,a4
    800034ac:	00b70023          	sb	a1,0(a4)
    800034b0:	0087871b          	addiw	a4,a5,8
    800034b4:	04c77e63          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    800034b8:	00e50733          	add	a4,a0,a4
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	0097871b          	addiw	a4,a5,9
    800034c4:	04c77663          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    800034c8:	00e50733          	add	a4,a0,a4
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	00a7871b          	addiw	a4,a5,10
    800034d4:	02c77e63          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	00b7871b          	addiw	a4,a5,11
    800034e4:	02c77663          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	00c7871b          	addiw	a4,a5,12
    800034f4:	00c77e63          	bgeu	a4,a2,80003510 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	00d7879b          	addiw	a5,a5,13
    80003504:	00c7f663          	bgeu	a5,a2,80003510 <__memset+0x1c8>
    80003508:	00f507b3          	add	a5,a0,a5
    8000350c:	00b78023          	sb	a1,0(a5)
    80003510:	00813403          	ld	s0,8(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret
    8000351c:	00b00693          	li	a3,11
    80003520:	e55ff06f          	j	80003374 <__memset+0x2c>
    80003524:	00300e93          	li	t4,3
    80003528:	ea5ff06f          	j	800033cc <__memset+0x84>
    8000352c:	00100e93          	li	t4,1
    80003530:	e9dff06f          	j	800033cc <__memset+0x84>
    80003534:	00000e93          	li	t4,0
    80003538:	e95ff06f          	j	800033cc <__memset+0x84>
    8000353c:	00000793          	li	a5,0
    80003540:	ef9ff06f          	j	80003438 <__memset+0xf0>
    80003544:	00200e93          	li	t4,2
    80003548:	e85ff06f          	j	800033cc <__memset+0x84>
    8000354c:	00400e93          	li	t4,4
    80003550:	e7dff06f          	j	800033cc <__memset+0x84>
    80003554:	00500e93          	li	t4,5
    80003558:	e75ff06f          	j	800033cc <__memset+0x84>
    8000355c:	00600e93          	li	t4,6
    80003560:	e6dff06f          	j	800033cc <__memset+0x84>

0000000080003564 <__memmove>:
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	0e060863          	beqz	a2,80003660 <__memmove+0xfc>
    80003574:	fff6069b          	addiw	a3,a2,-1
    80003578:	0006881b          	sext.w	a6,a3
    8000357c:	0ea5e863          	bltu	a1,a0,8000366c <__memmove+0x108>
    80003580:	00758713          	addi	a4,a1,7
    80003584:	00a5e7b3          	or	a5,a1,a0
    80003588:	40a70733          	sub	a4,a4,a0
    8000358c:	0077f793          	andi	a5,a5,7
    80003590:	00f73713          	sltiu	a4,a4,15
    80003594:	00174713          	xori	a4,a4,1
    80003598:	0017b793          	seqz	a5,a5
    8000359c:	00e7f7b3          	and	a5,a5,a4
    800035a0:	10078863          	beqz	a5,800036b0 <__memmove+0x14c>
    800035a4:	00900793          	li	a5,9
    800035a8:	1107f463          	bgeu	a5,a6,800036b0 <__memmove+0x14c>
    800035ac:	0036581b          	srliw	a6,a2,0x3
    800035b0:	fff8081b          	addiw	a6,a6,-1
    800035b4:	02081813          	slli	a6,a6,0x20
    800035b8:	01d85893          	srli	a7,a6,0x1d
    800035bc:	00858813          	addi	a6,a1,8
    800035c0:	00058793          	mv	a5,a1
    800035c4:	00050713          	mv	a4,a0
    800035c8:	01088833          	add	a6,a7,a6
    800035cc:	0007b883          	ld	a7,0(a5)
    800035d0:	00878793          	addi	a5,a5,8
    800035d4:	00870713          	addi	a4,a4,8
    800035d8:	ff173c23          	sd	a7,-8(a4)
    800035dc:	ff0798e3          	bne	a5,a6,800035cc <__memmove+0x68>
    800035e0:	ff867713          	andi	a4,a2,-8
    800035e4:	02071793          	slli	a5,a4,0x20
    800035e8:	0207d793          	srli	a5,a5,0x20
    800035ec:	00f585b3          	add	a1,a1,a5
    800035f0:	40e686bb          	subw	a3,a3,a4
    800035f4:	00f507b3          	add	a5,a0,a5
    800035f8:	06e60463          	beq	a2,a4,80003660 <__memmove+0xfc>
    800035fc:	0005c703          	lbu	a4,0(a1)
    80003600:	00e78023          	sb	a4,0(a5)
    80003604:	04068e63          	beqz	a3,80003660 <__memmove+0xfc>
    80003608:	0015c603          	lbu	a2,1(a1)
    8000360c:	00100713          	li	a4,1
    80003610:	00c780a3          	sb	a2,1(a5)
    80003614:	04e68663          	beq	a3,a4,80003660 <__memmove+0xfc>
    80003618:	0025c603          	lbu	a2,2(a1)
    8000361c:	00200713          	li	a4,2
    80003620:	00c78123          	sb	a2,2(a5)
    80003624:	02e68e63          	beq	a3,a4,80003660 <__memmove+0xfc>
    80003628:	0035c603          	lbu	a2,3(a1)
    8000362c:	00300713          	li	a4,3
    80003630:	00c781a3          	sb	a2,3(a5)
    80003634:	02e68663          	beq	a3,a4,80003660 <__memmove+0xfc>
    80003638:	0045c603          	lbu	a2,4(a1)
    8000363c:	00400713          	li	a4,4
    80003640:	00c78223          	sb	a2,4(a5)
    80003644:	00e68e63          	beq	a3,a4,80003660 <__memmove+0xfc>
    80003648:	0055c603          	lbu	a2,5(a1)
    8000364c:	00500713          	li	a4,5
    80003650:	00c782a3          	sb	a2,5(a5)
    80003654:	00e68663          	beq	a3,a4,80003660 <__memmove+0xfc>
    80003658:	0065c703          	lbu	a4,6(a1)
    8000365c:	00e78323          	sb	a4,6(a5)
    80003660:	00813403          	ld	s0,8(sp)
    80003664:	01010113          	addi	sp,sp,16
    80003668:	00008067          	ret
    8000366c:	02061713          	slli	a4,a2,0x20
    80003670:	02075713          	srli	a4,a4,0x20
    80003674:	00e587b3          	add	a5,a1,a4
    80003678:	f0f574e3          	bgeu	a0,a5,80003580 <__memmove+0x1c>
    8000367c:	02069613          	slli	a2,a3,0x20
    80003680:	02065613          	srli	a2,a2,0x20
    80003684:	fff64613          	not	a2,a2
    80003688:	00e50733          	add	a4,a0,a4
    8000368c:	00c78633          	add	a2,a5,a2
    80003690:	fff7c683          	lbu	a3,-1(a5)
    80003694:	fff78793          	addi	a5,a5,-1
    80003698:	fff70713          	addi	a4,a4,-1
    8000369c:	00d70023          	sb	a3,0(a4)
    800036a0:	fec798e3          	bne	a5,a2,80003690 <__memmove+0x12c>
    800036a4:	00813403          	ld	s0,8(sp)
    800036a8:	01010113          	addi	sp,sp,16
    800036ac:	00008067          	ret
    800036b0:	02069713          	slli	a4,a3,0x20
    800036b4:	02075713          	srli	a4,a4,0x20
    800036b8:	00170713          	addi	a4,a4,1
    800036bc:	00e50733          	add	a4,a0,a4
    800036c0:	00050793          	mv	a5,a0
    800036c4:	0005c683          	lbu	a3,0(a1)
    800036c8:	00178793          	addi	a5,a5,1
    800036cc:	00158593          	addi	a1,a1,1
    800036d0:	fed78fa3          	sb	a3,-1(a5)
    800036d4:	fee798e3          	bne	a5,a4,800036c4 <__memmove+0x160>
    800036d8:	f89ff06f          	j	80003660 <__memmove+0xfc>

00000000800036dc <__putc>:
    800036dc:	fe010113          	addi	sp,sp,-32
    800036e0:	00813823          	sd	s0,16(sp)
    800036e4:	00113c23          	sd	ra,24(sp)
    800036e8:	02010413          	addi	s0,sp,32
    800036ec:	00050793          	mv	a5,a0
    800036f0:	fef40593          	addi	a1,s0,-17
    800036f4:	00100613          	li	a2,1
    800036f8:	00000513          	li	a0,0
    800036fc:	fef407a3          	sb	a5,-17(s0)
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	b3c080e7          	jalr	-1220(ra) # 8000223c <console_write>
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	02010113          	addi	sp,sp,32
    80003714:	00008067          	ret

0000000080003718 <__getc>:
    80003718:	fe010113          	addi	sp,sp,-32
    8000371c:	00813823          	sd	s0,16(sp)
    80003720:	00113c23          	sd	ra,24(sp)
    80003724:	02010413          	addi	s0,sp,32
    80003728:	fe840593          	addi	a1,s0,-24
    8000372c:	00100613          	li	a2,1
    80003730:	00000513          	li	a0,0
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	ae8080e7          	jalr	-1304(ra) # 8000221c <console_read>
    8000373c:	fe844503          	lbu	a0,-24(s0)
    80003740:	01813083          	ld	ra,24(sp)
    80003744:	01013403          	ld	s0,16(sp)
    80003748:	02010113          	addi	sp,sp,32
    8000374c:	00008067          	ret

0000000080003750 <console_handler>:
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00113c23          	sd	ra,24(sp)
    8000375c:	00913423          	sd	s1,8(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	14202773          	csrr	a4,scause
    80003768:	100027f3          	csrr	a5,sstatus
    8000376c:	0027f793          	andi	a5,a5,2
    80003770:	06079e63          	bnez	a5,800037ec <console_handler+0x9c>
    80003774:	00074c63          	bltz	a4,8000378c <console_handler+0x3c>
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret
    8000378c:	0ff77713          	andi	a4,a4,255
    80003790:	00900793          	li	a5,9
    80003794:	fef712e3          	bne	a4,a5,80003778 <console_handler+0x28>
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	6dc080e7          	jalr	1756(ra) # 80001e74 <plic_claim>
    800037a0:	00a00793          	li	a5,10
    800037a4:	00050493          	mv	s1,a0
    800037a8:	02f50c63          	beq	a0,a5,800037e0 <console_handler+0x90>
    800037ac:	fc0506e3          	beqz	a0,80003778 <console_handler+0x28>
    800037b0:	00050593          	mv	a1,a0
    800037b4:	00001517          	auipc	a0,0x1
    800037b8:	93c50513          	addi	a0,a0,-1732 # 800040f0 <CONSOLE_STATUS+0xe0>
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	afc080e7          	jalr	-1284(ra) # 800022b8 <__printf>
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	01813083          	ld	ra,24(sp)
    800037cc:	00048513          	mv	a0,s1
    800037d0:	00813483          	ld	s1,8(sp)
    800037d4:	02010113          	addi	sp,sp,32
    800037d8:	ffffe317          	auipc	t1,0xffffe
    800037dc:	6d430067          	jr	1748(t1) # 80001eac <plic_complete>
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	3e0080e7          	jalr	992(ra) # 80002bc0 <uartintr>
    800037e8:	fddff06f          	j	800037c4 <console_handler+0x74>
    800037ec:	00001517          	auipc	a0,0x1
    800037f0:	a0450513          	addi	a0,a0,-1532 # 800041f0 <digits+0x78>
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	a68080e7          	jalr	-1432(ra) # 8000225c <panic>
	...
