
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	51013103          	ld	sp,1296(sp) # 8000b510 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	554060ef          	jal	ra,80006570 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0*8(a0)
    80001000:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001004:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001008:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000100c:	0085b103          	ld	sp,8(a1)

    80001010:	00008067          	ret

0000000080001014 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp,sp,-256
    80001014:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001018:	00313c23          	sd	gp,24(sp)
    8000101c:	02413023          	sd	tp,32(sp)
    80001020:	02513423          	sd	t0,40(sp)
    80001024:	02613823          	sd	t1,48(sp)
    80001028:	02713c23          	sd	t2,56(sp)
    8000102c:	04813023          	sd	s0,64(sp)
    80001030:	04913423          	sd	s1,72(sp)
    80001034:	04a13823          	sd	a0,80(sp)
    80001038:	04b13c23          	sd	a1,88(sp)
    8000103c:	06c13023          	sd	a2,96(sp)
    80001040:	06d13423          	sd	a3,104(sp)
    80001044:	06e13823          	sd	a4,112(sp)
    80001048:	06f13c23          	sd	a5,120(sp)
    8000104c:	09013023          	sd	a6,128(sp)
    80001050:	09113423          	sd	a7,136(sp)
    80001054:	09213823          	sd	s2,144(sp)
    80001058:	09313c23          	sd	s3,152(sp)
    8000105c:	0b413023          	sd	s4,160(sp)
    80001060:	0b513423          	sd	s5,168(sp)
    80001064:	0b613823          	sd	s6,176(sp)
    80001068:	0b713c23          	sd	s7,184(sp)
    8000106c:	0d813023          	sd	s8,192(sp)
    80001070:	0d913423          	sd	s9,200(sp)
    80001074:	0da13823          	sd	s10,208(sp)
    80001078:	0db13c23          	sd	s11,216(sp)
    8000107c:	0fc13023          	sd	t3,224(sp)
    80001080:	0fd13423          	sd	t4,232(sp)
    80001084:	0fe13823          	sd	t5,240(sp)
    80001088:	0ff13c23          	sd	t6,248(sp)
    ret
    8000108c:	00008067          	ret

0000000080001090 <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv,@function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05013503          	ld	a0,80(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	08813883          	ld	a7,136(sp)
    800010cc:	09013903          	ld	s2,144(sp)
    800010d0:	09813983          	ld	s3,152(sp)
    800010d4:	0a013a03          	ld	s4,160(sp)
    800010d8:	0a813a83          	ld	s5,168(sp)
    800010dc:	0b013b03          	ld	s6,176(sp)
    800010e0:	0b813b83          	ld	s7,184(sp)
    800010e4:	0c013c03          	ld	s8,192(sp)
    800010e8:	0c813c83          	ld	s9,200(sp)
    800010ec:	0d013d03          	ld	s10,208(sp)
    800010f0:	0d813d83          	ld	s11,216(sp)
    800010f4:	0e013e03          	ld	t3,224(sp)
    800010f8:	0e813e83          	ld	t4,232(sp)
    800010fc:	0f013f03          	ld	t5,240(sp)
    80001100:	0f813f83          	ld	t6,248(sp)
    addi sp,sp,256
    80001104:	10010113          	addi	sp,sp,256
    80001108:	00008067          	ret
    8000110c:	0000                	unimp
	...

0000000080001110 <interrupt>:
.extern interruptHandler
.global interrupt
.align 4
interrupt:
    addi sp,sp,-256
    80001110:	f0010113          	addi	sp,sp,-256
    sd x0,0x00(sp)
    80001114:	00013023          	sd	zero,0(sp)
    sd x1,0x08(sp)
    80001118:	00113423          	sd	ra,8(sp)
    sd x2,0x10(sp)
    8000111c:	00213823          	sd	sp,16(sp)
    sd x3,0x18(sp)
    80001120:	00313c23          	sd	gp,24(sp)
    sd x4,0x20(sp)
    80001124:	02413023          	sd	tp,32(sp)
    sd x5,0x28(sp)
    80001128:	02513423          	sd	t0,40(sp)
    sd x6,0x30(sp)
    8000112c:	02613823          	sd	t1,48(sp)
    sd x7,0x38(sp)
    80001130:	02713c23          	sd	t2,56(sp)
    sd x8,0x40(sp)
    80001134:	04813023          	sd	s0,64(sp)
    sd x9,0x48(sp)
    80001138:	04913423          	sd	s1,72(sp)
    sd x10,0x50(sp)
    8000113c:	04a13823          	sd	a0,80(sp)
    sd x11,0x58(sp)
    80001140:	04b13c23          	sd	a1,88(sp)
    sd x12,0x60(sp)
    80001144:	06c13023          	sd	a2,96(sp)
    sd x13,0x68(sp)
    80001148:	06d13423          	sd	a3,104(sp)
    sd x14,0x70(sp)
    8000114c:	06e13823          	sd	a4,112(sp)
    sd x15,0x78(sp)
    80001150:	06f13c23          	sd	a5,120(sp)
    sd x16,0x80(sp)
    80001154:	09013023          	sd	a6,128(sp)
    sd x17,0x88(sp)
    80001158:	09113423          	sd	a7,136(sp)
    sd x18,0x90(sp)
    8000115c:	09213823          	sd	s2,144(sp)
    sd x19,0x98(sp)
    80001160:	09313c23          	sd	s3,152(sp)
    sd x20,0xA0(sp)
    80001164:	0b413023          	sd	s4,160(sp)
    sd x21,0xA8(sp)
    80001168:	0b513423          	sd	s5,168(sp)
    sd x22,0xB0(sp)
    8000116c:	0b613823          	sd	s6,176(sp)
    sd x23,0xB8(sp)
    80001170:	0b713c23          	sd	s7,184(sp)
    sd x24,0xC0(sp)
    80001174:	0d813023          	sd	s8,192(sp)
    sd x25,0xC8(sp)
    80001178:	0d913423          	sd	s9,200(sp)
    sd x26,0xD0(sp)
    8000117c:	0da13823          	sd	s10,208(sp)
    sd x27,0xD8(sp)
    80001180:	0db13c23          	sd	s11,216(sp)
    sd x28,0xE0(sp)
    80001184:	0fc13023          	sd	t3,224(sp)
    sd x29,0xE8(sp)
    80001188:	0fd13423          	sd	t4,232(sp)
    sd x30,0xF0(sp)
    8000118c:	0fe13823          	sd	t5,240(sp)
    sd x31,0xF8(sp)
    80001190:	0ff13c23          	sd	t6,248(sp)

    mv a0,sp
    80001194:	00010513          	mv	a0,sp
    call interruptHandler
    80001198:	31c010ef          	jal	ra,800024b4 <interruptHandler>

    ld x0,0x00(sp)
    8000119c:	00013003          	ld	zero,0(sp)
    ld x1,0x08(sp)
    800011a0:	00813083          	ld	ra,8(sp)
    ld x2,0x10(sp)
    800011a4:	01013103          	ld	sp,16(sp)
    ld x3,0x18(sp)
    800011a8:	01813183          	ld	gp,24(sp)
    ld x4,0x20(sp)
    800011ac:	02013203          	ld	tp,32(sp)
    ld x5,0x28(sp)
    800011b0:	02813283          	ld	t0,40(sp)
    ld x6,0x30(sp)
    800011b4:	03013303          	ld	t1,48(sp)
    ld x7,0x38(sp)
    800011b8:	03813383          	ld	t2,56(sp)
    ld x8,0x40(sp)
    800011bc:	04013403          	ld	s0,64(sp)
    ld x9,0x48(sp)
    800011c0:	04813483          	ld	s1,72(sp)
    ld x10,0x50(sp)
    800011c4:	05013503          	ld	a0,80(sp)
    ld x11,0x58(sp)
    800011c8:	05813583          	ld	a1,88(sp)
    ld x12,0x60(sp)
    800011cc:	06013603          	ld	a2,96(sp)
    ld x13,0x68(sp)
    800011d0:	06813683          	ld	a3,104(sp)
    ld x14,0x70(sp)
    800011d4:	07013703          	ld	a4,112(sp)
    ld x15,0x78(sp)
    800011d8:	07813783          	ld	a5,120(sp)
    ld x16,0x80(sp)
    800011dc:	08013803          	ld	a6,128(sp)
    ld x17,0x88(sp)
    800011e0:	08813883          	ld	a7,136(sp)
    ld x18,0x90(sp)
    800011e4:	09013903          	ld	s2,144(sp)
    ld x19,0x98(sp)
    800011e8:	09813983          	ld	s3,152(sp)
    ld x20,0xA0(sp)
    800011ec:	0a013a03          	ld	s4,160(sp)
    ld x21,0xA8(sp)
    800011f0:	0a813a83          	ld	s5,168(sp)
    ld x22,0xB0(sp)
    800011f4:	0b013b03          	ld	s6,176(sp)
    ld x23,0xB8(sp)
    800011f8:	0b813b83          	ld	s7,184(sp)
    ld x24,0xC0(sp)
    800011fc:	0c013c03          	ld	s8,192(sp)
    ld x25,0xC8(sp)
    80001200:	0c813c83          	ld	s9,200(sp)
    ld x26,0xD0(sp)
    80001204:	0d013d03          	ld	s10,208(sp)
    ld x27,0xD8(sp)
    80001208:	0d813d83          	ld	s11,216(sp)
    ld x28,0xE0(sp)
    8000120c:	0e013e03          	ld	t3,224(sp)
    ld x29,0xE8(sp)
    80001210:	0e813e83          	ld	t4,232(sp)
    ld x30,0xF0(sp)
    80001214:	0f013f03          	ld	t5,240(sp)
    ld x31,0xF8(sp)
    80001218:	0f813f83          	ld	t6,248(sp)

    addi sp,sp,256
    8000121c:	10010113          	addi	sp,sp,256

    sret
    80001220:	10200073          	sret
	...

0000000080001230 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001230:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001234:	00b29a63          	bne	t0,a1,80001248 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001238:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000123c:	fe029ae3          	bnez	t0,80001230 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001240:	00000513          	li	a0,0
    jr ra                  # Return.
    80001244:	00008067          	ret

0000000080001248 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001248:	00100513          	li	a0,1
    8000124c:	00008067          	ret

0000000080001250 <_ZN8_ConsoleC1Ev>:
_Console& _Console::getInstance(){
    static _Console instance;
    return instance;
}

_Console::_Console():
    80001250:	fe010113          	addi	sp,sp,-32
    80001254:	00113c23          	sd	ra,24(sp)
    80001258:	00813823          	sd	s0,16(sp)
    8000125c:	00913423          	sd	s1,8(sp)
    80001260:	01213023          	sd	s2,0(sp)
    80001264:	02010413          	addi	s0,sp,32
    80001268:	00050493          	mv	s1,a0

#include "../lib/hw.h"

class BoundedBuffer{
public:
    BoundedBuffer():head(0),tail(0) {
    8000126c:	10053423          	sd	zero,264(a0)
    80001270:	10053823          	sd	zero,272(a0)
        this->count=0;
    80001274:	10053023          	sd	zero,256(a0)
    BoundedBuffer():head(0),tail(0) {
    80001278:	22053023          	sd	zero,544(a0)
    8000127c:	22053423          	sd	zero,552(a0)
        this->count=0;
    80001280:	20053c23          	sd	zero,536(a0)
#include "../lib/hw.h"
#include "../h/TCB.hpp"

class _Semaphore{
public:
    void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
    80001284:	00001097          	auipc	ra,0x1
    80001288:	b54080e7          	jalr	-1196(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    8000128c:	01800593          	li	a1,24
    80001290:	00001097          	auipc	ra,0x1
    80001294:	c70080e7          	jalr	-912(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
    80001298:	00050913          	mv	s2,a0
    outputDataAvailable(new _Semaphore(0)),
    8000129c:	00000593          	li	a1,0
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	2d8080e7          	jalr	728(ra) # 80001578 <_ZN10_SemaphoreC1Em>
    inputDataAvailable(new _Semaphore(0)),
    outputSpaceAvailable(new _Semaphore(BUFFER_SIZE-1))
    800012a8:	2324b823          	sd	s2,560(s1)
    800012ac:	00001097          	auipc	ra,0x1
    800012b0:	b2c080e7          	jalr	-1236(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    800012b4:	01800593          	li	a1,24
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	c48080e7          	jalr	-952(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
    800012c0:	00050913          	mv	s2,a0
    inputDataAvailable(new _Semaphore(0)),
    800012c4:	00000593          	li	a1,0
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	2b0080e7          	jalr	688(ra) # 80001578 <_ZN10_SemaphoreC1Em>
    outputSpaceAvailable(new _Semaphore(BUFFER_SIZE-1))
    800012d0:	2324bc23          	sd	s2,568(s1)
    800012d4:	00001097          	auipc	ra,0x1
    800012d8:	b04080e7          	jalr	-1276(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    800012dc:	01800593          	li	a1,24
    800012e0:	00001097          	auipc	ra,0x1
    800012e4:	c20080e7          	jalr	-992(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
    800012e8:	00050913          	mv	s2,a0
    800012ec:	0ff00593          	li	a1,255
    800012f0:	00000097          	auipc	ra,0x0
    800012f4:	288080e7          	jalr	648(ra) # 80001578 <_ZN10_SemaphoreC1Em>
    800012f8:	2524b023          	sd	s2,576(s1)
    {}
    800012fc:	01813083          	ld	ra,24(sp)
    80001300:	01013403          	ld	s0,16(sp)
    80001304:	00813483          	ld	s1,8(sp)
    80001308:	00013903          	ld	s2,0(sp)
    8000130c:	02010113          	addi	sp,sp,32
    80001310:	00008067          	ret
    80001314:	00050493          	mv	s1,a0
    void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    80001318:	00001097          	auipc	ra,0x1
    8000131c:	ac0080e7          	jalr	-1344(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001320:	00090593          	mv	a1,s2
    80001324:	00001097          	auipc	ra,0x1
    80001328:	cb8080e7          	jalr	-840(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    8000132c:	00048513          	mv	a0,s1
    80001330:	0000c097          	auipc	ra,0xc
    80001334:	9b8080e7          	jalr	-1608(ra) # 8000cce8 <_Unwind_Resume>
    80001338:	00050493          	mv	s1,a0
    8000133c:	00001097          	auipc	ra,0x1
    80001340:	a9c080e7          	jalr	-1380(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001344:	00090593          	mv	a1,s2
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	c94080e7          	jalr	-876(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    80001350:	00048513          	mv	a0,s1
    80001354:	0000c097          	auipc	ra,0xc
    80001358:	994080e7          	jalr	-1644(ra) # 8000cce8 <_Unwind_Resume>
    8000135c:	00050493          	mv	s1,a0
    80001360:	00001097          	auipc	ra,0x1
    80001364:	a78080e7          	jalr	-1416(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001368:	00090593          	mv	a1,s2
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	c70080e7          	jalr	-912(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    80001374:	00048513          	mv	a0,s1
    80001378:	0000c097          	auipc	ra,0xc
    8000137c:	970080e7          	jalr	-1680(ra) # 8000cce8 <_Unwind_Resume>

0000000080001380 <_ZN8_Console11getInstanceEv>:
    static _Console instance;
    80001380:	0000a797          	auipc	a5,0xa
    80001384:	5807c783          	lbu	a5,1408(a5) # 8000b900 <_ZGVZN8_Console11getInstanceEvE8instance>
    80001388:	00078863          	beqz	a5,80001398 <_ZN8_Console11getInstanceEv+0x18>
}
    8000138c:	0000a517          	auipc	a0,0xa
    80001390:	63450513          	addi	a0,a0,1588 # 8000b9c0 <_ZZN8_Console11getInstanceEvE8instance>
    80001394:	00008067          	ret
_Console& _Console::getInstance(){
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00113423          	sd	ra,8(sp)
    800013a0:	00813023          	sd	s0,0(sp)
    800013a4:	01010413          	addi	s0,sp,16
    static _Console instance;
    800013a8:	0000a517          	auipc	a0,0xa
    800013ac:	61850513          	addi	a0,a0,1560 # 8000b9c0 <_ZZN8_Console11getInstanceEvE8instance>
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	ea0080e7          	jalr	-352(ra) # 80001250 <_ZN8_ConsoleC1Ev>
    800013b8:	00100793          	li	a5,1
    800013bc:	0000a717          	auipc	a4,0xa
    800013c0:	54f70223          	sb	a5,1348(a4) # 8000b900 <_ZGVZN8_Console11getInstanceEvE8instance>
}
    800013c4:	0000a517          	auipc	a0,0xa
    800013c8:	5fc50513          	addi	a0,a0,1532 # 8000b9c0 <_ZZN8_Console11getInstanceEvE8instance>
    800013cc:	00813083          	ld	ra,8(sp)
    800013d0:	00013403          	ld	s0,0(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_ZN8_Console4putcEc>:

void _Console::putc(char c){
    800013dc:	fe010113          	addi	sp,sp,-32
    800013e0:	00113c23          	sd	ra,24(sp)
    800013e4:	00813823          	sd	s0,16(sp)
    800013e8:	00913423          	sd	s1,8(sp)
    800013ec:	01213023          	sd	s2,0(sp)
    800013f0:	02010413          	addi	s0,sp,32
    800013f4:	00050493          	mv	s1,a0
    800013f8:	00058913          	mv	s2,a1
    outputSpaceAvailable->wait();
    800013fc:	24053503          	ld	a0,576(a0)
    80001400:	00000097          	auipc	ra,0x0
    80001404:	4e8080e7          	jalr	1256(ra) # 800018e8 <_ZN10_Semaphore4waitEv>
    outputBuffer.append(c);
    80001408:	00090593          	mv	a1,s2
    8000140c:	11848513          	addi	a0,s1,280
    80001410:	00000097          	auipc	ra,0x0
    80001414:	530080e7          	jalr	1328(ra) # 80001940 <_ZN13BoundedBuffer6appendEc>
    outputDataAvailable->signal();
    80001418:	2304b503          	ld	a0,560(s1)
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	4f8080e7          	jalr	1272(ra) # 80001914 <_ZN10_Semaphore6signalEv>
}
    80001424:	01813083          	ld	ra,24(sp)
    80001428:	01013403          	ld	s0,16(sp)
    8000142c:	00813483          	ld	s1,8(sp)
    80001430:	00013903          	ld	s2,0(sp)
    80001434:	02010113          	addi	sp,sp,32
    80001438:	00008067          	ret

000000008000143c <_ZN8_Console4getcEv>:

char _Console::getc(){
    8000143c:	fe010113          	addi	sp,sp,-32
    80001440:	00113c23          	sd	ra,24(sp)
    80001444:	00813823          	sd	s0,16(sp)
    80001448:	00913423          	sd	s1,8(sp)
    8000144c:	02010413          	addi	s0,sp,32
    80001450:	00050493          	mv	s1,a0
    inputDataAvailable->wait();
    80001454:	23853503          	ld	a0,568(a0)
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	490080e7          	jalr	1168(ra) # 800018e8 <_ZN10_Semaphore4waitEv>
    return inputBuffer.take();
    80001460:	00048513          	mv	a0,s1
    80001464:	00000097          	auipc	ra,0x0
    80001468:	518080e7          	jalr	1304(ra) # 8000197c <_ZN13BoundedBuffer4takeEv>
}
    8000146c:	01813083          	ld	ra,24(sp)
    80001470:	01013403          	ld	s0,16(sp)
    80001474:	00813483          	ld	s1,8(sp)
    80001478:	02010113          	addi	sp,sp,32
    8000147c:	00008067          	ret

0000000080001480 <_Z12outputThreadPv>:

void outputThread(void*){
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	02010413          	addi	s0,sp,32
    _Console& console = _Console::getInstance();
    80001494:	00000097          	auipc	ra,0x0
    80001498:	eec080e7          	jalr	-276(ra) # 80001380 <_ZN8_Console11getInstanceEv>
    8000149c:	00050493          	mv	s1,a0
    800014a0:	0280006f          	j	800014c8 <_Z12outputThreadPv+0x48>
    while(1){
        console.outputDataAvailable->wait();
        while(!(*(volatile char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)) {
            thread_dispatch();
        }
        *(volatile char*)CONSOLE_TX_DATA = console.outputBuffer.take();
    800014a4:	11848513          	addi	a0,s1,280
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	4d4080e7          	jalr	1236(ra) # 8000197c <_ZN13BoundedBuffer4takeEv>
    800014b0:	00008797          	auipc	a5,0x8
    800014b4:	b587b783          	ld	a5,-1192(a5) # 80009008 <CONSOLE_TX_DATA>
    800014b8:	00a78023          	sb	a0,0(a5)
        console.outputSpaceAvailable->signal();
    800014bc:	2404b503          	ld	a0,576(s1)
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	454080e7          	jalr	1108(ra) # 80001914 <_ZN10_Semaphore6signalEv>
        console.outputDataAvailable->wait();
    800014c8:	2304b503          	ld	a0,560(s1)
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	41c080e7          	jalr	1052(ra) # 800018e8 <_ZN10_Semaphore4waitEv>
        while(!(*(volatile char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)) {
    800014d4:	00008797          	auipc	a5,0x8
    800014d8:	b3c7b783          	ld	a5,-1220(a5) # 80009010 <CONSOLE_STATUS>
    800014dc:	0007c783          	lbu	a5,0(a5)
    800014e0:	0ff7f793          	andi	a5,a5,255
    800014e4:	0207f793          	andi	a5,a5,32
    800014e8:	fa079ee3          	bnez	a5,800014a4 <_Z12outputThreadPv+0x24>
            thread_dispatch();
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	3a4080e7          	jalr	932(ra) # 80002890 <_Z15thread_dispatchv>
        while(!(*(volatile char*)CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT)) {
    800014f4:	fe1ff06f          	j	800014d4 <_Z12outputThreadPv+0x54>

00000000800014f8 <_ZN8_Console17keyboardInterruptEv>:
    }
}


void _Console::keyboardInterrupt(){
    800014f8:	fe010113          	addi	sp,sp,-32
    800014fc:	00113c23          	sd	ra,24(sp)
    80001500:	00813823          	sd	s0,16(sp)
    80001504:	00913423          	sd	s1,8(sp)
    80001508:	02010413          	addi	s0,sp,32
    _Console& console=_Console::getInstance();
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	e74080e7          	jalr	-396(ra) # 80001380 <_ZN8_Console11getInstanceEv>
    80001514:	00050493          	mv	s1,a0
    while(*(volatile char*)CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80001518:	00008797          	auipc	a5,0x8
    8000151c:	af87b783          	ld	a5,-1288(a5) # 80009010 <CONSOLE_STATUS>
    80001520:	0007c783          	lbu	a5,0(a5)
    80001524:	0017f793          	andi	a5,a5,1
    80001528:	02078e63          	beqz	a5,80001564 <_ZN8_Console17keyboardInterruptEv+0x6c>
        char data=*(volatile char*)CONSOLE_RX_DATA;
    8000152c:	00008797          	auipc	a5,0x8
    80001530:	ad47b783          	ld	a5,-1324(a5) # 80009000 <CONSOLE_RX_DATA>
    80001534:	0007c583          	lbu	a1,0(a5)
    80001538:	0ff5f593          	andi	a1,a1,255
    }
    void append(char);
    char take();
    bool isEmpty() const { return count==0; }
    bool isFull() const { return count==BUFFER_SIZE; }
    8000153c:	1004b703          	ld	a4,256(s1)
        if(!console.inputBuffer.isFull()){
    80001540:	10000793          	li	a5,256
    80001544:	fcf70ae3          	beq	a4,a5,80001518 <_ZN8_Console17keyboardInterruptEv+0x20>
            console.inputBuffer.append(data);
    80001548:	00048513          	mv	a0,s1
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	3f4080e7          	jalr	1012(ra) # 80001940 <_ZN13BoundedBuffer6appendEc>
            console.inputDataAvailable->signal();
    80001554:	2384b503          	ld	a0,568(s1)
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	3bc080e7          	jalr	956(ra) # 80001914 <_ZN10_Semaphore6signalEv>
    80001560:	fb9ff06f          	j	80001518 <_ZN8_Console17keyboardInterruptEv+0x20>
        }
    }
    80001564:	01813083          	ld	ra,24(sp)
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	00813483          	ld	s1,8(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret

0000000080001578 <_ZN10_SemaphoreC1Em>:
#include "../h/Riscv.hpp"
#include "../h/Console.hpp"

void dbg(char c);

_Semaphore::_Semaphore(uint64 init):val(init){}
    80001578:	ff010113          	addi	sp,sp,-16
    8000157c:	00813423          	sd	s0,8(sp)
    80001580:	01010413          	addi	s0,sp,16
#include "../h/MemoryAllocator.hpp"

template<typename T>
class List{
public:
    List():head(0),tail(0){}
    80001584:	00053023          	sd	zero,0(a0)
    80001588:	00053423          	sd	zero,8(a0)
    8000158c:	00b53823          	sd	a1,16(a0)
    80001590:	00813403          	ld	s0,8(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <_ZN10_Semaphore16create_semaphoreEm>:

_Semaphore* _Semaphore::create_semaphore(uint64 init){
    8000159c:	fe010113          	addi	sp,sp,-32
    800015a0:	00113c23          	sd	ra,24(sp)
    800015a4:	00813823          	sd	s0,16(sp)
    800015a8:	00913423          	sd	s1,8(sp)
    800015ac:	01213023          	sd	s2,0(sp)
    800015b0:	02010413          	addi	s0,sp,32
    800015b4:	00050913          	mv	s2,a0
#include "../lib/hw.h"
#include "../h/TCB.hpp"

class _Semaphore{
public:
    void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	820080e7          	jalr	-2016(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    800015c0:	01800593          	li	a1,24
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	93c080e7          	jalr	-1732(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
    800015cc:	00050493          	mv	s1,a0
    return new _Semaphore(init);
    800015d0:	00090593          	mv	a1,s2
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	fa4080e7          	jalr	-92(ra) # 80001578 <_ZN10_SemaphoreC1Em>
}
    800015dc:	00048513          	mv	a0,s1
    800015e0:	01813083          	ld	ra,24(sp)
    800015e4:	01013403          	ld	s0,16(sp)
    800015e8:	00813483          	ld	s1,8(sp)
    800015ec:	00013903          	ld	s2,0(sp)
    800015f0:	02010113          	addi	sp,sp,32
    800015f4:	00008067          	ret

00000000800015f8 <_ZN10_SemaphoreD1Ev>:

_Semaphore::~_Semaphore(){
    800015f8:	fd010113          	addi	sp,sp,-48
    800015fc:	02113423          	sd	ra,40(sp)
    80001600:	02813023          	sd	s0,32(sp)
    80001604:	00913c23          	sd	s1,24(sp)
    80001608:	01213823          	sd	s2,16(sp)
    8000160c:	01313423          	sd	s3,8(sp)
    80001610:	03010413          	addi	s0,sp,48
    80001614:	00050913          	mv	s2,a0
    80001618:	03c0006f          	j	80001654 <_ZN10_SemaphoreD1Ev+0x5c>
        if(!head) {return 0;}
        Elem* prev=0;
        for(Elem* curr=head;curr && curr!=tail;curr=curr->next){
            prev=curr;
        }
        Elem *elem=tail;
    8000161c:	00893983          	ld	s3,8(s2)
        if(prev) {prev->next=0;}
    80001620:	06078663          	beqz	a5,8000168c <_ZN10_SemaphoreD1Ev+0x94>
    80001624:	0007b423          	sd	zero,8(a5)
        else{  head=0; }
        tail=prev;
    80001628:	00f93423          	sd	a5,8(s2)
        T* ret=elem->data;
    8000162c:	0009b483          	ld	s1,0(s3)
        delete elem;
    80001630:	00098c63          	beqz	s3,80001648 <_ZN10_SemaphoreD1Ev+0x50>
    struct Elem{
        T *data;
        Elem *next;
        Elem(T* data,Elem *next):data(data),next(next){}
        void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
        void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    80001634:	00000097          	auipc	ra,0x0
    80001638:	7a4080e7          	jalr	1956(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    8000163c:	00098593          	mv	a1,s3
    80001640:	00001097          	auipc	ra,0x1
    80001644:	99c080e7          	jalr	-1636(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    while(!blocked.empty()){
        Scheduler::getInstance().put(blocked.removeLast());
    80001648:	00048513          	mv	a0,s1
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	580080e7          	jalr	1408(ra) # 80002bcc <_ZN9Scheduler3putEP3TCB>
        return head ? false : true;
    80001654:	00093783          	ld	a5,0(s2)
    while(!blocked.empty()){
    80001658:	02078e63          	beqz	a5,80001694 <_ZN10_SemaphoreD1Ev+0x9c>
        Scheduler::getInstance().put(blocked.removeLast());
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	514080e7          	jalr	1300(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001664:	00090693          	mv	a3,s2
        if(!head) {return 0;}
    80001668:	00093483          	ld	s1,0(s2)
    8000166c:	fc048ee3          	beqz	s1,80001648 <_ZN10_SemaphoreD1Ev+0x50>
        Elem* prev=0;
    80001670:	00000793          	li	a5,0
        for(Elem* curr=head;curr && curr!=tail;curr=curr->next){
    80001674:	fa0484e3          	beqz	s1,8000161c <_ZN10_SemaphoreD1Ev+0x24>
    80001678:	0086b703          	ld	a4,8(a3)
    8000167c:	fae480e3          	beq	s1,a4,8000161c <_ZN10_SemaphoreD1Ev+0x24>
            prev=curr;
    80001680:	00048793          	mv	a5,s1
        for(Elem* curr=head;curr && curr!=tail;curr=curr->next){
    80001684:	0084b483          	ld	s1,8(s1)
    80001688:	fedff06f          	j	80001674 <_ZN10_SemaphoreD1Ev+0x7c>
        else{  head=0; }
    8000168c:	00093023          	sd	zero,0(s2)
    80001690:	f99ff06f          	j	80001628 <_ZN10_SemaphoreD1Ev+0x30>
    }
}
    80001694:	02813083          	ld	ra,40(sp)
    80001698:	02013403          	ld	s0,32(sp)
    8000169c:	01813483          	ld	s1,24(sp)
    800016a0:	01013903          	ld	s2,16(sp)
    800016a4:	00813983          	ld	s3,8(sp)
    800016a8:	03010113          	addi	sp,sp,48
    800016ac:	00008067          	ret

00000000800016b0 <_ZN10_Semaphore5blockEv>:

void _Semaphore::block(){
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	01213023          	sd	s2,0(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050493          	mv	s1,a0
    TCB* old=TCB::running;
    800016cc:	0000a917          	auipc	s2,0xa
    800016d0:	25493903          	ld	s2,596(s2) # 8000b920 <_ZN3TCB7runningE>
        void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	704080e7          	jalr	1796(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    800016dc:	01000593          	li	a1,16
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	820080e7          	jalr	-2016(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
        Elem(T* data,Elem *next):data(data),next(next){}
    800016e8:	01253023          	sd	s2,0(a0)
    800016ec:	00053423          	sd	zero,8(a0)
        if(tail){
    800016f0:	0084b783          	ld	a5,8(s1)
    800016f4:	04078c63          	beqz	a5,8000174c <_ZN10_Semaphore5blockEv+0x9c>
            tail->next=elem;
    800016f8:	00a7b423          	sd	a0,8(a5)
            tail=tail->next;
    800016fc:	0084b783          	ld	a5,8(s1)
    80001700:	0087b783          	ld	a5,8(a5)
    80001704:	00f4b423          	sd	a5,8(s1)
    blocked.addLast(old);
    TCB::running=Scheduler::getInstance().get();
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	468080e7          	jalr	1128(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001710:	00001097          	auipc	ra,0x1
    80001714:	538080e7          	jalr	1336(ra) # 80002c48 <_ZN9Scheduler3getEv>
    80001718:	0000a797          	auipc	a5,0xa
    8000171c:	20a7b423          	sd	a0,520(a5) # 8000b920 <_ZN3TCB7runningE>
    if (old != TCB::running) TCB::contextSwitch(&old->context, &TCB::running->context);
    80001720:	00a90a63          	beq	s2,a0,80001734 <_ZN10_Semaphore5blockEv+0x84>
    80001724:	01050593          	addi	a1,a0,16
    80001728:	01090513          	addi	a0,s2,16
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	8d4080e7          	jalr	-1836(ra) # 80001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	00813483          	ld	s1,8(sp)
    80001740:	00013903          	ld	s2,0(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret
            head=tail=elem;
    8000174c:	00a4b423          	sd	a0,8(s1)
    80001750:	00a4b023          	sd	a0,0(s1)
    80001754:	fb5ff06f          	j	80001708 <_ZN10_Semaphore5blockEv+0x58>

0000000080001758 <_ZN10_Semaphore7unblockEv>:

void _Semaphore::unblock(){
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	01213023          	sd	s2,0(sp)
    8000176c:	02010413          	addi	s0,sp,32
        if(!head){
    80001770:	00053483          	ld	s1,0(a0)
    80001774:	04048e63          	beqz	s1,800017d0 <_ZN10_Semaphore7unblockEv+0x78>
        head=head->next;
    80001778:	0084b783          	ld	a5,8(s1)
    8000177c:	00f53023          	sd	a5,0(a0)
        if(!head) {tail=0;}
    80001780:	04078463          	beqz	a5,800017c8 <_ZN10_Semaphore7unblockEv+0x70>
        T *ret=elem->data;
    80001784:	0004b903          	ld	s2,0(s1)
        void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	650080e7          	jalr	1616(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001790:	00048593          	mv	a1,s1
    80001794:	00001097          	auipc	ra,0x1
    80001798:	848080e7          	jalr	-1976(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    TCB *t=blocked.removeFirst();
    Scheduler::getInstance().put(t);
    8000179c:	00001097          	auipc	ra,0x1
    800017a0:	3d4080e7          	jalr	980(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    800017a4:	00090513          	mv	a0,s2
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	424080e7          	jalr	1060(ra) # 80002bcc <_ZN9Scheduler3putEP3TCB>
}
    800017b0:	01813083          	ld	ra,24(sp)
    800017b4:	01013403          	ld	s0,16(sp)
    800017b8:	00813483          	ld	s1,8(sp)
    800017bc:	00013903          	ld	s2,0(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret
        if(!head) {tail=0;}
    800017c8:	00053423          	sd	zero,8(a0)
    800017cc:	fb9ff06f          	j	80001784 <_ZN10_Semaphore7unblockEv+0x2c>
            return 0;
    800017d0:	00048913          	mv	s2,s1
    800017d4:	fc9ff06f          	j	8000179c <_ZN10_Semaphore7unblockEv+0x44>

00000000800017d8 <_ZN10_Semaphore6wait_nEm>:

void _Semaphore::wait_n(uint64 n){
    if(val>=n){
    800017d8:	01053783          	ld	a5,16(a0)
    800017dc:	00b7e863          	bltu	a5,a1,800017ec <_ZN10_Semaphore6wait_nEm+0x14>
         val-=n;
    800017e0:	40b785b3          	sub	a1,a5,a1
    800017e4:	00b53823          	sd	a1,16(a0)
    800017e8:	00008067          	ret
void _Semaphore::wait_n(uint64 n){
    800017ec:	ff010113          	addi	sp,sp,-16
    800017f0:	00113423          	sd	ra,8(sp)
    800017f4:	00813023          	sd	s0,0(sp)
    800017f8:	01010413          	addi	s0,sp,16
    }
    else {
        TCB::running->setSemWaiting(n);
    800017fc:	0000a797          	auipc	a5,0xa
    80001800:	1247b783          	ld	a5,292(a5) # 8000b920 <_ZN3TCB7runningE>
    uint64 getTimeSlice() const{ return timeSlice;}

    bool isFinished() const {return finished;}
    void setFinished(bool finished) {this->finished=finished;}
    uint64 getSemWaiting() const {return semWaiting;}
    void setSemWaiting(uint64 waiting) {this->semWaiting=waiting;}
    80001804:	02b7bc23          	sd	a1,56(a5)
        block();
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	ea8080e7          	jalr	-344(ra) # 800016b0 <_ZN10_Semaphore5blockEv>
    }
}
    80001810:	00813083          	ld	ra,8(sp)
    80001814:	00013403          	ld	s0,0(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_ZN10_Semaphore8signal_nEm>:

void _Semaphore::signal_n(uint64 n){
    80001820:	fd010113          	addi	sp,sp,-48
    80001824:	02113423          	sd	ra,40(sp)
    80001828:	02813023          	sd	s0,32(sp)
    8000182c:	00913c23          	sd	s1,24(sp)
    80001830:	01213823          	sd	s2,16(sp)
    80001834:	01313423          	sd	s3,8(sp)
    80001838:	03010413          	addi	s0,sp,48
    8000183c:	00050493          	mv	s1,a0
    val+=n;
    80001840:	01053783          	ld	a5,16(a0)
    80001844:	00b787b3          	add	a5,a5,a1
    80001848:	00f53823          	sd	a5,16(a0)
    8000184c:	0440006f          	j	80001890 <_ZN10_Semaphore8signal_nEm+0x70>
        if(!head) {tail=0;}
    80001850:	0004b423          	sd	zero,8(s1)
        T *ret=elem->data;
    80001854:	00093983          	ld	s3,0(s2)
        void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	580080e7          	jalr	1408(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001860:	00090593          	mv	a1,s2
    80001864:	00000097          	auipc	ra,0x0
    80001868:	778080e7          	jalr	1912(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    uint64 getSemWaiting() const {return semWaiting;}
    8000186c:	0389b703          	ld	a4,56(s3)
    while(!blocked.empty() && blocked.peekFirst()->getSemWaiting()<=val){
        TCB* t=blocked.removeFirst();
        val-=t->getSemWaiting();
    80001870:	0104b783          	ld	a5,16(s1)
    80001874:	40e787b3          	sub	a5,a5,a4
    80001878:	00f4b823          	sd	a5,16(s1)
        Scheduler::getInstance().put(t);
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	2f4080e7          	jalr	756(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001884:	00098513          	mv	a0,s3
    80001888:	00001097          	auipc	ra,0x1
    8000188c:	344080e7          	jalr	836(ra) # 80002bcc <_ZN9Scheduler3putEP3TCB>
        return head ? false : true;
    80001890:	0004b783          	ld	a5,0(s1)
    while(!blocked.empty() && blocked.peekFirst()->getSemWaiting()<=val){
    80001894:	02078c63          	beqz	a5,800018cc <_ZN10_Semaphore8signal_nEm+0xac>
        if(!head) {return 0;}
    80001898:	00078463          	beqz	a5,800018a0 <_ZN10_Semaphore8signal_nEm+0x80>
        return head->data;
    8000189c:	0007b783          	ld	a5,0(a5)
    800018a0:	0387b783          	ld	a5,56(a5)
    800018a4:	0104b703          	ld	a4,16(s1)
    800018a8:	02f76263          	bltu	a4,a5,800018cc <_ZN10_Semaphore8signal_nEm+0xac>
        if(!head){
    800018ac:	0004b903          	ld	s2,0(s1)
    800018b0:	00090a63          	beqz	s2,800018c4 <_ZN10_Semaphore8signal_nEm+0xa4>
        head=head->next;
    800018b4:	00893783          	ld	a5,8(s2)
    800018b8:	00f4b023          	sd	a5,0(s1)
        if(!head) {tail=0;}
    800018bc:	f8079ce3          	bnez	a5,80001854 <_ZN10_Semaphore8signal_nEm+0x34>
    800018c0:	f91ff06f          	j	80001850 <_ZN10_Semaphore8signal_nEm+0x30>
            return 0;
    800018c4:	00090993          	mv	s3,s2
    800018c8:	fa5ff06f          	j	8000186c <_ZN10_Semaphore8signal_nEm+0x4c>
    }
}
    800018cc:	02813083          	ld	ra,40(sp)
    800018d0:	02013403          	ld	s0,32(sp)
    800018d4:	01813483          	ld	s1,24(sp)
    800018d8:	01013903          	ld	s2,16(sp)
    800018dc:	00813983          	ld	s3,8(sp)
    800018e0:	03010113          	addi	sp,sp,48
    800018e4:	00008067          	ret

00000000800018e8 <_ZN10_Semaphore4waitEv>:

void _Semaphore::wait(){
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00113423          	sd	ra,8(sp)
    800018f0:	00813023          	sd	s0,0(sp)
    800018f4:	01010413          	addi	s0,sp,16
    _Semaphore::wait_n(1);
    800018f8:	00100593          	li	a1,1
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	edc080e7          	jalr	-292(ra) # 800017d8 <_ZN10_Semaphore6wait_nEm>
}
    80001904:	00813083          	ld	ra,8(sp)
    80001908:	00013403          	ld	s0,0(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret

0000000080001914 <_ZN10_Semaphore6signalEv>:

void _Semaphore::signal(){
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
    _Semaphore::signal_n(1);
    80001924:	00100593          	li	a1,1
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	ef8080e7          	jalr	-264(ra) # 80001820 <_ZN10_Semaphore8signal_nEm>
}
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_ZN13BoundedBuffer6appendEc>:
#include "../h/BoundedBuffer.hpp"

void BoundedBuffer::append(char c){
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00813423          	sd	s0,8(sp)
    80001948:	01010413          	addi	s0,sp,16
    buffer[tail]=c;
    8000194c:	11053783          	ld	a5,272(a0)
    80001950:	00f50733          	add	a4,a0,a5
    80001954:	00b70023          	sb	a1,0(a4)
    tail=(tail+1)%BUFFER_SIZE;
    80001958:	00178793          	addi	a5,a5,1
    8000195c:	0ff7f793          	andi	a5,a5,255
    80001960:	10f53823          	sd	a5,272(a0)
    count++;
    80001964:	10053783          	ld	a5,256(a0)
    80001968:	00178793          	addi	a5,a5,1
    8000196c:	10f53023          	sd	a5,256(a0)
}
    80001970:	00813403          	ld	s0,8(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret

000000008000197c <_ZN13BoundedBuffer4takeEv>:

char BoundedBuffer::take(){
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00813423          	sd	s0,8(sp)
    80001984:	01010413          	addi	s0,sp,16
    80001988:	00050793          	mv	a5,a0
    char c=buffer[head];
    8000198c:	10853703          	ld	a4,264(a0)
    80001990:	00e506b3          	add	a3,a0,a4
    80001994:	0006c503          	lbu	a0,0(a3)
    head=(head+1)%BUFFER_SIZE;
    80001998:	00170713          	addi	a4,a4,1
    8000199c:	0ff77713          	andi	a4,a4,255
    800019a0:	10e7b423          	sd	a4,264(a5)
    count--;
    800019a4:	1007b703          	ld	a4,256(a5)
    800019a8:	fff70713          	addi	a4,a4,-1
    800019ac:	10e7b023          	sd	a4,256(a5)
    return c;
}
    800019b0:	00813403          	ld	s0,8(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZN3TCB13threadWrapperEv>:
    //dbg('0'+running->getMyId());
    TCB::contextSwitch(&old->context,&running->context);
    return 0;
}

void TCB::threadWrapper(){
    800019bc:	fe010113          	addi	sp,sp,-32
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00813823          	sd	s0,16(sp)
    800019c8:	00913423          	sd	s1,8(sp)
    800019cc:	02010413          	addi	s0,sp,32
    if (!running->kernelThr) {
    800019d0:	0000a797          	auipc	a5,0xa
    800019d4:	f507b783          	ld	a5,-176(a5) # 8000b920 <_ZN3TCB7runningE>
    800019d8:	0407c783          	lbu	a5,64(a5)
    800019dc:	00079663          	bnez	a5,800019e8 <_ZN3TCB13threadWrapperEv+0x2c>
        __asm__ volatile("csrc sstatus, %0" : : "r"(Riscv::BitMaskSstatus::SSTATUS_SPP));
    800019e0:	10000793          	li	a5,256
    800019e4:	1007b073          	csrc	sstatus,a5
    }
    Riscv::popSppSpie();
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	dc8080e7          	jalr	-568(ra) # 800027b0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800019f0:	0000a497          	auipc	s1,0xa
    800019f4:	f3048493          	addi	s1,s1,-208 # 8000b920 <_ZN3TCB7runningE>
    800019f8:	0004b783          	ld	a5,0(s1)
    800019fc:	0007b703          	ld	a4,0(a5)
    80001a00:	0287b503          	ld	a0,40(a5)
    80001a04:	000700e7          	jalr	a4
    running->setFinished(true);
    80001a08:	0004b783          	ld	a5,0(s1)
    using Body = void (*)(void *);
    static TCB *create_thread(Body body,void* args,bool kernelThread);
    uint64 getTimeSlice() const{ return timeSlice;}

    bool isFinished() const {return finished;}
    void setFinished(bool finished) {this->finished=finished;}
    80001a0c:	00100713          	li	a4,1
    80001a10:	02e78023          	sb	a4,32(a5)
    //TCB::yield();
    ::thread_exit();
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	e50080e7          	jalr	-432(ra) # 80002864 <_Z11thread_exitv>
}
    80001a1c:	01813083          	ld	ra,24(sp)
    80001a20:	01013403          	ld	s0,16(sp)
    80001a24:	00813483          	ld	s1,8(sp)
    80001a28:	02010113          	addi	sp,sp,32
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN3TCBC1EPFvPvES0_b>:
TCB::TCB(Body body,void* args,bool kernelThread):
    80001a30:	fd010113          	addi	sp,sp,-48
    80001a34:	02113423          	sd	ra,40(sp)
    80001a38:	02813023          	sd	s0,32(sp)
    80001a3c:	00913c23          	sd	s1,24(sp)
    80001a40:	01213823          	sd	s2,16(sp)
    80001a44:	01313423          	sd	s3,8(sp)
    80001a48:	01413023          	sd	s4,0(sp)
    80001a4c:	03010413          	addi	s0,sp,48
    80001a50:	00050493          	mv	s1,a0
    80001a54:	00058913          	mv	s2,a1
    80001a58:	00060a13          	mv	s4,a2
    80001a5c:	00068993          	mv	s3,a3
    myId(idCounter++)
    80001a60:	00b53023          	sd	a1,0(a0)
    stack(body!=nullptr ? (uint64*)MemoryAllocator::getInstance().memAlloc(STACK_SIZE): nullptr),
    80001a64:	0c058063          	beqz	a1,80001b24 <_ZN3TCBC1EPFvPvES0_b+0xf4>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	370080e7          	jalr	880(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001a70:	000015b7          	lui	a1,0x1
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	48c080e7          	jalr	1164(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
    myId(idCounter++)
    80001a7c:	00a4b423          	sd	a0,8(s1)
        body!=nullptr ? (uint64) &threadWrapper : 0,
    80001a80:	0a090663          	beqz	s2,80001b2c <_ZN3TCBC1EPFvPvES0_b+0xfc>
    80001a84:	00000797          	auipc	a5,0x0
    80001a88:	f3878793          	addi	a5,a5,-200 # 800019bc <_ZN3TCB13threadWrapperEv>
    myId(idCounter++)
    80001a8c:	00f4b823          	sd	a5,16(s1)
        stack!=nullptr ? (uint64) (uint64)stack + STACK_SIZE : 0
    80001a90:	0a050263          	beqz	a0,80001b34 <_ZN3TCBC1EPFvPvES0_b+0x104>
    80001a94:	000017b7          	lui	a5,0x1
    80001a98:	00f50533          	add	a0,a0,a5
    myId(idCounter++)
    80001a9c:	00a4bc23          	sd	a0,24(s1)
    80001aa0:	02048023          	sb	zero,32(s1)
    80001aa4:	0344b423          	sd	s4,40(s1)
    80001aa8:	00200793          	li	a5,2
    80001aac:	02f4b823          	sd	a5,48(s1)
    80001ab0:	0204bc23          	sd	zero,56(s1)
    80001ab4:	05348023          	sb	s3,64(s1)
    80001ab8:	0404b423          	sd	zero,72(s1)
    80001abc:	0000a717          	auipc	a4,0xa
    80001ac0:	e4c70713          	addi	a4,a4,-436 # 8000b908 <_ZN3TCB9idCounterE>
    80001ac4:	00073783          	ld	a5,0(a4)
    80001ac8:	00178693          	addi	a3,a5,1 # 1001 <_entry-0x7fffefff>
    80001acc:	00d73023          	sd	a3,0(a4)
    80001ad0:	04f4b823          	sd	a5,80(s1)
    if (body!=nullptr) {
    80001ad4:	02090863          	beqz	s2,80001b04 <_ZN3TCBC1EPFvPvES0_b+0xd4>
        Scheduler::getInstance().put(this);
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	098080e7          	jalr	152(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	0e8080e7          	jalr	232(ra) # 80002bcc <_ZN9Scheduler3putEP3TCB>
        if (!kernelThread) counter++;
    80001aec:	00099c63          	bnez	s3,80001b04 <_ZN3TCBC1EPFvPvES0_b+0xd4>
    80001af0:	0000a717          	auipc	a4,0xa
    80001af4:	e2070713          	addi	a4,a4,-480 # 8000b910 <_ZN3TCB7counterE>
    80001af8:	00073783          	ld	a5,0(a4)
    80001afc:	00178793          	addi	a5,a5,1
    80001b00:	00f73023          	sd	a5,0(a4)
}
    80001b04:	02813083          	ld	ra,40(sp)
    80001b08:	02013403          	ld	s0,32(sp)
    80001b0c:	01813483          	ld	s1,24(sp)
    80001b10:	01013903          	ld	s2,16(sp)
    80001b14:	00813983          	ld	s3,8(sp)
    80001b18:	00013a03          	ld	s4,0(sp)
    80001b1c:	03010113          	addi	sp,sp,48
    80001b20:	00008067          	ret
    stack(body!=nullptr ? (uint64*)MemoryAllocator::getInstance().memAlloc(STACK_SIZE): nullptr),
    80001b24:	00000513          	li	a0,0
    80001b28:	f55ff06f          	j	80001a7c <_ZN3TCBC1EPFvPvES0_b+0x4c>
        body!=nullptr ? (uint64) &threadWrapper : 0,
    80001b2c:	00000793          	li	a5,0
    80001b30:	f5dff06f          	j	80001a8c <_ZN3TCBC1EPFvPvES0_b+0x5c>
        stack!=nullptr ? (uint64) (uint64)stack + STACK_SIZE : 0
    80001b34:	00000513          	li	a0,0
    80001b38:	f65ff06f          	j	80001a9c <_ZN3TCBC1EPFvPvES0_b+0x6c>

0000000080001b3c <_ZN3TCB13create_threadEPFvPvES0_b>:
TCB *TCB::create_thread(Body body,void *args,bool kernelThread) {
    80001b3c:	fd010113          	addi	sp,sp,-48
    80001b40:	02113423          	sd	ra,40(sp)
    80001b44:	02813023          	sd	s0,32(sp)
    80001b48:	00913c23          	sd	s1,24(sp)
    80001b4c:	01213823          	sd	s2,16(sp)
    80001b50:	01313423          	sd	s3,8(sp)
    80001b54:	01413023          	sd	s4,0(sp)
    80001b58:	03010413          	addi	s0,sp,48
    80001b5c:	00050913          	mv	s2,a0
    80001b60:	00058993          	mv	s3,a1
    80001b64:	00060a13          	mv	s4,a2
    return new TCB(body,args,kernelThread);
    80001b68:	05800513          	li	a0,88
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	5b4080e7          	jalr	1460(ra) # 80002120 <_Znwm>
    80001b74:	00050493          	mv	s1,a0
    80001b78:	000a0693          	mv	a3,s4
    80001b7c:	00098613          	mv	a2,s3
    80001b80:	00090593          	mv	a1,s2
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	eac080e7          	jalr	-340(ra) # 80001a30 <_ZN3TCBC1EPFvPvES0_b>
    80001b8c:	0200006f          	j	80001bac <_ZN3TCB13create_threadEPFvPvES0_b+0x70>
    80001b90:	00050913          	mv	s2,a0
    80001b94:	00048513          	mv	a0,s1
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	5b0080e7          	jalr	1456(ra) # 80002148 <_ZdlPv>
    80001ba0:	00090513          	mv	a0,s2
    80001ba4:	0000b097          	auipc	ra,0xb
    80001ba8:	144080e7          	jalr	324(ra) # 8000cce8 <_Unwind_Resume>
}
    80001bac:	00048513          	mv	a0,s1
    80001bb0:	02813083          	ld	ra,40(sp)
    80001bb4:	02013403          	ld	s0,32(sp)
    80001bb8:	01813483          	ld	s1,24(sp)
    80001bbc:	01013903          	ld	s2,16(sp)
    80001bc0:	00813983          	ld	s3,8(sp)
    80001bc4:	00013a03          	ld	s4,0(sp)
    80001bc8:	03010113          	addi	sp,sp,48
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80001bd0:	fe010113          	addi	sp,sp,-32
    80001bd4:	00113c23          	sd	ra,24(sp)
    80001bd8:	00813823          	sd	s0,16(sp)
    80001bdc:	00913423          	sd	s1,8(sp)
    80001be0:	02010413          	addi	s0,sp,32
    TCB *old=running;
    80001be4:	0000a497          	auipc	s1,0xa
    80001be8:	d3c4b483          	ld	s1,-708(s1) # 8000b920 <_ZN3TCB7runningE>
    bool isFinished() const {return finished;}
    80001bec:	0204c783          	lbu	a5,32(s1)
    if(!old->isFinished()){ Scheduler::getInstance().put(old); }
    80001bf0:	04078263          	beqz	a5,80001c34 <_ZN3TCB8dispatchEv+0x64>
    running=Scheduler::getInstance().get();
    80001bf4:	00001097          	auipc	ra,0x1
    80001bf8:	f7c080e7          	jalr	-132(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	04c080e7          	jalr	76(ra) # 80002c48 <_ZN9Scheduler3getEv>
    80001c04:	0000a797          	auipc	a5,0xa
    80001c08:	d0a7be23          	sd	a0,-740(a5) # 8000b920 <_ZN3TCB7runningE>
    if (old!=running) TCB::contextSwitch(&old->context,&running->context);
    80001c0c:	00a48a63          	beq	s1,a0,80001c20 <_ZN3TCB8dispatchEv+0x50>
    80001c10:	01050593          	addi	a1,a0,16
    80001c14:	01048513          	addi	a0,s1,16
    80001c18:	fffff097          	auipc	ra,0xfffff
    80001c1c:	3e8080e7          	jalr	1000(ra) # 80001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001c20:	01813083          	ld	ra,24(sp)
    80001c24:	01013403          	ld	s0,16(sp)
    80001c28:	00813483          	ld	s1,8(sp)
    80001c2c:	02010113          	addi	sp,sp,32
    80001c30:	00008067          	ret
    if(!old->isFinished()){ Scheduler::getInstance().put(old); }
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	f3c080e7          	jalr	-196(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	f8c080e7          	jalr	-116(ra) # 80002bcc <_ZN9Scheduler3putEP3TCB>
    80001c48:	fadff06f          	j	80001bf4 <_ZN3TCB8dispatchEv+0x24>

0000000080001c4c <_ZN3TCB5yieldEv>:
void TCB::yield(){
    80001c4c:	ff010113          	addi	sp,sp,-16
    80001c50:	00813423          	sd	s0,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (0x13) );
    80001c58:	01300793          	li	a5,19
    80001c5c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001c60:	00000073          	ecall
}
    80001c64:	00813403          	ld	s0,8(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN3TCB11thread_exitEv>:
int TCB::thread_exit(){
    80001c70:	fe010113          	addi	sp,sp,-32
    80001c74:	00113c23          	sd	ra,24(sp)
    80001c78:	00813823          	sd	s0,16(sp)
    80001c7c:	00913423          	sd	s1,8(sp)
    80001c80:	02010413          	addi	s0,sp,32
    TCB* old=TCB::running;
    80001c84:	0000a497          	auipc	s1,0xa
    80001c88:	c9c4b483          	ld	s1,-868(s1) # 8000b920 <_ZN3TCB7runningE>
    void setFinished(bool finished) {this->finished=finished;}
    80001c8c:	00100793          	li	a5,1
    80001c90:	02f48023          	sb	a5,32(s1)
    if (!old->kernelThr) TCB::counter--;
    80001c94:	0404c783          	lbu	a5,64(s1)
    80001c98:	00079c63          	bnez	a5,80001cb0 <_ZN3TCB11thread_exitEv+0x40>
    80001c9c:	0000a717          	auipc	a4,0xa
    80001ca0:	c7470713          	addi	a4,a4,-908 # 8000b910 <_ZN3TCB7counterE>
    80001ca4:	00073783          	ld	a5,0(a4)
    80001ca8:	fff78793          	addi	a5,a5,-1
    80001cac:	00f73023          	sd	a5,0(a4)
    TCB::running=Scheduler::getInstance().get();
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	ec0080e7          	jalr	-320(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	f90080e7          	jalr	-112(ra) # 80002c48 <_ZN9Scheduler3getEv>
    80001cc0:	0000a797          	auipc	a5,0xa
    80001cc4:	c6a7b023          	sd	a0,-928(a5) # 8000b920 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context,&running->context);
    80001cc8:	01050593          	addi	a1,a0,16
    80001ccc:	01048513          	addi	a0,s1,16
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	330080e7          	jalr	816(ra) # 80001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001cd8:	00000513          	li	a0,0
    80001cdc:	01813083          	ld	ra,24(sp)
    80001ce0:	01013403          	ld	s0,16(sp)
    80001ce4:	00813483          	ld	s1,8(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN3TCB10time_sleepEm>:

int TCB::time_sleep(time_t time){
    if (time == 0) return 0;
    80001cf0:	00051663          	bnez	a0,80001cfc <_ZN3TCB10time_sleepEm+0xc>
	old->setSleepingTime(time);
	Scheduler::getInstance().putSleep(old);
	TCB::running=Scheduler::getInstance().get();
	if (old!=running) TCB::contextSwitch(&old->context,&running->context);
	return 0;
    80001cf4:	00000513          	li	a0,0
    80001cf8:	00008067          	ret
int TCB::time_sleep(time_t time){
    80001cfc:	fe010113          	addi	sp,sp,-32
    80001d00:	00113c23          	sd	ra,24(sp)
    80001d04:	00813823          	sd	s0,16(sp)
    80001d08:	00913423          	sd	s1,8(sp)
    80001d0c:	01213023          	sd	s2,0(sp)
    80001d10:	02010413          	addi	s0,sp,32
	TCB* old=TCB::running;
    80001d14:	0000a917          	auipc	s2,0xa
    80001d18:	c0c90913          	addi	s2,s2,-1012 # 8000b920 <_ZN3TCB7runningE>
    80001d1c:	00093483          	ld	s1,0(s2)
    uint64 getSemWaiting() const {return semWaiting;}
    void setSemWaiting(uint64 waiting) {this->semWaiting=waiting;}
	time_t getSleepingTime() const {return sleepingTime;}
    void setSleepingTime(uint64 sleepingTime) {this->sleepingTime=sleepingTime;}
    80001d20:	04a4b423          	sd	a0,72(s1)
	Scheduler::getInstance().putSleep(old);
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	e4c080e7          	jalr	-436(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	fac080e7          	jalr	-84(ra) # 80002cdc <_ZN9Scheduler8putSleepEP3TCB>
	TCB::running=Scheduler::getInstance().get();
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	e38080e7          	jalr	-456(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80001d40:	00001097          	auipc	ra,0x1
    80001d44:	f08080e7          	jalr	-248(ra) # 80002c48 <_ZN9Scheduler3getEv>
    80001d48:	00a93023          	sd	a0,0(s2)
	if (old!=running) TCB::contextSwitch(&old->context,&running->context);
    80001d4c:	00a48a63          	beq	s1,a0,80001d60 <_ZN3TCB10time_sleepEm+0x70>
    80001d50:	01050593          	addi	a1,a0,16
    80001d54:	01048513          	addi	a0,s1,16
    80001d58:	fffff097          	auipc	ra,0xfffff
    80001d5c:	2a8080e7          	jalr	680(ra) # 80001000 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80001d60:	00000513          	li	a0,0
    80001d64:	01813083          	ld	ra,24(sp)
    80001d68:	01013403          	ld	s0,16(sp)
    80001d6c:	00813483          	ld	s1,8(sp)
    80001d70:	00013903          	ld	s2,0(sp)
    80001d74:	02010113          	addi	sp,sp,32
    80001d78:	00008067          	ret

0000000080001d7c <_ZN15MemoryAllocatorC1Ev>:
MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    return instance;
}

MemoryAllocator::MemoryAllocator() {
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00813423          	sd	s0,8(sp)
    80001d84:	01010413          	addi	s0,sp,16
    void* startAddress=(void*)(((size_t)HEAP_START_ADDR+MEM_BLOCK_SIZE-1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    80001d88:	00009797          	auipc	a5,0x9
    80001d8c:	7587b783          	ld	a5,1880(a5) # 8000b4e0 <HEAP_START_ADDR>
    80001d90:	03f78793          	addi	a5,a5,63
    80001d94:	fc07f793          	andi	a5,a5,-64
    head=(Fragment*)startAddress;
    80001d98:	00f53023          	sd	a5,0(a0)
    size_t num=((size_t)HEAP_END_ADDR-(size_t)startAddress) / MEM_BLOCK_SIZE;
    80001d9c:	00009717          	auipc	a4,0x9
    80001da0:	73c73703          	ld	a4,1852(a4) # 8000b4d8 <HEAP_END_ADDR>
    80001da4:	40f70733          	sub	a4,a4,a5
    80001da8:	00675713          	srli	a4,a4,0x6
    head->numOfBlocks=num;
    80001dac:	00e7b023          	sd	a4,0(a5)
    head->next=nullptr;
    80001db0:	00053783          	ld	a5,0(a0)
    80001db4:	0007b423          	sd	zero,8(a5)
    head->prev=nullptr;
    80001db8:	00053783          	ld	a5,0(a0)
    80001dbc:	0007b823          	sd	zero,16(a5)
    head->free=1;
    80001dc0:	00053783          	ld	a5,0(a0)
    80001dc4:	00100713          	li	a4,1
    80001dc8:	00e78c23          	sb	a4,24(a5)
}
    80001dcc:	00813403          	ld	s0,8(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_ZN15MemoryAllocator11getInstanceEv>:
    static MemoryAllocator instance;
    80001dd8:	0000a797          	auipc	a5,0xa
    80001ddc:	b507c783          	lbu	a5,-1200(a5) # 8000b928 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80001de0:	00078863          	beqz	a5,80001df0 <_ZN15MemoryAllocator11getInstanceEv+0x18>
}
    80001de4:	0000a517          	auipc	a0,0xa
    80001de8:	b4c50513          	addi	a0,a0,-1204 # 8000b930 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001dec:	00008067          	ret
MemoryAllocator &MemoryAllocator::getInstance() {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00113423          	sd	ra,8(sp)
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80001e00:	0000a517          	auipc	a0,0xa
    80001e04:	b3050513          	addi	a0,a0,-1232 # 8000b930 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	f74080e7          	jalr	-140(ra) # 80001d7c <_ZN15MemoryAllocatorC1Ev>
    80001e10:	00100793          	li	a5,1
    80001e14:	0000a717          	auipc	a4,0xa
    80001e18:	b0f70a23          	sb	a5,-1260(a4) # 8000b928 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
}
    80001e1c:	0000a517          	auipc	a0,0xa
    80001e20:	b1450513          	addi	a0,a0,-1260 # 8000b930 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZN15MemoryAllocator13firstFitAllocEm>:

void* MemoryAllocator::memAlloc(size_t size) {
    return MemoryAllocator::getInstance().firstFitAlloc(size);
}

void* MemoryAllocator::firstFitAlloc(size_t size) {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00813423          	sd	s0,8(sp)
    80001e3c:	01010413          	addi	s0,sp,16
    if (size<=0) {
    80001e40:	0a058c63          	beqz	a1,80001ef8 <_ZN15MemoryAllocator13firstFitAllocEm+0xc4>
        return nullptr;
    }
    //sizeof(fragment) extra space to store fragment data
    size_t numOfBlocksNeeded=((size+sizeof(Fragment))%MEM_BLOCK_SIZE==0) ? (size+sizeof(Fragment))/MEM_BLOCK_SIZE : (size+sizeof(Fragment))/MEM_BLOCK_SIZE+1;
    80001e44:	02058593          	addi	a1,a1,32 # 1020 <_entry-0x7fffefe0>
    80001e48:	03f5f793          	andi	a5,a1,63
    80001e4c:	00079863          	bnez	a5,80001e5c <_ZN15MemoryAllocator13firstFitAllocEm+0x28>
    80001e50:	0065d713          	srli	a4,a1,0x6

    for (Fragment *fragment=head; fragment; fragment=fragment->next) {
    80001e54:	00053503          	ld	a0,0(a0)
    80001e58:	0280006f          	j	80001e80 <_ZN15MemoryAllocator13firstFitAllocEm+0x4c>
    size_t numOfBlocksNeeded=((size+sizeof(Fragment))%MEM_BLOCK_SIZE==0) ? (size+sizeof(Fragment))/MEM_BLOCK_SIZE : (size+sizeof(Fragment))/MEM_BLOCK_SIZE+1;
    80001e5c:	0065d713          	srli	a4,a1,0x6
    80001e60:	00170713          	addi	a4,a4,1
    80001e64:	ff1ff06f          	j	80001e54 <_ZN15MemoryAllocator13firstFitAllocEm+0x20>
        if (fragment->free) {
            if (fragment->numOfBlocks==numOfBlocksNeeded || fragment->numOfBlocks==numOfBlocksNeeded+1) {
                fragment->free=0;
    80001e68:	00050c23          	sb	zero,24(a0)
                return (void*)((size_t)fragment+sizeof(Fragment));
    80001e6c:	02050513          	addi	a0,a0,32
            }
        }
    }
    //__putc('F');
    return nullptr;
}
    80001e70:	00813403          	ld	s0,8(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret
    for (Fragment *fragment=head; fragment; fragment=fragment->next) {
    80001e7c:	00853503          	ld	a0,8(a0)
    80001e80:	fe0508e3          	beqz	a0,80001e70 <_ZN15MemoryAllocator13firstFitAllocEm+0x3c>
        if (fragment->free) {
    80001e84:	01854783          	lbu	a5,24(a0)
    80001e88:	fe078ae3          	beqz	a5,80001e7c <_ZN15MemoryAllocator13firstFitAllocEm+0x48>
            if (fragment->numOfBlocks==numOfBlocksNeeded || fragment->numOfBlocks==numOfBlocksNeeded+1) {
    80001e8c:	00053783          	ld	a5,0(a0)
    80001e90:	fce78ce3          	beq	a5,a4,80001e68 <_ZN15MemoryAllocator13firstFitAllocEm+0x34>
    80001e94:	00170693          	addi	a3,a4,1
    80001e98:	fcd788e3          	beq	a5,a3,80001e68 <_ZN15MemoryAllocator13firstFitAllocEm+0x34>
            else if (fragment->numOfBlocks>numOfBlocksNeeded+1) {
    80001e9c:	fef6f0e3          	bgeu	a3,a5,80001e7c <_ZN15MemoryAllocator13firstFitAllocEm+0x48>
                size_t freeSize=fragment->numOfBlocks-numOfBlocksNeeded;
    80001ea0:	40e787b3          	sub	a5,a5,a4
                fragment->free=0;
    80001ea4:	00050c23          	sb	zero,24(a0)
                fragment->numOfBlocks=numOfBlocksNeeded;
    80001ea8:	00e53023          	sd	a4,0(a0)
                Fragment* tmp=fragment->next;
    80001eac:	00853683          	ld	a3,8(a0)
                fragment->next=(Fragment*)((size_t)fragment+numOfBlocksNeeded*MEM_BLOCK_SIZE);
    80001eb0:	00671713          	slli	a4,a4,0x6
    80001eb4:	00050613          	mv	a2,a0
    80001eb8:	00a70733          	add	a4,a4,a0
    80001ebc:	00e53423          	sd	a4,8(a0)
                fragment->next->free=1;
    80001ec0:	00100593          	li	a1,1
    80001ec4:	00b70c23          	sb	a1,24(a4)
                fragment->next->prev=fragment;
    80001ec8:	00853703          	ld	a4,8(a0)
    80001ecc:	00a73823          	sd	a0,16(a4)
                fragment->next->numOfBlocks=freeSize;
    80001ed0:	00853703          	ld	a4,8(a0)
    80001ed4:	00f73023          	sd	a5,0(a4)
                fragment->next->next=tmp;
    80001ed8:	00853783          	ld	a5,8(a0)
    80001edc:	00d7b423          	sd	a3,8(a5)
                if(tmp){
    80001ee0:	00068863          	beqz	a3,80001ef0 <_ZN15MemoryAllocator13firstFitAllocEm+0xbc>
                    fragment->next->next->prev=fragment->next;
    80001ee4:	00853783          	ld	a5,8(a0)
    80001ee8:	0087b703          	ld	a4,8(a5)
    80001eec:	00f73823          	sd	a5,16(a4)
                return (void*)((size_t)fragment+sizeof(Fragment));
    80001ef0:	02060513          	addi	a0,a2,32
    80001ef4:	f7dff06f          	j	80001e70 <_ZN15MemoryAllocator13firstFitAllocEm+0x3c>
        return nullptr;
    80001ef8:	00000513          	li	a0,0
    80001efc:	f75ff06f          	j	80001e70 <_ZN15MemoryAllocator13firstFitAllocEm+0x3c>

0000000080001f00 <_ZN15MemoryAllocator8memAllocEm>:
void* MemoryAllocator::memAlloc(size_t size) {
    80001f00:	fe010113          	addi	sp,sp,-32
    80001f04:	00113c23          	sd	ra,24(sp)
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	02010413          	addi	s0,sp,32
    80001f14:	00058493          	mv	s1,a1
    return MemoryAllocator::getInstance().firstFitAlloc(size);
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	ec0080e7          	jalr	-320(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80001f20:	00048593          	mv	a1,s1
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	f10080e7          	jalr	-240(ra) # 80001e34 <_ZN15MemoryAllocator13firstFitAllocEm>
}
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00813483          	ld	s1,8(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN15MemoryAllocator9mergePrevEP8Fragment>:
    }
    // is should return the code of the error but I currently dont know what is the code and there might be many more undefined behaviors
    return -1;
}

void MemoryAllocator::mergePrev(Fragment *fragment) {
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    if (fragment->prev && fragment->prev->free) {
    80001f4c:	0105b783          	ld	a5,16(a1)
    80001f50:	02078c63          	beqz	a5,80001f88 <_ZN15MemoryAllocator9mergePrevEP8Fragment+0x48>
    80001f54:	0187c703          	lbu	a4,24(a5)
    80001f58:	02070863          	beqz	a4,80001f88 <_ZN15MemoryAllocator9mergePrevEP8Fragment+0x48>
        fragment->prev->numOfBlocks+=fragment->numOfBlocks;
    80001f5c:	0005b683          	ld	a3,0(a1)
    80001f60:	0007b703          	ld	a4,0(a5)
    80001f64:	00d70733          	add	a4,a4,a3
    80001f68:	00e7b023          	sd	a4,0(a5)
        fragment->prev->next=fragment->next;
    80001f6c:	0105b783          	ld	a5,16(a1)
    80001f70:	0085b703          	ld	a4,8(a1)
    80001f74:	00e7b423          	sd	a4,8(a5)
        if(fragment->prev->next){
    80001f78:	0105b703          	ld	a4,16(a1)
    80001f7c:	00873783          	ld	a5,8(a4)
    80001f80:	00078463          	beqz	a5,80001f88 <_ZN15MemoryAllocator9mergePrevEP8Fragment+0x48>
            fragment->prev->next->prev=fragment->prev;
    80001f84:	00e7b823          	sd	a4,16(a5)
        }
    }
}
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_ZN15MemoryAllocator9mergeNextEP8Fragment>:

void MemoryAllocator::mergeNext(Fragment *fragment) {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00813423          	sd	s0,8(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    if (fragment->next && fragment->next->free) {
    80001fa0:	0085b783          	ld	a5,8(a1)
    80001fa4:	02078663          	beqz	a5,80001fd0 <_ZN15MemoryAllocator9mergeNextEP8Fragment+0x3c>
    80001fa8:	0187c703          	lbu	a4,24(a5)
    80001fac:	02070263          	beqz	a4,80001fd0 <_ZN15MemoryAllocator9mergeNextEP8Fragment+0x3c>
        fragment->numOfBlocks+=fragment->next->numOfBlocks;
    80001fb0:	0007b683          	ld	a3,0(a5)
    80001fb4:	0005b703          	ld	a4,0(a1)
    80001fb8:	00d70733          	add	a4,a4,a3
    80001fbc:	00e5b023          	sd	a4,0(a1)
        fragment->next=fragment->next->next;
    80001fc0:	0087b783          	ld	a5,8(a5)
    80001fc4:	00f5b423          	sd	a5,8(a1)
        if(fragment->next){
    80001fc8:	00078463          	beqz	a5,80001fd0 <_ZN15MemoryAllocator9mergeNextEP8Fragment+0x3c>
            fragment->next->prev=fragment;
    80001fcc:	00b7b823          	sd	a1,16(a5)
        }
    }
}
    80001fd0:	00813403          	ld	s0,8(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void *fragment) {
    80001fdc:	fe010113          	addi	sp,sp,-32
    80001fe0:	00113c23          	sd	ra,24(sp)
    80001fe4:	00813823          	sd	s0,16(sp)
    80001fe8:	00913423          	sd	s1,8(sp)
    80001fec:	01213023          	sd	s2,0(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00050913          	mv	s2,a0
    for (Fragment* curr=head; curr; curr=curr->next) {
    80001ff8:	00053483          	ld	s1,0(a0)
    80001ffc:	04048663          	beqz	s1,80002048 <_ZN15MemoryAllocator4freeEPv+0x6c>
        if ((size_t)curr+sizeof(Fragment)==(size_t)fragment) {
    80002000:	02048793          	addi	a5,s1,32
    80002004:	00b78663          	beq	a5,a1,80002010 <_ZN15MemoryAllocator4freeEPv+0x34>
    for (Fragment* curr=head; curr; curr=curr->next) {
    80002008:	0084b483          	ld	s1,8(s1)
    8000200c:	ff1ff06f          	j	80001ffc <_ZN15MemoryAllocator4freeEPv+0x20>
            if (curr->free) {
    80002010:	0184c783          	lbu	a5,24(s1)
    80002014:	04079863          	bnez	a5,80002064 <_ZN15MemoryAllocator4freeEPv+0x88>
                curr->free=1;
    80002018:	00100793          	li	a5,1
    8000201c:	00f48c23          	sb	a5,24(s1)
                mergeNext(curr);
    80002020:	00048593          	mv	a1,s1
    80002024:	00090513          	mv	a0,s2
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	f6c080e7          	jalr	-148(ra) # 80001f94 <_ZN15MemoryAllocator9mergeNextEP8Fragment>
                mergePrev(curr);
    80002030:	00048593          	mv	a1,s1
    80002034:	00090513          	mv	a0,s2
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	f08080e7          	jalr	-248(ra) # 80001f40 <_ZN15MemoryAllocator9mergePrevEP8Fragment>
                return 0;
    80002040:	00000513          	li	a0,0
    80002044:	0080006f          	j	8000204c <_ZN15MemoryAllocator4freeEPv+0x70>
    return -1;
    80002048:	fff00513          	li	a0,-1
}
    8000204c:	01813083          	ld	ra,24(sp)
    80002050:	01013403          	ld	s0,16(sp)
    80002054:	00813483          	ld	s1,8(sp)
    80002058:	00013903          	ld	s2,0(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret
                return -1;
    80002064:	fff00513          	li	a0,-1
    80002068:	fe5ff06f          	j	8000204c <_ZN15MemoryAllocator4freeEPv+0x70>

000000008000206c <_ZN6ThreadD1Ev>:
Thread::Thread(void (*body)(void*),void* arg){
    this->body=body;
    this->arg=arg;
}

Thread::~Thread(){}
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN6Thread13threadWrapperEPv>:
Thread::Thread(){
    this->body=nullptr;
    this->arg=nullptr;
}

void Thread::threadWrapper(void* arg){
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80002094:	00053783          	ld	a5,0(a0)
    80002098:	0107b783          	ld	a5,16(a5)
    8000209c:	000780e7          	jalr	a5
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period){
    this->period=period;
}

void PeriodicThread::run(){
    800020b0:	fe010113          	addi	sp,sp,-32
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	00813823          	sd	s0,16(sp)
    800020bc:	00913423          	sd	s1,8(sp)
    800020c0:	02010413          	addi	s0,sp,32
    800020c4:	00050493          	mv	s1,a0
    while (1){
        periodicActivation();
    800020c8:	0004b783          	ld	a5,0(s1)
    800020cc:	0187b783          	ld	a5,24(a5)
    800020d0:	00048513          	mv	a0,s1
    800020d4:	000780e7          	jalr	a5
        time_sleep(period);
    800020d8:	0204b503          	ld	a0,32(s1)
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	958080e7          	jalr	-1704(ra) # 80002a34 <_Z10time_sleepm>
    while (1){
    800020e4:	fe5ff06f          	j	800020c8 <_ZN14PeriodicThread3runEv+0x18>

00000000800020e8 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore(){
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00113423          	sd	ra,8(sp)
    800020f0:	00813023          	sd	s0,0(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	00007797          	auipc	a5,0x7
    800020fc:	f6078793          	addi	a5,a5,-160 # 80009058 <_ZTV9Semaphore+0x10>
    80002100:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002104:	00853503          	ld	a0,8(a0)
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	7e0080e7          	jalr	2016(ra) # 800028e8 <_Z9sem_closeP4_sem>
}
    80002110:	00813083          	ld	ra,8(sp)
    80002114:	00013403          	ld	s0,0(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <_Znwm>:
void* operator new(size_t size){
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002130:	00000097          	auipc	ra,0x0
    80002134:	6a0080e7          	jalr	1696(ra) # 800027d0 <_Z9mem_allocm>
}
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_ZdlPv>:
void operator delete(void* addr){
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    mem_free(addr);
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	6a4080e7          	jalr	1700(ra) # 800027fc <_Z8mem_freePv>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZN6ThreadD0Ev>:
Thread::~Thread(){}
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    80002180:	00000097          	auipc	ra,0x0
    80002184:	fc8080e7          	jalr	-56(ra) # 80002148 <_ZdlPv>
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    80002198:	fe010113          	addi	sp,sp,-32
    8000219c:	00113c23          	sd	ra,24(sp)
    800021a0:	00813823          	sd	s0,16(sp)
    800021a4:	00913423          	sd	s1,8(sp)
    800021a8:	02010413          	addi	s0,sp,32
    800021ac:	00050493          	mv	s1,a0
}
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	f38080e7          	jalr	-200(ra) # 800020e8 <_ZN9SemaphoreD1Ev>
    800021b8:	00048513          	mv	a0,s1
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	f8c080e7          	jalr	-116(ra) # 80002148 <_ZdlPv>
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	02010113          	addi	sp,sp,32
    800021d4:	00008067          	ret

00000000800021d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*),void* arg){
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00813423          	sd	s0,8(sp)
    800021e0:	01010413          	addi	s0,sp,16
    800021e4:	00007797          	auipc	a5,0x7
    800021e8:	e4c78793          	addi	a5,a5,-436 # 80009030 <_ZTV6Thread+0x10>
    800021ec:	00f53023          	sd	a5,0(a0)
    this->body=body;
    800021f0:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    800021f4:	00c53c23          	sd	a2,24(a0)
}
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN6Thread5startEv>:
int Thread::start(){
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00113423          	sd	ra,8(sp)
    8000220c:	00813023          	sd	s0,0(sp)
    80002210:	01010413          	addi	s0,sp,16
    if(body==nullptr){
    80002214:	01053583          	ld	a1,16(a0)
    80002218:	02058263          	beqz	a1,8000223c <_ZN6Thread5startEv+0x38>
        return thread_create(&this->myHandle,this->body,this->arg);
    8000221c:	01853603          	ld	a2,24(a0)
    80002220:	00850513          	addi	a0,a0,8
    80002224:	00000097          	auipc	ra,0x0
    80002228:	608080e7          	jalr	1544(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
}
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret
        return thread_create(&this->myHandle,threadWrapper,this);
    8000223c:	00050613          	mv	a2,a0
    80002240:	00000597          	auipc	a1,0x0
    80002244:	e4458593          	addi	a1,a1,-444 # 80002084 <_ZN6Thread13threadWrapperEPv>
    80002248:	00850513          	addi	a0,a0,8
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	5e0080e7          	jalr	1504(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    80002254:	fd9ff06f          	j	8000222c <_ZN6Thread5startEv+0x28>

0000000080002258 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	628080e7          	jalr	1576(ra) # 80002890 <_Z15thread_dispatchv>
}
    80002270:	00813083          	ld	ra,8(sp)
    80002274:	00013403          	ld	s0,0(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t){
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00113423          	sd	ra,8(sp)
    80002288:	00813023          	sd	s0,0(sp)
    8000228c:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002290:	00000097          	auipc	ra,0x0
    80002294:	7a4080e7          	jalr	1956(ra) # 80002a34 <_Z10time_sleepm>
}
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret

00000000800022a8 <_ZN6ThreadC1Ev>:
Thread::Thread(){
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00813423          	sd	s0,8(sp)
    800022b0:	01010413          	addi	s0,sp,16
    800022b4:	00007797          	auipc	a5,0x7
    800022b8:	d7c78793          	addi	a5,a5,-644 # 80009030 <_ZTV6Thread+0x10>
    800022bc:	00f53023          	sd	a5,0(a0)
    this->body=nullptr;
    800022c0:	00053823          	sd	zero,16(a0)
    this->arg=nullptr;
    800022c4:	00053c23          	sd	zero,24(a0)
}
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init){
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00113423          	sd	ra,8(sp)
    800022dc:	00813023          	sd	s0,0(sp)
    800022e0:	01010413          	addi	s0,sp,16
    800022e4:	00007797          	auipc	a5,0x7
    800022e8:	d7478793          	addi	a5,a5,-652 # 80009058 <_ZTV9Semaphore+0x10>
    800022ec:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    800022f0:	00850513          	addi	a0,a0,8
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	5c0080e7          	jalr	1472(ra) # 800028b4 <_Z8sem_openPP4_semj>
}
    800022fc:	00813083          	ld	ra,8(sp)
    80002300:	00013403          	ld	s0,0(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <_ZN9Semaphore4waitEv>:
int Semaphore::wait(){
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00113423          	sd	ra,8(sp)
    80002314:	00813023          	sd	s0,0(sp)
    80002318:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000231c:	00853503          	ld	a0,8(a0)
    80002320:	00000097          	auipc	ra,0x0
    80002324:	5f8080e7          	jalr	1528(ra) # 80002918 <_Z8sem_waitP4_sem>
}
    80002328:	00813083          	ld	ra,8(sp)
    8000232c:	00013403          	ld	s0,0(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <_ZN9Semaphore6signalEv>:
int Semaphore::signal(){
    80002338:	ff010113          	addi	sp,sp,-16
    8000233c:	00113423          	sd	ra,8(sp)
    80002340:	00813023          	sd	s0,0(sp)
    80002344:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002348:	00853503          	ld	a0,8(a0)
    8000234c:	00000097          	auipc	ra,0x0
    80002350:	5fc080e7          	jalr	1532(ra) # 80002948 <_Z10sem_signalP4_sem>
}
    80002354:	00813083          	ld	ra,8(sp)
    80002358:	00013403          	ld	s0,0(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate(){
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00113423          	sd	ra,8(sp)
    8000236c:	00813023          	sd	s0,0(sp)
    80002370:	01010413          	addi	s0,sp,16
    thread_exit();
    80002374:	00000097          	auipc	ra,0x0
    80002378:	4f0080e7          	jalr	1264(ra) # 80002864 <_Z11thread_exitv>
}
    8000237c:	00813083          	ld	ra,8(sp)
    80002380:	00013403          	ld	s0,0(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret

000000008000238c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period){
    8000238c:	fe010113          	addi	sp,sp,-32
    80002390:	00113c23          	sd	ra,24(sp)
    80002394:	00813823          	sd	s0,16(sp)
    80002398:	00913423          	sd	s1,8(sp)
    8000239c:	01213023          	sd	s2,0(sp)
    800023a0:	02010413          	addi	s0,sp,32
    800023a4:	00050493          	mv	s1,a0
    800023a8:	00058913          	mv	s2,a1
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	efc080e7          	jalr	-260(ra) # 800022a8 <_ZN6ThreadC1Ev>
    800023b4:	00007797          	auipc	a5,0x7
    800023b8:	cc478793          	addi	a5,a5,-828 # 80009078 <_ZTV14PeriodicThread+0x10>
    800023bc:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    800023c0:	0324b023          	sd	s2,32(s1)
}
    800023c4:	01813083          	ld	ra,24(sp)
    800023c8:	01013403          	ld	s0,16(sp)
    800023cc:	00813483          	ld	s1,8(sp)
    800023d0:	00013903          	ld	s2,0(sp)
    800023d4:	02010113          	addi	sp,sp,32
    800023d8:	00008067          	ret

00000000800023dc <_ZN7Console4getcEv>:
    }
}

char Console::getc(){
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    return ::getc();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	5f4080e7          	jalr	1524(ra) # 800029e0 <_Z4getcv>
}
    800023f4:	00813083          	ld	ra,8(sp)
    800023f8:	00013403          	ld	s0,0(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <_ZN7Console4putcEc>:

void Console::putc(char c){
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002414:	00000097          	auipc	ra,0x0
    80002418:	5f8080e7          	jalr	1528(ra) # 80002a0c <_Z4putcc>
}
    8000241c:	00813083          	ld	ra,8(sp)
    80002420:	00013403          	ld	s0,0(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    8000242c:	ff010113          	addi	sp,sp,-16
    80002430:	00813423          	sd	s0,8(sp)
    80002434:	01010413          	addi	s0,sp,16
    80002438:	00813403          	ld	s0,8(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread:public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    80002450:	00813403          	ld	s0,8(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret

000000008000245c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread:public Thread {
    8000245c:	ff010113          	addi	sp,sp,-16
    80002460:	00813423          	sd	s0,8(sp)
    80002464:	01010413          	addi	s0,sp,16
    80002468:	00007797          	auipc	a5,0x7
    8000246c:	c1078793          	addi	a5,a5,-1008 # 80009078 <_ZTV14PeriodicThread+0x10>
    80002470:	00f53023          	sd	a5,0(a0)
    80002474:	00813403          	ld	s0,8(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret

0000000080002480 <_ZN14PeriodicThreadD0Ev>:
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    80002490:	00007797          	auipc	a5,0x7
    80002494:	be878793          	addi	a5,a5,-1048 # 80009078 <_ZTV14PeriodicThread+0x10>
    80002498:	00f53023          	sd	a5,0(a0)
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	cac080e7          	jalr	-852(ra) # 80002148 <_ZdlPv>
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <interruptHandler>:
class _sem;
typedef _sem* sem_t;

void dbg(char c);

extern "C" void interruptHandler(uint64* reg) {
    800024b4:	fb010113          	addi	sp,sp,-80
    800024b8:	04113423          	sd	ra,72(sp)
    800024bc:	04813023          	sd	s0,64(sp)
    800024c0:	02913c23          	sd	s1,56(sp)
    800024c4:	03213823          	sd	s2,48(sp)
    800024c8:	03313423          	sd	s3,40(sp)
    800024cc:	03413023          	sd	s4,32(sp)
    800024d0:	05010413          	addi	s0,sp,80
    800024d4:	00050493          	mv	s1,a0
    uint64 code = reg[10];
    800024d8:	05053783          	ld	a5,80(a0)
    uint64 a1   = reg[11];
    800024dc:	05853a03          	ld	s4,88(a0)
    uint64 a2   = reg[12];
    800024e0:	06053503          	ld	a0,96(a0)
    uint64 a3   = reg[13];
    800024e4:	0684b583          	ld	a1,104(s1)
    return scause;

}
inline uint64 Riscv::r_sepc(){
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc], sepc":[sepc] "=r"(sepc));
    800024e8:	14102773          	csrr	a4,sepc
    800024ec:	fce43423          	sd	a4,-56(s0)
    return sepc;
    800024f0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024f4:	10002773          	csrr	a4,sstatus
    800024f8:	fce43023          	sd	a4,-64(s0)
    return sstatus;
    800024fc:	fc043983          	ld	s3,-64(s0)
    __asm__ volatile("csrr %[scause], scause":[scause] "=r"(scause));
    80002500:	14202773          	csrr	a4,scause
    80002504:	fae43c23          	sd	a4,-72(s0)
    return scause;
    80002508:	fb843703          	ld	a4,-72(s0)

    sepc=Riscv::r_sepc();
    sstatus=Riscv::r_sstatus();
    scauseValue=Riscv::r_scause();

    if (scauseValue == 0x0000000000000009UL || scauseValue == 0x0000000000000008UL ) {
    8000250c:	ff870613          	addi	a2,a4,-8
    80002510:	00100693          	li	a3,1
    80002514:	04c6f863          	bgeu	a3,a2,80002564 <interruptHandler+0xb0>
        }
		Riscv::w_sepc(sepc+4);
        Riscv::w_sstatus(sstatus);

    }
    else if(scauseValue==0x8000000000000001UL){
    80002518:	fff00793          	li	a5,-1
    8000251c:	03f79793          	slli	a5,a5,0x3f
    80002520:	00178793          	addi	a5,a5,1
    80002524:	20f70c63          	beq	a4,a5,8000273c <interruptHandler+0x288>
        }
		Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);

    }
    else if(scauseValue == 0x8000000000000009UL){
    80002528:	fff00793          	li	a5,-1
    8000252c:	03f79793          	slli	a5,a5,0x3f
    80002530:	00978793          	addi	a5,a5,9
    80002534:	06f71c63          	bne	a4,a5,800025ac <interruptHandler+0xf8>
        //keyboard interrupt
        uint64 IRQ=plic_claim();
    80002538:	00005097          	auipc	ra,0x5
    8000253c:	88c080e7          	jalr	-1908(ra) # 80006dc4 <plic_claim>
    80002540:	00050493          	mv	s1,a0
        if(IRQ==CONSOLE_IRQ){
    80002544:	00a00793          	li	a5,10
    80002548:	24f50a63          	beq	a0,a5,8000279c <interruptHandler+0x2e8>
            _Console::getInstance().keyboardInterrupt();
        }
        plic_complete(IRQ);
    8000254c:	00048513          	mv	a0,s1
    80002550:	00005097          	auipc	ra,0x5
    80002554:	8ac080e7          	jalr	-1876(ra) # 80006dfc <plic_complete>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002558:	14191073          	csrw	sepc,s2
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000255c:	10099073          	csrw	sstatus,s3

    }
    else{
        //Unexpected interrupt
    }
}
    80002560:	04c0006f          	j	800025ac <interruptHandler+0xf8>
        switch (code) {
    80002564:	04200713          	li	a4,66
    80002568:	02f76c63          	bltu	a4,a5,800025a0 <interruptHandler+0xec>
    8000256c:	00279793          	slli	a5,a5,0x2
    80002570:	00007717          	auipc	a4,0x7
    80002574:	b2870713          	addi	a4,a4,-1240 # 80009098 <_ZTV14PeriodicThread+0x30>
    80002578:	00e787b3          	add	a5,a5,a4
    8000257c:	0007a783          	lw	a5,0(a5)
    80002580:	00e787b3          	add	a5,a5,a4
    80002584:	00078067          	jr	a5
                addr=MemoryAllocator::getInstance().memAlloc(size);
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	850080e7          	jalr	-1968(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80002590:	000a0593          	mv	a1,s4
    80002594:	00000097          	auipc	ra,0x0
    80002598:	96c080e7          	jalr	-1684(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
                reg[10]=(uint64)addr;
    8000259c:	04a4b823          	sd	a0,80(s1)
		Riscv::w_sepc(sepc+4);
    800025a0:	00490913          	addi	s2,s2,4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800025a4:	14191073          	csrw	sepc,s2
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800025a8:	10099073          	csrw	sstatus,s3
}
    800025ac:	04813083          	ld	ra,72(sp)
    800025b0:	04013403          	ld	s0,64(sp)
    800025b4:	03813483          	ld	s1,56(sp)
    800025b8:	03013903          	ld	s2,48(sp)
    800025bc:	02813983          	ld	s3,40(sp)
    800025c0:	02013a03          	ld	s4,32(sp)
    800025c4:	05010113          	addi	sp,sp,80
    800025c8:	00008067          	ret
                returnValue=MemoryAllocator::getInstance().free(addr);
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	80c080e7          	jalr	-2036(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    800025d4:	000a0593          	mv	a1,s4
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	a04080e7          	jalr	-1532(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
                reg[10]=returnValue;
    800025e0:	04a4b823          	sd	a0,80(s1)
                break;
    800025e4:	fbdff06f          	j	800025a0 <interruptHandler+0xec>
                *handle_thread=(thread_t)TCB::create_thread(start_routine,arg,0);
    800025e8:	00000613          	li	a2,0
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	550080e7          	jalr	1360(ra) # 80001b3c <_ZN3TCB13create_threadEPFvPvES0_b>
    800025f4:	00aa3023          	sd	a0,0(s4)
                if(*handle_thread==nullptr) returnValue=-1;
    800025f8:	00050863          	beqz	a0,80002608 <interruptHandler+0x154>
                else returnValue=0;
    800025fc:	00000793          	li	a5,0
                reg[10]=returnValue;
    80002600:	04f4b823          	sd	a5,80(s1)
                break;
    80002604:	f9dff06f          	j	800025a0 <interruptHandler+0xec>
                if(*handle_thread==nullptr) returnValue=-1;
    80002608:	fff00793          	li	a5,-1
    8000260c:	ff5ff06f          	j	80002600 <interruptHandler+0x14c>
                returnValue=TCB::thread_exit();
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	660080e7          	jalr	1632(ra) # 80001c70 <_ZN3TCB11thread_exitEv>
                reg[10]=returnValue;
    80002618:	04a4b823          	sd	a0,80(s1)
                break;
    8000261c:	f85ff06f          	j	800025a0 <interruptHandler+0xec>
                TCB::timeSliceCounter=0;
    80002620:	00009797          	auipc	a5,0x9
    80002624:	2e07bc23          	sd	zero,760(a5) # 8000b918 <_ZN3TCB16timeSliceCounterE>
                sepc+=4;
    80002628:	00490493          	addi	s1,s2,4
                TCB::dispatch();
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	5a4080e7          	jalr	1444(ra) # 80001bd0 <_ZN3TCB8dispatchEv>
                Riscv::w_sepc(sepc+4);
    80002634:	00890913          	addi	s2,s2,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002638:	14191073          	csrw	sepc,s2
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000263c:	10099073          	csrw	sstatus,s3
                sepc+=4;
    80002640:	00048913          	mv	s2,s1
}
    80002644:	f5dff06f          	j	800025a0 <interruptHandler+0xec>
                *handle_sem=(sem_t)_Semaphore::create_semaphore(init);
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	f54080e7          	jalr	-172(ra) # 8000159c <_ZN10_Semaphore16create_semaphoreEm>
    80002650:	00aa3023          	sd	a0,0(s4)
                reg[10]=returnValue;
    80002654:	00100793          	li	a5,1
    80002658:	04f4b823          	sd	a5,80(s1)
                break;
    8000265c:	f45ff06f          	j	800025a0 <interruptHandler+0xec>
                delete sem;
    80002660:	000a1863          	bnez	s4,80002670 <interruptHandler+0x1bc>
                reg[10]=returnValue;
    80002664:	00100793          	li	a5,1
    80002668:	04f4b823          	sd	a5,80(s1)
                break;
    8000266c:	f35ff06f          	j	800025a0 <interruptHandler+0xec>
                delete sem;
    80002670:	000a0513          	mv	a0,s4
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	f84080e7          	jalr	-124(ra) # 800015f8 <_ZN10_SemaphoreD1Ev>
    void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	75c080e7          	jalr	1884(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80002684:	000a0593          	mv	a1,s4
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	954080e7          	jalr	-1708(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    80002690:	fd5ff06f          	j	80002664 <interruptHandler+0x1b0>
                sem->wait();
    80002694:	000a0513          	mv	a0,s4
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	250080e7          	jalr	592(ra) # 800018e8 <_ZN10_Semaphore4waitEv>
                break;
    800026a0:	f01ff06f          	j	800025a0 <interruptHandler+0xec>
                sem->signal();
    800026a4:	000a0513          	mv	a0,s4
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	26c080e7          	jalr	620(ra) # 80001914 <_ZN10_Semaphore6signalEv>
                break;
    800026b0:	ef1ff06f          	j	800025a0 <interruptHandler+0xec>
                sem->wait_n(n);
    800026b4:	00050593          	mv	a1,a0
    800026b8:	000a0513          	mv	a0,s4
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	11c080e7          	jalr	284(ra) # 800017d8 <_ZN10_Semaphore6wait_nEm>
                break;
    800026c4:	eddff06f          	j	800025a0 <interruptHandler+0xec>
                sem->signal_n(n);
    800026c8:	00050593          	mv	a1,a0
    800026cc:	000a0513          	mv	a0,s4
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	150080e7          	jalr	336(ra) # 80001820 <_ZN10_Semaphore8signal_nEm>
                break;
    800026d8:	ec9ff06f          	j	800025a0 <interruptHandler+0xec>
                TCB::time_sleep(time);
    800026dc:	000a0513          	mv	a0,s4
    800026e0:	fffff097          	auipc	ra,0xfffff
    800026e4:	610080e7          	jalr	1552(ra) # 80001cf0 <_ZN3TCB10time_sleepEm>
                sepc+=4;
    800026e8:	00490793          	addi	a5,s2,4
                Riscv::w_sepc(sepc+4);
    800026ec:	00890913          	addi	s2,s2,8
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800026f0:	14191073          	csrw	sepc,s2
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800026f4:	10099073          	csrw	sstatus,s3
                reg[10]=returnValue;
    800026f8:	00100713          	li	a4,1
    800026fc:	04e4b823          	sd	a4,80(s1)
                sepc+=4;
    80002700:	00078913          	mv	s2,a5
                break;
    80002704:	e9dff06f          	j	800025a0 <interruptHandler+0xec>
                returnValue=(uint64)_Console::getInstance().getc();
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	c78080e7          	jalr	-904(ra) # 80001380 <_ZN8_Console11getInstanceEv>
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	d2c080e7          	jalr	-724(ra) # 8000143c <_ZN8_Console4getcEv>
                reg[10]=returnValue;
    80002718:	04a4b823          	sd	a0,80(s1)
                break;
    8000271c:	e85ff06f          	j	800025a0 <interruptHandler+0xec>
                char c=(char)a1;
    80002720:	0ffa7a13          	andi	s4,s4,255
                _Console::getInstance().putc(c);
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	c5c080e7          	jalr	-932(ra) # 80001380 <_ZN8_Console11getInstanceEv>
    8000272c:	000a0593          	mv	a1,s4
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	cac080e7          	jalr	-852(ra) # 800013dc <_ZN8_Console4putcEc>
                break;
    80002738:	e69ff06f          	j	800025a0 <interruptHandler+0xec>
inline void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile("csrs sip, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000273c:	00200793          	li	a5,2
    80002740:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002744:	00009497          	auipc	s1,0x9
    80002748:	1d448493          	addi	s1,s1,468 # 8000b918 <_ZN3TCB16timeSliceCounterE>
    8000274c:	0004b783          	ld	a5,0(s1)
    80002750:	00178793          	addi	a5,a5,1
    80002754:	00f4b023          	sd	a5,0(s1)
        Scheduler::getInstance().updateSleep();
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	418080e7          	jalr	1048(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80002760:	00000097          	auipc	ra,0x0
    80002764:	660080e7          	jalr	1632(ra) # 80002dc0 <_ZN9Scheduler11updateSleepEv>
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002768:	00009797          	auipc	a5,0x9
    8000276c:	1b87b783          	ld	a5,440(a5) # 8000b920 <_ZN3TCB7runningE>
    uint64 getTimeSlice() const{ return timeSlice;}
    80002770:	0307b783          	ld	a5,48(a5)
    80002774:	0004b703          	ld	a4,0(s1)
    80002778:	00f77863          	bgeu	a4,a5,80002788 <interruptHandler+0x2d4>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000277c:	14191073          	csrw	sepc,s2
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002780:	10099073          	csrw	sstatus,s3
}
    80002784:	e29ff06f          	j	800025ac <interruptHandler+0xf8>
            TCB::timeSliceCounter=0;
    80002788:	00009797          	auipc	a5,0x9
    8000278c:	1807b823          	sd	zero,400(a5) # 8000b918 <_ZN3TCB16timeSliceCounterE>
            TCB::dispatch();
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	440080e7          	jalr	1088(ra) # 80001bd0 <_ZN3TCB8dispatchEv>
    80002798:	fe5ff06f          	j	8000277c <interruptHandler+0x2c8>
            _Console::getInstance().keyboardInterrupt();
    8000279c:	fffff097          	auipc	ra,0xfffff
    800027a0:	be4080e7          	jalr	-1052(ra) # 80001380 <_ZN8_Console11getInstanceEv>
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	d54080e7          	jalr	-684(ra) # 800014f8 <_ZN8_Console17keyboardInterruptEv>
    800027ac:	da1ff06f          	j	8000254c <interruptHandler+0x98>

00000000800027b0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/Riscv.hpp"

void Riscv::popSppSpie() {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc,ra");
    800027bc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800027c0:	10200073          	sret
}
    800027c4:	00813403          	ld	s0,8(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret

00000000800027d0 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

extern "C" void interrupt();

void* mem_alloc(size_t size) {
    800027d0:	ff010113          	addi	sp,sp,-16
    800027d4:	00813423          	sd	s0,8(sp)
    800027d8:	01010413          	addi	s0,sp,16
    uint64 code=0x01;
    void* returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (size) );
    800027dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    800027e0:	00100793          	li	a5,1
    800027e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800027e8:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    800027ec:	00050513          	mv	a0,a0
    return returnValue;
}
    800027f0:	00813403          	ld	s0,8(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret

00000000800027fc <_Z8mem_freePv>:

int mem_free(void* addr) {
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00813423          	sd	s0,8(sp)
    80002804:	01010413          	addi	s0,sp,16
    uint64 code=0x02;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0 " : : "r" (addr));
    80002808:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    8000280c:	00200793          	li	a5,2
    80002810:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002814:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002818:	00050513          	mv	a0,a0
    return returnValue;
}
    8000281c:	0005051b          	sext.w	a0,a0
    80002820:	00813403          	ld	s0,8(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create( thread_t* handle, void ( *start_routine)(void*), void* arg ){
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00813423          	sd	s0,8(sp)
    80002834:	01010413          	addi	s0,sp,16
    uint64 code=0x011;
    uint64 returnValue;
    __asm__ volatile("mv a3, %0" : : "r" (arg) );
    80002838:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine) );
    8000283c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle) );
    80002840:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    80002844:	01100793          	li	a5,17
    80002848:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000284c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002850:	00050513          	mv	a0,a0
    return returnValue;
}
    80002854:	0005051b          	sext.w	a0,a0
    80002858:	00813403          	ld	s0,8(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_Z11thread_exitv>:


int thread_exit(){
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00813423          	sd	s0,8(sp)
    8000286c:	01010413          	addi	s0,sp,16
    uint64 code=0x012;
	uint64 returnValue;
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    80002870:	01200793          	li	a5,18
    80002874:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002878:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    8000287c:	00050513          	mv	a0,a0
    return returnValue;
}
    80002880:	0005051b          	sext.w	a0,a0
    80002884:	00813403          	ld	s0,8(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00813423          	sd	s0,8(sp)
    80002898:	01010413          	addi	s0,sp,16
    uint64 code=0x013;
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    8000289c:	01300793          	li	a5,19
    800028a0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800028a4:	00000073          	ecall
}
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle,unsigned init){
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    uint64 code=0x021;
    uint64 returnValue;
    __asm__ volatile("mv a2, %0" : : "r" (init) );
    800028c0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle) );
    800028c4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    800028c8:	02100793          	li	a5,33
    800028cc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800028d0:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    800028d4:	00050513          	mv	a0,a0
    return returnValue;
}
    800028d8:	0005051b          	sext.w	a0,a0
    800028dc:	00813403          	ld	s0,8(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret

00000000800028e8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle){
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00813423          	sd	s0,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    uint64 code=0x022;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (handle) );
    800028f4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    800028f8:	02200793          	li	a5,34
    800028fc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002900:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002904:	00050513          	mv	a0,a0
    return returnValue;
}
    80002908:	0005051b          	sext.w	a0,a0
    8000290c:	00813403          	ld	s0,8(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00813423          	sd	s0,8(sp)
    80002920:	01010413          	addi	s0,sp,16
    uint64 code=0x023;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    80002924:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    80002928:	02300793          	li	a5,35
    8000292c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002930:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002934:	00050513          	mv	a0,a0
    return returnValue;
}
    80002938:	0005051b          	sext.w	a0,a0
    8000293c:	00813403          	ld	s0,8(sp)
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret

0000000080002948 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00813423          	sd	s0,8(sp)
    80002950:	01010413          	addi	s0,sp,16
    uint64 code=0x024;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    80002954:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    80002958:	02400793          	li	a5,36
    8000295c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002960:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002964:	00050513          	mv	a0,a0
    return returnValue;

}
    80002968:	0005051b          	sext.w	a0,a0
    8000296c:	00813403          	ld	s0,8(sp)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n){
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    uint64 code=0x025;
    uint64 returnValue;
    __asm__ volatile("mv a2, %0" : : "r" (n) );
    80002984:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    80002988:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    8000298c:	02500793          	li	a5,37
    80002990:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002994:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002998:	00050513          	mv	a0,a0
    return returnValue;

}
    8000299c:	0005051b          	sext.w	a0,a0
    800029a0:	00813403          	ld	s0,8(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n){
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00813423          	sd	s0,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    uint64 code=0x026;
    uint64 returnValue;
    __asm__ volatile("mv a2, %0" : : "r" (n) );
    800029b8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (id) );
    800029bc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    800029c0:	02600793          	li	a5,38
    800029c4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800029c8:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    800029cc:	00050513          	mv	a0,a0
    return returnValue;
}
    800029d0:	0005051b          	sext.w	a0,a0
    800029d4:	00813403          	ld	s0,8(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <_Z4getcv>:

char getc(){
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00813423          	sd	s0,8(sp)
    800029e8:	01010413          	addi	s0,sp,16
    uint64 code=0x41;
    char returnValue;
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    800029ec:	04100793          	li	a5,65
    800029f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800029f4:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    800029f8:	00050513          	mv	a0,a0
    return returnValue;
}
    800029fc:	0ff57513          	andi	a0,a0,255
    80002a00:	00813403          	ld	s0,8(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_Z4putcc>:

void putc(char c){
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813423          	sd	s0,8(sp)
    80002a14:	01010413          	addi	s0,sp,16
    uint64 code=0x42;
    __asm__ volatile("mv a1, %0" : : "r" (c) );
    80002a18:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    80002a1c:	04200793          	li	a5,66
    80002a20:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002a24:	00000073          	ecall
}
    80002a28:	00813403          	ld	s0,8(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret

0000000080002a34 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00813423          	sd	s0,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    uint64 code=0x31;
    uint64 returnValue;
    __asm__ volatile("mv a1, %0" : : "r" (t) );
    80002a40:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code) );
    80002a44:	03100793          	li	a5,49
    80002a48:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80002a4c:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r" (returnValue));
    80002a50:	00050513          	mv	a0,a0
    return returnValue;
}
    80002a54:	0005051b          	sext.w	a0,a0
    80002a58:	00813403          	ld	s0,8(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_Z11userWrapperPv>:
void outputThread(void* arg);

void dbg(char c);
extern "C" void interrupt();

void userWrapper(void* arg) {
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    userMain();
    80002a74:	00002097          	auipc	ra,0x2
    80002a78:	4f4080e7          	jalr	1268(ra) # 80004f68 <_Z8userMainv>
    //putc('A');
}
    80002a7c:	00813083          	ld	ra,8(sp)
    80002a80:	00013403          	ld	s0,0(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret

0000000080002a8c <main>:

int main(){
    80002a8c:	ff010113          	addi	sp,sp,-16
    80002a90:	00113423          	sd	ra,8(sp)
    80002a94:	00813023          	sd	s0,0(sp)
    80002a98:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw stvec, %0" : : "r" (&interrupt));
    80002a9c:	ffffe797          	auipc	a5,0xffffe
    80002aa0:	67478793          	addi	a5,a5,1652 # 80001110 <interrupt>
    80002aa4:	10579073          	csrw	stvec,a5

    //_Console& console = _Console::getInstance();
    //Scheduler& scheduler = Scheduler::getInstance();

    TCB* kernelThread=TCB::create_thread(nullptr,nullptr,1);
    80002aa8:	00100613          	li	a2,1
    80002aac:	00000593          	li	a1,0
    80002ab0:	00000513          	li	a0,0
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	088080e7          	jalr	136(ra) # 80001b3c <_ZN3TCB13create_threadEPFvPvES0_b>
    TCB::running=kernelThread;
    80002abc:	00009797          	auipc	a5,0x9
    80002ac0:	e6a7b223          	sd	a0,-412(a5) # 8000b920 <_ZN3TCB7runningE>
    TCB::create_thread(&outputThread,nullptr,1);
    80002ac4:	00100613          	li	a2,1
    80002ac8:	00000593          	li	a1,0
    80002acc:	fffff517          	auipc	a0,0xfffff
    80002ad0:	9b450513          	addi	a0,a0,-1612 # 80001480 <_Z12outputThreadPv>
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	068080e7          	jalr	104(ra) # 80001b3c <_ZN3TCB13create_threadEPFvPvES0_b>
    TCB::create_thread(&userWrapper,nullptr,0);
    80002adc:	00000613          	li	a2,0
    80002ae0:	00000593          	li	a1,0
    80002ae4:	00000517          	auipc	a0,0x0
    80002ae8:	f8050513          	addi	a0,a0,-128 # 80002a64 <_Z11userWrapperPv>
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	050080e7          	jalr	80(ra) # 80001b3c <_ZN3TCB13create_threadEPFvPvES0_b>
    uint64 getCounter()const {return counter;}
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	e1c7b783          	ld	a5,-484(a5) # 8000b910 <_ZN3TCB7counterE>

    //Riscv::ms_sstatus(Riscv::BitMaskSstatus::SSTATUS_SIE);

    while (TCB::running->getCounter() > 0) {
    80002afc:	00078863          	beqz	a5,80002b0c <main+0x80>
        TCB::yield();
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	14c080e7          	jalr	332(ra) # 80001c4c <_ZN3TCB5yieldEv>
    while (TCB::running->getCounter() > 0) {
    80002b08:	fedff06f          	j	80002af4 <main+0x68>
    }
    while (!_Console::getInstance().isOutputEmpty()) {
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	874080e7          	jalr	-1932(ra) # 80001380 <_ZN8_Console11getInstanceEv>
    bool isEmpty() const { return count==0; }
    80002b14:	21853783          	ld	a5,536(a0)
    80002b18:	00078863          	beqz	a5,80002b28 <main+0x9c>
        TCB::yield();
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	130080e7          	jalr	304(ra) # 80001c4c <_ZN3TCB5yieldEv>
    while (!_Console::getInstance().isOutputEmpty()) {
    80002b24:	fe9ff06f          	j	80002b0c <main+0x80>
    }
    *(volatile uint32*)0x100000 = 0x5555;
    80002b28:	00100737          	lui	a4,0x100
    80002b2c:	000057b7          	lui	a5,0x5
    80002b30:	5557879b          	addiw	a5,a5,1365
    80002b34:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
    return 0;
    80002b38:	00000513          	li	a0,0
    80002b3c:	00813083          	ld	ra,8(sp)
    80002b40:	00013403          	ld	s0,0(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret

0000000080002b4c <_ZN9SchedulerC1Ev>:
Scheduler& Scheduler::getInstance(){
    static Scheduler instance;
    return instance;
}

Scheduler::Scheduler(){}
    80002b4c:	ff010113          	addi	sp,sp,-16
    80002b50:	00813423          	sd	s0,8(sp)
    80002b54:	01010413          	addi	s0,sp,16
    List():head(0),tail(0){}
    80002b58:	00053023          	sd	zero,0(a0)
    80002b5c:	00053423          	sd	zero,8(a0)
#include "../h/MemoryAllocator.hpp"

template<typename T>
class PriorityQueue{
public:
    PriorityQueue():head(0){}
    80002b60:	00053823          	sd	zero,16(a0)
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN9Scheduler11getInstanceEv>:
    static Scheduler instance;
    80002b70:	00009797          	auipc	a5,0x9
    80002b74:	dc87c783          	lbu	a5,-568(a5) # 8000b938 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80002b78:	00078863          	beqz	a5,80002b88 <_ZN9Scheduler11getInstanceEv+0x18>
}
    80002b7c:	00009517          	auipc	a0,0x9
    80002b80:	08c50513          	addi	a0,a0,140 # 8000bc08 <_ZZN9Scheduler11getInstanceEvE8instance>
    80002b84:	00008067          	ret
Scheduler& Scheduler::getInstance(){
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00113423          	sd	ra,8(sp)
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	01010413          	addi	s0,sp,16
    static Scheduler instance;
    80002b98:	00009517          	auipc	a0,0x9
    80002b9c:	07050513          	addi	a0,a0,112 # 8000bc08 <_ZZN9Scheduler11getInstanceEvE8instance>
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	fac080e7          	jalr	-84(ra) # 80002b4c <_ZN9SchedulerC1Ev>
    80002ba8:	00100793          	li	a5,1
    80002bac:	00009717          	auipc	a4,0x9
    80002bb0:	d8f70623          	sb	a5,-628(a4) # 8000b938 <_ZGVZN9Scheduler11getInstanceEvE8instance>
}
    80002bb4:	00009517          	auipc	a0,0x9
    80002bb8:	05450513          	addi	a0,a0,84 # 8000bc08 <_ZZN9Scheduler11getInstanceEvE8instance>
    80002bbc:	00813083          	ld	ra,8(sp)
    80002bc0:	00013403          	ld	s0,0(sp)
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00008067          	ret

0000000080002bcc <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB* t){
    if(t!=nullptr) Scheduler::getInstance().ready.addFirst(t);
    80002bcc:	06050c63          	beqz	a0,80002c44 <_ZN9Scheduler3putEP3TCB+0x78>
void Scheduler::put(TCB* t){
    80002bd0:	fe010113          	addi	sp,sp,-32
    80002bd4:	00113c23          	sd	ra,24(sp)
    80002bd8:	00813823          	sd	s0,16(sp)
    80002bdc:	00913423          	sd	s1,8(sp)
    80002be0:	01213023          	sd	s2,0(sp)
    80002be4:	02010413          	addi	s0,sp,32
    80002be8:	00050493          	mv	s1,a0
    if(t!=nullptr) Scheduler::getInstance().ready.addFirst(t);
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	f84080e7          	jalr	-124(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80002bf4:	00050913          	mv	s2,a0
        void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	1e0080e7          	jalr	480(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80002c00:	01000593          	li	a1,16
    80002c04:	fffff097          	auipc	ra,0xfffff
    80002c08:	2fc080e7          	jalr	764(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
        Elem *elem=new Elem(data,head);
    80002c0c:	00093783          	ld	a5,0(s2)
        Elem(T* data,Elem *next):data(data),next(next){}
    80002c10:	00953023          	sd	s1,0(a0)
    80002c14:	00f53423          	sd	a5,8(a0)
        head=elem;
    80002c18:	00a93023          	sd	a0,0(s2)
        if(!tail) tail=head;
    80002c1c:	00893783          	ld	a5,8(s2)
    80002c20:	00078e63          	beqz	a5,80002c3c <_ZN9Scheduler3putEP3TCB+0x70>
}
    80002c24:	01813083          	ld	ra,24(sp)
    80002c28:	01013403          	ld	s0,16(sp)
    80002c2c:	00813483          	ld	s1,8(sp)
    80002c30:	00013903          	ld	s2,0(sp)
    80002c34:	02010113          	addi	sp,sp,32
    80002c38:	00008067          	ret
    80002c3c:	00a93423          	sd	a0,8(s2)
    80002c40:	fe5ff06f          	j	80002c24 <_ZN9Scheduler3putEP3TCB+0x58>
    80002c44:	00008067          	ret

0000000080002c48 <_ZN9Scheduler3getEv>:

TCB* Scheduler::get(){
    80002c48:	fe010113          	addi	sp,sp,-32
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	01213023          	sd	s2,0(sp)
    80002c5c:	02010413          	addi	s0,sp,32
    return Scheduler::getInstance().ready.removeLast();
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	f10080e7          	jalr	-240(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
        if(!head) {return 0;}
    80002c68:	00053483          	ld	s1,0(a0)
    80002c6c:	04048663          	beqz	s1,80002cb8 <_ZN9Scheduler3getEv+0x70>
        Elem* prev=0;
    80002c70:	00000793          	li	a5,0
        for(Elem* curr=head;curr && curr!=tail;curr=curr->next){
    80002c74:	00048c63          	beqz	s1,80002c8c <_ZN9Scheduler3getEv+0x44>
    80002c78:	00853703          	ld	a4,8(a0)
    80002c7c:	00e48863          	beq	s1,a4,80002c8c <_ZN9Scheduler3getEv+0x44>
            prev=curr;
    80002c80:	00048793          	mv	a5,s1
        for(Elem* curr=head;curr && curr!=tail;curr=curr->next){
    80002c84:	0084b483          	ld	s1,8(s1)
    80002c88:	fedff06f          	j	80002c74 <_ZN9Scheduler3getEv+0x2c>
        Elem *elem=tail;
    80002c8c:	00853903          	ld	s2,8(a0)
        if(prev) {prev->next=0;}
    80002c90:	04078263          	beqz	a5,80002cd4 <_ZN9Scheduler3getEv+0x8c>
    80002c94:	0007b423          	sd	zero,8(a5)
        tail=prev;
    80002c98:	00f53423          	sd	a5,8(a0)
        T* ret=elem->data;
    80002c9c:	00093483          	ld	s1,0(s2)
        delete elem;
    80002ca0:	00090c63          	beqz	s2,80002cb8 <_ZN9Scheduler3getEv+0x70>
        void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	134080e7          	jalr	308(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80002cac:	00090593          	mv	a1,s2
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	32c080e7          	jalr	812(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>

}
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	01813083          	ld	ra,24(sp)
    80002cc0:	01013403          	ld	s0,16(sp)
    80002cc4:	00813483          	ld	s1,8(sp)
    80002cc8:	00013903          	ld	s2,0(sp)
    80002ccc:	02010113          	addi	sp,sp,32
    80002cd0:	00008067          	ret
        else{  head=0; }
    80002cd4:	00053023          	sd	zero,0(a0)
    80002cd8:	fc1ff06f          	j	80002c98 <_ZN9Scheduler3getEv+0x50>

0000000080002cdc <_ZN9Scheduler8putSleepEP3TCB>:

void Scheduler::putSleep(TCB* t){
    if(t!=nullptr) Scheduler::getInstance().sleep.add(t);
    80002cdc:	0e050063          	beqz	a0,80002dbc <_ZN9Scheduler8putSleepEP3TCB+0xe0>
void Scheduler::putSleep(TCB* t){
    80002ce0:	fe010113          	addi	sp,sp,-32
    80002ce4:	00113c23          	sd	ra,24(sp)
    80002ce8:	00813823          	sd	s0,16(sp)
    80002cec:	00913423          	sd	s1,8(sp)
    80002cf0:	01213023          	sd	s2,0(sp)
    80002cf4:	02010413          	addi	s0,sp,32
    80002cf8:	00050493          	mv	s1,a0
    if(t!=nullptr) Scheduler::getInstance().sleep.add(t);
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	e74080e7          	jalr	-396(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
    80002d04:	00050913          	mv	s2,a0
private:
    struct Elem{
        T *data;
        Elem *next;
        Elem(T* data,Elem *next):data(data),next(next){}
        void* operator new(size_t n)   { return MemoryAllocator::getInstance().memAlloc(n); }
    80002d08:	fffff097          	auipc	ra,0xfffff
    80002d0c:	0d0080e7          	jalr	208(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80002d10:	01000593          	li	a1,16
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	1ec080e7          	jalr	492(ra) # 80001f00 <_ZN15MemoryAllocator8memAllocEm>
        Elem(T* data,Elem *next):data(data),next(next){}
    80002d1c:	00953023          	sd	s1,0(a0)
    80002d20:	00053423          	sd	zero,8(a0)
	time_t getSleepingTime() const {return sleepingTime;}
    80002d24:	0484b703          	ld	a4,72(s1)
        if (!head || sleepTime < head->data->getSleepingTime()) {
    80002d28:	01093783          	ld	a5,16(s2)
    80002d2c:	00078863          	beqz	a5,80002d3c <_ZN9Scheduler8putSleepEP3TCB+0x60>
    80002d30:	0007b683          	ld	a3,0(a5)
    80002d34:	0486b683          	ld	a3,72(a3)
    80002d38:	02d77e63          	bgeu	a4,a3,80002d74 <_ZN9Scheduler8putSleepEP3TCB+0x98>
            if (head) {
    80002d3c:	00078a63          	beqz	a5,80002d50 <_ZN9Scheduler8putSleepEP3TCB+0x74>
                head->data->setSleepingTime(head->data->getSleepingTime() - sleepTime);
    80002d40:	0007b683          	ld	a3,0(a5)
    80002d44:	0486b783          	ld	a5,72(a3)
    80002d48:	40e78733          	sub	a4,a5,a4
    void setSleepingTime(uint64 sleepingTime) {this->sleepingTime=sleepingTime;}
    80002d4c:	04e6b423          	sd	a4,72(a3)
            elem->next = head;
    80002d50:	01093783          	ld	a5,16(s2)
    80002d54:	00f53423          	sd	a5,8(a0)
            head = elem;
    80002d58:	00a93823          	sd	a0,16(s2)
}
    80002d5c:	01813083          	ld	ra,24(sp)
    80002d60:	01013403          	ld	s0,16(sp)
    80002d64:	00813483          	ld	s1,8(sp)
    80002d68:	00013903          	ld	s2,0(sp)
    80002d6c:	02010113          	addi	sp,sp,32
    80002d70:	00008067          	ret
            Elem *prev = nullptr;
    80002d74:	00000613          	li	a2,0
            while (curr && sleepTime >= curr->data->getSleepingTime()) {
    80002d78:	02078063          	beqz	a5,80002d98 <_ZN9Scheduler8putSleepEP3TCB+0xbc>
    80002d7c:	0007b683          	ld	a3,0(a5)
	time_t getSleepingTime() const {return sleepingTime;}
    80002d80:	0486b683          	ld	a3,72(a3)
    80002d84:	00d76a63          	bltu	a4,a3,80002d98 <_ZN9Scheduler8putSleepEP3TCB+0xbc>
                sleepTime -= curr->data->getSleepingTime();
    80002d88:	40d70733          	sub	a4,a4,a3
                prev = curr;
    80002d8c:	00078613          	mv	a2,a5
                curr = curr->next;
    80002d90:	0087b783          	ld	a5,8(a5)
            while (curr && sleepTime >= curr->data->getSleepingTime()) {
    80002d94:	fe5ff06f          	j	80002d78 <_ZN9Scheduler8putSleepEP3TCB+0x9c>
    void setSleepingTime(uint64 sleepingTime) {this->sleepingTime=sleepingTime;}
    80002d98:	04e4b423          	sd	a4,72(s1)
            prev->next = elem;
    80002d9c:	00a63423          	sd	a0,8(a2)
            elem->next = curr;
    80002da0:	00f53423          	sd	a5,8(a0)
            if (curr) {
    80002da4:	fa078ce3          	beqz	a5,80002d5c <_ZN9Scheduler8putSleepEP3TCB+0x80>
                curr->data->setSleepingTime(curr->data->getSleepingTime() - sleepTime);
    80002da8:	0007b683          	ld	a3,0(a5)
	time_t getSleepingTime() const {return sleepingTime;}
    80002dac:	0486b783          	ld	a5,72(a3)
    80002db0:	40e78733          	sub	a4,a5,a4
    void setSleepingTime(uint64 sleepingTime) {this->sleepingTime=sleepingTime;}
    80002db4:	04e6b423          	sd	a4,72(a3)
    80002db8:	fa5ff06f          	j	80002d5c <_ZN9Scheduler8putSleepEP3TCB+0x80>
    80002dbc:	00008067          	ret

0000000080002dc0 <_ZN9Scheduler11updateSleepEv>:

void Scheduler::updateSleep(){
    80002dc0:	fd010113          	addi	sp,sp,-48
    80002dc4:	02113423          	sd	ra,40(sp)
    80002dc8:	02813023          	sd	s0,32(sp)
    80002dcc:	00913c23          	sd	s1,24(sp)
    80002dd0:	01213823          	sd	s2,16(sp)
    80002dd4:	01313423          	sd	s3,8(sp)
    80002dd8:	03010413          	addi	s0,sp,48
    Scheduler& scheduler=getInstance();
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	d94080e7          	jalr	-620(ra) # 80002b70 <_ZN9Scheduler11getInstanceEv>
        return head ? false : true;
    80002de4:	01053783          	ld	a5,16(a0)
    if (scheduler.sleep.empty()) return;
    80002de8:	06078a63          	beqz	a5,80002e5c <_ZN9Scheduler11updateSleepEv+0x9c>
    80002dec:	00050993          	mv	s3,a0
        return head->data;
    80002df0:	0007b703          	ld	a4,0(a5)
	time_t getSleepingTime() const {return sleepingTime;}
    80002df4:	04873783          	ld	a5,72(a4)
    time_t cur = scheduler.sleep.peek()->getSleepingTime();
    if (cur > 0) scheduler.sleep.peek()->setSleepingTime(cur - 1);
    80002df8:	04078063          	beqz	a5,80002e38 <_ZN9Scheduler11updateSleepEv+0x78>
    80002dfc:	fff78793          	addi	a5,a5,-1
    void setSleepingTime(uint64 sleepingTime) {this->sleepingTime=sleepingTime;}
    80002e00:	04f73423          	sd	a5,72(a4)
    80002e04:	0340006f          	j	80002e38 <_ZN9Scheduler11updateSleepEv+0x78>
            head=head->next;
    80002e08:	0084b783          	ld	a5,8(s1)
    80002e0c:	00f9b823          	sd	a5,16(s3)
            T *ret=elem->data;
    80002e10:	0004b903          	ld	s2,0(s1)
        void  operator delete(void* p) { MemoryAllocator::getInstance().free(p); }
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	fc4080e7          	jalr	-60(ra) # 80001dd8 <_ZN15MemoryAllocator11getInstanceEv>
    80002e1c:	00048593          	mv	a1,s1
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	1bc080e7          	jalr	444(ra) # 80001fdc <_ZN15MemoryAllocator4freeEPv>
    while (TCB* t = scheduler.sleep.remove()) {
    80002e28:	02090a63          	beqz	s2,80002e5c <_ZN9Scheduler11updateSleepEv+0x9c>
        Scheduler::put(t);
    80002e2c:	00090513          	mv	a0,s2
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	d9c080e7          	jalr	-612(ra) # 80002bcc <_ZN9Scheduler3putEP3TCB>
        if (!head){
    80002e38:	0109b483          	ld	s1,16(s3)
    80002e3c:	00048c63          	beqz	s1,80002e54 <_ZN9Scheduler11updateSleepEv+0x94>
        if (head->data->getSleepingTime()==0) {
    80002e40:	0004b783          	ld	a5,0(s1)
	time_t getSleepingTime() const {return sleepingTime;}
    80002e44:	0487b783          	ld	a5,72(a5)
    80002e48:	fc0780e3          	beqz	a5,80002e08 <_ZN9Scheduler11updateSleepEv+0x48>
        return nullptr;
    80002e4c:	00000913          	li	s2,0
    80002e50:	fd9ff06f          	j	80002e28 <_ZN9Scheduler11updateSleepEv+0x68>
            return nullptr;
    80002e54:	00048913          	mv	s2,s1
    80002e58:	fd1ff06f          	j	80002e28 <_ZN9Scheduler11updateSleepEv+0x68>
    }
    80002e5c:	02813083          	ld	ra,40(sp)
    80002e60:	02013403          	ld	s0,32(sp)
    80002e64:	01813483          	ld	s1,24(sp)
    80002e68:	01013903          	ld	s2,16(sp)
    80002e6c:	00813983          	ld	s3,8(sp)
    80002e70:	03010113          	addi	sp,sp,48
    80002e74:	00008067          	ret

0000000080002e78 <_Z3dbgc>:
#include "../h/syscall_c.hpp"
#include "../h/Riscv.hpp"

void dbg(char c) {
    80002e78:	ff010113          	addi	sp,sp,-16
    80002e7c:	00813423          	sd	s0,8(sp)
    80002e80:	01010413          	addi	s0,sp,16
    while (!(*(volatile char*)CONSOLE_STATUS & (1 << 5))) ;
    80002e84:	00006797          	auipc	a5,0x6
    80002e88:	18c7b783          	ld	a5,396(a5) # 80009010 <CONSOLE_STATUS>
    80002e8c:	0007c783          	lbu	a5,0(a5)
    80002e90:	0ff7f793          	andi	a5,a5,255
    80002e94:	0207f793          	andi	a5,a5,32
    80002e98:	fe0786e3          	beqz	a5,80002e84 <_Z3dbgc+0xc>
    *(volatile char*)CONSOLE_TX_DATA = c;
    80002e9c:	00006797          	auipc	a5,0x6
    80002ea0:	16c7b783          	ld	a5,364(a5) # 80009008 <CONSOLE_TX_DATA>
    80002ea4:	00a78023          	sb	a0,0(a5)
}
    80002ea8:	00813403          	ld	s0,8(sp)
    80002eac:	01010113          	addi	sp,sp,16
    80002eb0:	00008067          	ret

0000000080002eb4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00913423          	sd	s1,8(sp)
    80002ec4:	01213023          	sd	s2,0(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002ed0:	00100793          	li	a5,1
    80002ed4:	02a7f863          	bgeu	a5,a0,80002f04 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002ed8:	00a00793          	li	a5,10
    80002edc:	02f577b3          	remu	a5,a0,a5
    80002ee0:	02078e63          	beqz	a5,80002f1c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002ee4:	fff48513          	addi	a0,s1,-1
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	fcc080e7          	jalr	-52(ra) # 80002eb4 <_ZL9fibonaccim>
    80002ef0:	00050913          	mv	s2,a0
    80002ef4:	ffe48513          	addi	a0,s1,-2
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	fbc080e7          	jalr	-68(ra) # 80002eb4 <_ZL9fibonaccim>
    80002f00:	00a90533          	add	a0,s2,a0
}
    80002f04:	01813083          	ld	ra,24(sp)
    80002f08:	01013403          	ld	s0,16(sp)
    80002f0c:	00813483          	ld	s1,8(sp)
    80002f10:	00013903          	ld	s2,0(sp)
    80002f14:	02010113          	addi	sp,sp,32
    80002f18:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	974080e7          	jalr	-1676(ra) # 80002890 <_Z15thread_dispatchv>
    80002f24:	fc1ff06f          	j	80002ee4 <_ZL9fibonaccim+0x30>

0000000080002f28 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80002f28:	fe010113          	addi	sp,sp,-32
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	01213023          	sd	s2,0(sp)
    80002f3c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002f40:	00a00493          	li	s1,10
    80002f44:	0400006f          	j	80002f84 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002f48:	00006517          	auipc	a0,0x6
    80002f4c:	26050513          	addi	a0,a0,608 # 800091a8 <_ZTV14PeriodicThread+0x140>
    80002f50:	00002097          	auipc	ra,0x2
    80002f54:	d48080e7          	jalr	-696(ra) # 80004c98 <_Z11printStringPKc>
    80002f58:	00000613          	li	a2,0
    80002f5c:	00a00593          	li	a1,10
    80002f60:	00048513          	mv	a0,s1
    80002f64:	00002097          	auipc	ra,0x2
    80002f68:	ee4080e7          	jalr	-284(ra) # 80004e48 <_Z8printIntiii>
    80002f6c:	00006517          	auipc	a0,0x6
    80002f70:	67450513          	addi	a0,a0,1652 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80002f74:	00002097          	auipc	ra,0x2
    80002f78:	d24080e7          	jalr	-732(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002f7c:	0014849b          	addiw	s1,s1,1
    80002f80:	0ff4f493          	andi	s1,s1,255
    80002f84:	00c00793          	li	a5,12
    80002f88:	fc97f0e3          	bgeu	a5,s1,80002f48 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	22450513          	addi	a0,a0,548 # 800091b0 <_ZTV14PeriodicThread+0x148>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	d04080e7          	jalr	-764(ra) # 80004c98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002f9c:	00500313          	li	t1,5
    thread_dispatch();
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	8f0080e7          	jalr	-1808(ra) # 80002890 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002fa8:	01000513          	li	a0,16
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	f08080e7          	jalr	-248(ra) # 80002eb4 <_ZL9fibonaccim>
    80002fb4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002fb8:	00006517          	auipc	a0,0x6
    80002fbc:	20850513          	addi	a0,a0,520 # 800091c0 <_ZTV14PeriodicThread+0x158>
    80002fc0:	00002097          	auipc	ra,0x2
    80002fc4:	cd8080e7          	jalr	-808(ra) # 80004c98 <_Z11printStringPKc>
    80002fc8:	00000613          	li	a2,0
    80002fcc:	00a00593          	li	a1,10
    80002fd0:	0009051b          	sext.w	a0,s2
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	e74080e7          	jalr	-396(ra) # 80004e48 <_Z8printIntiii>
    80002fdc:	00006517          	auipc	a0,0x6
    80002fe0:	60450513          	addi	a0,a0,1540 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80002fe4:	00002097          	auipc	ra,0x2
    80002fe8:	cb4080e7          	jalr	-844(ra) # 80004c98 <_Z11printStringPKc>
    80002fec:	0400006f          	j	8000302c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002ff0:	00006517          	auipc	a0,0x6
    80002ff4:	1b850513          	addi	a0,a0,440 # 800091a8 <_ZTV14PeriodicThread+0x140>
    80002ff8:	00002097          	auipc	ra,0x2
    80002ffc:	ca0080e7          	jalr	-864(ra) # 80004c98 <_Z11printStringPKc>
    80003000:	00000613          	li	a2,0
    80003004:	00a00593          	li	a1,10
    80003008:	00048513          	mv	a0,s1
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	e3c080e7          	jalr	-452(ra) # 80004e48 <_Z8printIntiii>
    80003014:	00006517          	auipc	a0,0x6
    80003018:	5cc50513          	addi	a0,a0,1484 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	c7c080e7          	jalr	-900(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003024:	0014849b          	addiw	s1,s1,1
    80003028:	0ff4f493          	andi	s1,s1,255
    8000302c:	00f00793          	li	a5,15
    80003030:	fc97f0e3          	bgeu	a5,s1,80002ff0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003034:	00006517          	auipc	a0,0x6
    80003038:	19c50513          	addi	a0,a0,412 # 800091d0 <_ZTV14PeriodicThread+0x168>
    8000303c:	00002097          	auipc	ra,0x2
    80003040:	c5c080e7          	jalr	-932(ra) # 80004c98 <_Z11printStringPKc>
    finishedD = true;
    80003044:	00100793          	li	a5,1
    80003048:	00009717          	auipc	a4,0x9
    8000304c:	8ef70c23          	sb	a5,-1800(a4) # 8000b940 <_ZL9finishedD>
    thread_dispatch();
    80003050:	00000097          	auipc	ra,0x0
    80003054:	840080e7          	jalr	-1984(ra) # 80002890 <_Z15thread_dispatchv>
}
    80003058:	01813083          	ld	ra,24(sp)
    8000305c:	01013403          	ld	s0,16(sp)
    80003060:	00813483          	ld	s1,8(sp)
    80003064:	00013903          	ld	s2,0(sp)
    80003068:	02010113          	addi	sp,sp,32
    8000306c:	00008067          	ret

0000000080003070 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003070:	fe010113          	addi	sp,sp,-32
    80003074:	00113c23          	sd	ra,24(sp)
    80003078:	00813823          	sd	s0,16(sp)
    8000307c:	00913423          	sd	s1,8(sp)
    80003080:	01213023          	sd	s2,0(sp)
    80003084:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003088:	00000493          	li	s1,0
    8000308c:	0400006f          	j	800030cc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003090:	00006517          	auipc	a0,0x6
    80003094:	15050513          	addi	a0,a0,336 # 800091e0 <_ZTV14PeriodicThread+0x178>
    80003098:	00002097          	auipc	ra,0x2
    8000309c:	c00080e7          	jalr	-1024(ra) # 80004c98 <_Z11printStringPKc>
    800030a0:	00000613          	li	a2,0
    800030a4:	00a00593          	li	a1,10
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	d9c080e7          	jalr	-612(ra) # 80004e48 <_Z8printIntiii>
    800030b4:	00006517          	auipc	a0,0x6
    800030b8:	52c50513          	addi	a0,a0,1324 # 800095e0 <_ZTV12ConsumerSync+0x168>
    800030bc:	00002097          	auipc	ra,0x2
    800030c0:	bdc080e7          	jalr	-1060(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800030c4:	0014849b          	addiw	s1,s1,1
    800030c8:	0ff4f493          	andi	s1,s1,255
    800030cc:	00200793          	li	a5,2
    800030d0:	fc97f0e3          	bgeu	a5,s1,80003090 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800030d4:	00006517          	auipc	a0,0x6
    800030d8:	11450513          	addi	a0,a0,276 # 800091e8 <_ZTV14PeriodicThread+0x180>
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	bbc080e7          	jalr	-1092(ra) # 80004c98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800030e4:	00700313          	li	t1,7
    thread_dispatch();
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	7a8080e7          	jalr	1960(ra) # 80002890 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800030f0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800030f4:	00006517          	auipc	a0,0x6
    800030f8:	10450513          	addi	a0,a0,260 # 800091f8 <_ZTV14PeriodicThread+0x190>
    800030fc:	00002097          	auipc	ra,0x2
    80003100:	b9c080e7          	jalr	-1124(ra) # 80004c98 <_Z11printStringPKc>
    80003104:	00000613          	li	a2,0
    80003108:	00a00593          	li	a1,10
    8000310c:	0009051b          	sext.w	a0,s2
    80003110:	00002097          	auipc	ra,0x2
    80003114:	d38080e7          	jalr	-712(ra) # 80004e48 <_Z8printIntiii>
    80003118:	00006517          	auipc	a0,0x6
    8000311c:	4c850513          	addi	a0,a0,1224 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003120:	00002097          	auipc	ra,0x2
    80003124:	b78080e7          	jalr	-1160(ra) # 80004c98 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003128:	00c00513          	li	a0,12
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	d88080e7          	jalr	-632(ra) # 80002eb4 <_ZL9fibonaccim>
    80003134:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003138:	00006517          	auipc	a0,0x6
    8000313c:	0c850513          	addi	a0,a0,200 # 80009200 <_ZTV14PeriodicThread+0x198>
    80003140:	00002097          	auipc	ra,0x2
    80003144:	b58080e7          	jalr	-1192(ra) # 80004c98 <_Z11printStringPKc>
    80003148:	00000613          	li	a2,0
    8000314c:	00a00593          	li	a1,10
    80003150:	0009051b          	sext.w	a0,s2
    80003154:	00002097          	auipc	ra,0x2
    80003158:	cf4080e7          	jalr	-780(ra) # 80004e48 <_Z8printIntiii>
    8000315c:	00006517          	auipc	a0,0x6
    80003160:	48450513          	addi	a0,a0,1156 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003164:	00002097          	auipc	ra,0x2
    80003168:	b34080e7          	jalr	-1228(ra) # 80004c98 <_Z11printStringPKc>
    8000316c:	0400006f          	j	800031ac <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	07050513          	addi	a0,a0,112 # 800091e0 <_ZTV14PeriodicThread+0x178>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	b20080e7          	jalr	-1248(ra) # 80004c98 <_Z11printStringPKc>
    80003180:	00000613          	li	a2,0
    80003184:	00a00593          	li	a1,10
    80003188:	00048513          	mv	a0,s1
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	cbc080e7          	jalr	-836(ra) # 80004e48 <_Z8printIntiii>
    80003194:	00006517          	auipc	a0,0x6
    80003198:	44c50513          	addi	a0,a0,1100 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000319c:	00002097          	auipc	ra,0x2
    800031a0:	afc080e7          	jalr	-1284(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800031a4:	0014849b          	addiw	s1,s1,1
    800031a8:	0ff4f493          	andi	s1,s1,255
    800031ac:	00500793          	li	a5,5
    800031b0:	fc97f0e3          	bgeu	a5,s1,80003170 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800031b4:	00006517          	auipc	a0,0x6
    800031b8:	05c50513          	addi	a0,a0,92 # 80009210 <_ZTV14PeriodicThread+0x1a8>
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	adc080e7          	jalr	-1316(ra) # 80004c98 <_Z11printStringPKc>
    finishedC = true;
    800031c4:	00100793          	li	a5,1
    800031c8:	00008717          	auipc	a4,0x8
    800031cc:	76f70ca3          	sb	a5,1913(a4) # 8000b941 <_ZL9finishedC>
    thread_dispatch();
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	6c0080e7          	jalr	1728(ra) # 80002890 <_Z15thread_dispatchv>
}
    800031d8:	01813083          	ld	ra,24(sp)
    800031dc:	01013403          	ld	s0,16(sp)
    800031e0:	00813483          	ld	s1,8(sp)
    800031e4:	00013903          	ld	s2,0(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret

00000000800031f0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00813823          	sd	s0,16(sp)
    800031fc:	00913423          	sd	s1,8(sp)
    80003200:	01213023          	sd	s2,0(sp)
    80003204:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003208:	00000913          	li	s2,0
    8000320c:	0400006f          	j	8000324c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	680080e7          	jalr	1664(ra) # 80002890 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003218:	00148493          	addi	s1,s1,1
    8000321c:	000027b7          	lui	a5,0x2
    80003220:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003224:	0097ee63          	bltu	a5,s1,80003240 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003228:	00000713          	li	a4,0
    8000322c:	000077b7          	lui	a5,0x7
    80003230:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003234:	fce7eee3          	bltu	a5,a4,80003210 <_ZL11workerBodyBPv+0x20>
    80003238:	00170713          	addi	a4,a4,1
    8000323c:	ff1ff06f          	j	8000322c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80003240:	00a00793          	li	a5,10
    80003244:	04f90663          	beq	s2,a5,80003290 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80003248:	00190913          	addi	s2,s2,1
    8000324c:	00f00793          	li	a5,15
    80003250:	0527e463          	bltu	a5,s2,80003298 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80003254:	00006517          	auipc	a0,0x6
    80003258:	fcc50513          	addi	a0,a0,-52 # 80009220 <_ZTV14PeriodicThread+0x1b8>
    8000325c:	00002097          	auipc	ra,0x2
    80003260:	a3c080e7          	jalr	-1476(ra) # 80004c98 <_Z11printStringPKc>
    80003264:	00000613          	li	a2,0
    80003268:	00a00593          	li	a1,10
    8000326c:	0009051b          	sext.w	a0,s2
    80003270:	00002097          	auipc	ra,0x2
    80003274:	bd8080e7          	jalr	-1064(ra) # 80004e48 <_Z8printIntiii>
    80003278:	00006517          	auipc	a0,0x6
    8000327c:	36850513          	addi	a0,a0,872 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003280:	00002097          	auipc	ra,0x2
    80003284:	a18080e7          	jalr	-1512(ra) # 80004c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003288:	00000493          	li	s1,0
    8000328c:	f91ff06f          	j	8000321c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80003290:	14102ff3          	csrr	t6,sepc
    80003294:	fb5ff06f          	j	80003248 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	f9050513          	addi	a0,a0,-112 # 80009228 <_ZTV14PeriodicThread+0x1c0>
    800032a0:	00002097          	auipc	ra,0x2
    800032a4:	9f8080e7          	jalr	-1544(ra) # 80004c98 <_Z11printStringPKc>
    finishedB = true;
    800032a8:	00100793          	li	a5,1
    800032ac:	00008717          	auipc	a4,0x8
    800032b0:	68f70b23          	sb	a5,1686(a4) # 8000b942 <_ZL9finishedB>
    thread_dispatch();
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	5dc080e7          	jalr	1500(ra) # 80002890 <_Z15thread_dispatchv>
}
    800032bc:	01813083          	ld	ra,24(sp)
    800032c0:	01013403          	ld	s0,16(sp)
    800032c4:	00813483          	ld	s1,8(sp)
    800032c8:	00013903          	ld	s2,0(sp)
    800032cc:	02010113          	addi	sp,sp,32
    800032d0:	00008067          	ret

00000000800032d4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00813823          	sd	s0,16(sp)
    800032e0:	00913423          	sd	s1,8(sp)
    800032e4:	01213023          	sd	s2,0(sp)
    800032e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800032ec:	00000913          	li	s2,0
    800032f0:	0380006f          	j	80003328 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	59c080e7          	jalr	1436(ra) # 80002890 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032fc:	00148493          	addi	s1,s1,1
    80003300:	000027b7          	lui	a5,0x2
    80003304:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003308:	0097ee63          	bltu	a5,s1,80003324 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000330c:	00000713          	li	a4,0
    80003310:	000077b7          	lui	a5,0x7
    80003314:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003318:	fce7eee3          	bltu	a5,a4,800032f4 <_ZL11workerBodyAPv+0x20>
    8000331c:	00170713          	addi	a4,a4,1
    80003320:	ff1ff06f          	j	80003310 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003324:	00190913          	addi	s2,s2,1
    80003328:	00900793          	li	a5,9
    8000332c:	0527e063          	bltu	a5,s2,8000336c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003330:	00006517          	auipc	a0,0x6
    80003334:	f0850513          	addi	a0,a0,-248 # 80009238 <_ZTV14PeriodicThread+0x1d0>
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	960080e7          	jalr	-1696(ra) # 80004c98 <_Z11printStringPKc>
    80003340:	00000613          	li	a2,0
    80003344:	00a00593          	li	a1,10
    80003348:	0009051b          	sext.w	a0,s2
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	afc080e7          	jalr	-1284(ra) # 80004e48 <_Z8printIntiii>
    80003354:	00006517          	auipc	a0,0x6
    80003358:	28c50513          	addi	a0,a0,652 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	93c080e7          	jalr	-1732(ra) # 80004c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003364:	00000493          	li	s1,0
    80003368:	f99ff06f          	j	80003300 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000336c:	00006517          	auipc	a0,0x6
    80003370:	ea450513          	addi	a0,a0,-348 # 80009210 <_ZTV14PeriodicThread+0x1a8>
    80003374:	00002097          	auipc	ra,0x2
    80003378:	924080e7          	jalr	-1756(ra) # 80004c98 <_Z11printStringPKc>
    finishedA = true;
    8000337c:	00100793          	li	a5,1
    80003380:	00008717          	auipc	a4,0x8
    80003384:	5cf701a3          	sb	a5,1475(a4) # 8000b943 <_ZL9finishedA>
}
    80003388:	01813083          	ld	ra,24(sp)
    8000338c:	01013403          	ld	s0,16(sp)
    80003390:	00813483          	ld	s1,8(sp)
    80003394:	00013903          	ld	s2,0(sp)
    80003398:	02010113          	addi	sp,sp,32
    8000339c:	00008067          	ret

00000000800033a0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800033a0:	fd010113          	addi	sp,sp,-48
    800033a4:	02113423          	sd	ra,40(sp)
    800033a8:	02813023          	sd	s0,32(sp)
    800033ac:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800033b0:	00000613          	li	a2,0
    800033b4:	00000597          	auipc	a1,0x0
    800033b8:	f2058593          	addi	a1,a1,-224 # 800032d4 <_ZL11workerBodyAPv>
    800033bc:	fd040513          	addi	a0,s0,-48
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	46c080e7          	jalr	1132(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800033c8:	00006517          	auipc	a0,0x6
    800033cc:	e7850513          	addi	a0,a0,-392 # 80009240 <_ZTV14PeriodicThread+0x1d8>
    800033d0:	00002097          	auipc	ra,0x2
    800033d4:	8c8080e7          	jalr	-1848(ra) # 80004c98 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800033d8:	00000613          	li	a2,0
    800033dc:	00000597          	auipc	a1,0x0
    800033e0:	e1458593          	addi	a1,a1,-492 # 800031f0 <_ZL11workerBodyBPv>
    800033e4:	fd840513          	addi	a0,s0,-40
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	444080e7          	jalr	1092(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	e6850513          	addi	a0,a0,-408 # 80009258 <_ZTV14PeriodicThread+0x1f0>
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	8a0080e7          	jalr	-1888(ra) # 80004c98 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003400:	00000613          	li	a2,0
    80003404:	00000597          	auipc	a1,0x0
    80003408:	c6c58593          	addi	a1,a1,-916 # 80003070 <_ZL11workerBodyCPv>
    8000340c:	fe040513          	addi	a0,s0,-32
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	41c080e7          	jalr	1052(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80003418:	00006517          	auipc	a0,0x6
    8000341c:	e5850513          	addi	a0,a0,-424 # 80009270 <_ZTV14PeriodicThread+0x208>
    80003420:	00002097          	auipc	ra,0x2
    80003424:	878080e7          	jalr	-1928(ra) # 80004c98 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003428:	00000613          	li	a2,0
    8000342c:	00000597          	auipc	a1,0x0
    80003430:	afc58593          	addi	a1,a1,-1284 # 80002f28 <_ZL11workerBodyDPv>
    80003434:	fe840513          	addi	a0,s0,-24
    80003438:	fffff097          	auipc	ra,0xfffff
    8000343c:	3f4080e7          	jalr	1012(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003440:	00006517          	auipc	a0,0x6
    80003444:	e4850513          	addi	a0,a0,-440 # 80009288 <_ZTV14PeriodicThread+0x220>
    80003448:	00002097          	auipc	ra,0x2
    8000344c:	850080e7          	jalr	-1968(ra) # 80004c98 <_Z11printStringPKc>
    80003450:	00c0006f          	j	8000345c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	43c080e7          	jalr	1084(ra) # 80002890 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000345c:	00008797          	auipc	a5,0x8
    80003460:	4e77c783          	lbu	a5,1255(a5) # 8000b943 <_ZL9finishedA>
    80003464:	fe0788e3          	beqz	a5,80003454 <_Z16System_Mode_testv+0xb4>
    80003468:	00008797          	auipc	a5,0x8
    8000346c:	4da7c783          	lbu	a5,1242(a5) # 8000b942 <_ZL9finishedB>
    80003470:	fe0782e3          	beqz	a5,80003454 <_Z16System_Mode_testv+0xb4>
    80003474:	00008797          	auipc	a5,0x8
    80003478:	4cd7c783          	lbu	a5,1229(a5) # 8000b941 <_ZL9finishedC>
    8000347c:	fc078ce3          	beqz	a5,80003454 <_Z16System_Mode_testv+0xb4>
    80003480:	00008797          	auipc	a5,0x8
    80003484:	4c07c783          	lbu	a5,1216(a5) # 8000b940 <_ZL9finishedD>
    80003488:	fc0786e3          	beqz	a5,80003454 <_Z16System_Mode_testv+0xb4>
    }

}
    8000348c:	02813083          	ld	ra,40(sp)
    80003490:	02013403          	ld	s0,32(sp)
    80003494:	03010113          	addi	sp,sp,48
    80003498:	00008067          	ret

000000008000349c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00113c23          	sd	ra,24(sp)
    800034a4:	00813823          	sd	s0,16(sp)
    800034a8:	00913423          	sd	s1,8(sp)
    800034ac:	01213023          	sd	s2,0(sp)
    800034b0:	02010413          	addi	s0,sp,32
    800034b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800034b8:	00100793          	li	a5,1
    800034bc:	02a7f863          	bgeu	a5,a0,800034ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800034c0:	00a00793          	li	a5,10
    800034c4:	02f577b3          	remu	a5,a0,a5
    800034c8:	02078e63          	beqz	a5,80003504 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800034cc:	fff48513          	addi	a0,s1,-1
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	fcc080e7          	jalr	-52(ra) # 8000349c <_ZL9fibonaccim>
    800034d8:	00050913          	mv	s2,a0
    800034dc:	ffe48513          	addi	a0,s1,-2
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	fbc080e7          	jalr	-68(ra) # 8000349c <_ZL9fibonaccim>
    800034e8:	00a90533          	add	a0,s2,a0
}
    800034ec:	01813083          	ld	ra,24(sp)
    800034f0:	01013403          	ld	s0,16(sp)
    800034f4:	00813483          	ld	s1,8(sp)
    800034f8:	00013903          	ld	s2,0(sp)
    800034fc:	02010113          	addi	sp,sp,32
    80003500:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003504:	fffff097          	auipc	ra,0xfffff
    80003508:	38c080e7          	jalr	908(ra) # 80002890 <_Z15thread_dispatchv>
    8000350c:	fc1ff06f          	j	800034cc <_ZL9fibonaccim+0x30>

0000000080003510 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	01213023          	sd	s2,0(sp)
    80003524:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003528:	00a00493          	li	s1,10
    8000352c:	0400006f          	j	8000356c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003530:	00006517          	auipc	a0,0x6
    80003534:	c7850513          	addi	a0,a0,-904 # 800091a8 <_ZTV14PeriodicThread+0x140>
    80003538:	00001097          	auipc	ra,0x1
    8000353c:	760080e7          	jalr	1888(ra) # 80004c98 <_Z11printStringPKc>
    80003540:	00000613          	li	a2,0
    80003544:	00a00593          	li	a1,10
    80003548:	00048513          	mv	a0,s1
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	8fc080e7          	jalr	-1796(ra) # 80004e48 <_Z8printIntiii>
    80003554:	00006517          	auipc	a0,0x6
    80003558:	08c50513          	addi	a0,a0,140 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000355c:	00001097          	auipc	ra,0x1
    80003560:	73c080e7          	jalr	1852(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003564:	0014849b          	addiw	s1,s1,1
    80003568:	0ff4f493          	andi	s1,s1,255
    8000356c:	00c00793          	li	a5,12
    80003570:	fc97f0e3          	bgeu	a5,s1,80003530 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003574:	00006517          	auipc	a0,0x6
    80003578:	c3c50513          	addi	a0,a0,-964 # 800091b0 <_ZTV14PeriodicThread+0x148>
    8000357c:	00001097          	auipc	ra,0x1
    80003580:	71c080e7          	jalr	1820(ra) # 80004c98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003584:	00500313          	li	t1,5
    thread_dispatch();
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	308080e7          	jalr	776(ra) # 80002890 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003590:	01000513          	li	a0,16
    80003594:	00000097          	auipc	ra,0x0
    80003598:	f08080e7          	jalr	-248(ra) # 8000349c <_ZL9fibonaccim>
    8000359c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	c2050513          	addi	a0,a0,-992 # 800091c0 <_ZTV14PeriodicThread+0x158>
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	6f0080e7          	jalr	1776(ra) # 80004c98 <_Z11printStringPKc>
    800035b0:	00000613          	li	a2,0
    800035b4:	00a00593          	li	a1,10
    800035b8:	0009051b          	sext.w	a0,s2
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	88c080e7          	jalr	-1908(ra) # 80004e48 <_Z8printIntiii>
    800035c4:	00006517          	auipc	a0,0x6
    800035c8:	01c50513          	addi	a0,a0,28 # 800095e0 <_ZTV12ConsumerSync+0x168>
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	6cc080e7          	jalr	1740(ra) # 80004c98 <_Z11printStringPKc>
    800035d4:	0400006f          	j	80003614 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800035d8:	00006517          	auipc	a0,0x6
    800035dc:	bd050513          	addi	a0,a0,-1072 # 800091a8 <_ZTV14PeriodicThread+0x140>
    800035e0:	00001097          	auipc	ra,0x1
    800035e4:	6b8080e7          	jalr	1720(ra) # 80004c98 <_Z11printStringPKc>
    800035e8:	00000613          	li	a2,0
    800035ec:	00a00593          	li	a1,10
    800035f0:	00048513          	mv	a0,s1
    800035f4:	00002097          	auipc	ra,0x2
    800035f8:	854080e7          	jalr	-1964(ra) # 80004e48 <_Z8printIntiii>
    800035fc:	00006517          	auipc	a0,0x6
    80003600:	fe450513          	addi	a0,a0,-28 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003604:	00001097          	auipc	ra,0x1
    80003608:	694080e7          	jalr	1684(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000360c:	0014849b          	addiw	s1,s1,1
    80003610:	0ff4f493          	andi	s1,s1,255
    80003614:	00f00793          	li	a5,15
    80003618:	fc97f0e3          	bgeu	a5,s1,800035d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	bb450513          	addi	a0,a0,-1100 # 800091d0 <_ZTV14PeriodicThread+0x168>
    80003624:	00001097          	auipc	ra,0x1
    80003628:	674080e7          	jalr	1652(ra) # 80004c98 <_Z11printStringPKc>
    finishedD = true;
    8000362c:	00100793          	li	a5,1
    80003630:	00008717          	auipc	a4,0x8
    80003634:	30f70a23          	sb	a5,788(a4) # 8000b944 <_ZL9finishedD>
    thread_dispatch();
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	258080e7          	jalr	600(ra) # 80002890 <_Z15thread_dispatchv>
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	00013903          	ld	s2,0(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret

0000000080003658 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003658:	fe010113          	addi	sp,sp,-32
    8000365c:	00113c23          	sd	ra,24(sp)
    80003660:	00813823          	sd	s0,16(sp)
    80003664:	00913423          	sd	s1,8(sp)
    80003668:	01213023          	sd	s2,0(sp)
    8000366c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003670:	00000493          	li	s1,0
    80003674:	0400006f          	j	800036b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	b6850513          	addi	a0,a0,-1176 # 800091e0 <_ZTV14PeriodicThread+0x178>
    80003680:	00001097          	auipc	ra,0x1
    80003684:	618080e7          	jalr	1560(ra) # 80004c98 <_Z11printStringPKc>
    80003688:	00000613          	li	a2,0
    8000368c:	00a00593          	li	a1,10
    80003690:	00048513          	mv	a0,s1
    80003694:	00001097          	auipc	ra,0x1
    80003698:	7b4080e7          	jalr	1972(ra) # 80004e48 <_Z8printIntiii>
    8000369c:	00006517          	auipc	a0,0x6
    800036a0:	f4450513          	addi	a0,a0,-188 # 800095e0 <_ZTV12ConsumerSync+0x168>
    800036a4:	00001097          	auipc	ra,0x1
    800036a8:	5f4080e7          	jalr	1524(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800036ac:	0014849b          	addiw	s1,s1,1
    800036b0:	0ff4f493          	andi	s1,s1,255
    800036b4:	00200793          	li	a5,2
    800036b8:	fc97f0e3          	bgeu	a5,s1,80003678 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800036bc:	00006517          	auipc	a0,0x6
    800036c0:	b2c50513          	addi	a0,a0,-1236 # 800091e8 <_ZTV14PeriodicThread+0x180>
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	5d4080e7          	jalr	1492(ra) # 80004c98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800036cc:	00700313          	li	t1,7
    thread_dispatch();
    800036d0:	fffff097          	auipc	ra,0xfffff
    800036d4:	1c0080e7          	jalr	448(ra) # 80002890 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800036d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800036dc:	00006517          	auipc	a0,0x6
    800036e0:	b1c50513          	addi	a0,a0,-1252 # 800091f8 <_ZTV14PeriodicThread+0x190>
    800036e4:	00001097          	auipc	ra,0x1
    800036e8:	5b4080e7          	jalr	1460(ra) # 80004c98 <_Z11printStringPKc>
    800036ec:	00000613          	li	a2,0
    800036f0:	00a00593          	li	a1,10
    800036f4:	0009051b          	sext.w	a0,s2
    800036f8:	00001097          	auipc	ra,0x1
    800036fc:	750080e7          	jalr	1872(ra) # 80004e48 <_Z8printIntiii>
    80003700:	00006517          	auipc	a0,0x6
    80003704:	ee050513          	addi	a0,a0,-288 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003708:	00001097          	auipc	ra,0x1
    8000370c:	590080e7          	jalr	1424(ra) # 80004c98 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003710:	00c00513          	li	a0,12
    80003714:	00000097          	auipc	ra,0x0
    80003718:	d88080e7          	jalr	-632(ra) # 8000349c <_ZL9fibonaccim>
    8000371c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003720:	00006517          	auipc	a0,0x6
    80003724:	ae050513          	addi	a0,a0,-1312 # 80009200 <_ZTV14PeriodicThread+0x198>
    80003728:	00001097          	auipc	ra,0x1
    8000372c:	570080e7          	jalr	1392(ra) # 80004c98 <_Z11printStringPKc>
    80003730:	00000613          	li	a2,0
    80003734:	00a00593          	li	a1,10
    80003738:	0009051b          	sext.w	a0,s2
    8000373c:	00001097          	auipc	ra,0x1
    80003740:	70c080e7          	jalr	1804(ra) # 80004e48 <_Z8printIntiii>
    80003744:	00006517          	auipc	a0,0x6
    80003748:	e9c50513          	addi	a0,a0,-356 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	54c080e7          	jalr	1356(ra) # 80004c98 <_Z11printStringPKc>
    80003754:	0400006f          	j	80003794 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003758:	00006517          	auipc	a0,0x6
    8000375c:	a8850513          	addi	a0,a0,-1400 # 800091e0 <_ZTV14PeriodicThread+0x178>
    80003760:	00001097          	auipc	ra,0x1
    80003764:	538080e7          	jalr	1336(ra) # 80004c98 <_Z11printStringPKc>
    80003768:	00000613          	li	a2,0
    8000376c:	00a00593          	li	a1,10
    80003770:	00048513          	mv	a0,s1
    80003774:	00001097          	auipc	ra,0x1
    80003778:	6d4080e7          	jalr	1748(ra) # 80004e48 <_Z8printIntiii>
    8000377c:	00006517          	auipc	a0,0x6
    80003780:	e6450513          	addi	a0,a0,-412 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003784:	00001097          	auipc	ra,0x1
    80003788:	514080e7          	jalr	1300(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000378c:	0014849b          	addiw	s1,s1,1
    80003790:	0ff4f493          	andi	s1,s1,255
    80003794:	00500793          	li	a5,5
    80003798:	fc97f0e3          	bgeu	a5,s1,80003758 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000379c:	00006517          	auipc	a0,0x6
    800037a0:	a7450513          	addi	a0,a0,-1420 # 80009210 <_ZTV14PeriodicThread+0x1a8>
    800037a4:	00001097          	auipc	ra,0x1
    800037a8:	4f4080e7          	jalr	1268(ra) # 80004c98 <_Z11printStringPKc>
    finishedC = true;
    800037ac:	00100793          	li	a5,1
    800037b0:	00008717          	auipc	a4,0x8
    800037b4:	18f70aa3          	sb	a5,405(a4) # 8000b945 <_ZL9finishedC>
    thread_dispatch();
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	0d8080e7          	jalr	216(ra) # 80002890 <_Z15thread_dispatchv>
}
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	00813483          	ld	s1,8(sp)
    800037cc:	00013903          	ld	s2,0(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret

00000000800037d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	01213023          	sd	s2,0(sp)
    800037ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800037f0:	00000913          	li	s2,0
    800037f4:	0380006f          	j	8000382c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	098080e7          	jalr	152(ra) # 80002890 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003800:	00148493          	addi	s1,s1,1
    80003804:	000027b7          	lui	a5,0x2
    80003808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000380c:	0097ee63          	bltu	a5,s1,80003828 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003810:	00000713          	li	a4,0
    80003814:	000077b7          	lui	a5,0x7
    80003818:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000381c:	fce7eee3          	bltu	a5,a4,800037f8 <_ZL11workerBodyBPv+0x20>
    80003820:	00170713          	addi	a4,a4,1
    80003824:	ff1ff06f          	j	80003814 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003828:	00190913          	addi	s2,s2,1
    8000382c:	00f00793          	li	a5,15
    80003830:	0527e063          	bltu	a5,s2,80003870 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003834:	00006517          	auipc	a0,0x6
    80003838:	9ec50513          	addi	a0,a0,-1556 # 80009220 <_ZTV14PeriodicThread+0x1b8>
    8000383c:	00001097          	auipc	ra,0x1
    80003840:	45c080e7          	jalr	1116(ra) # 80004c98 <_Z11printStringPKc>
    80003844:	00000613          	li	a2,0
    80003848:	00a00593          	li	a1,10
    8000384c:	0009051b          	sext.w	a0,s2
    80003850:	00001097          	auipc	ra,0x1
    80003854:	5f8080e7          	jalr	1528(ra) # 80004e48 <_Z8printIntiii>
    80003858:	00006517          	auipc	a0,0x6
    8000385c:	d8850513          	addi	a0,a0,-632 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003860:	00001097          	auipc	ra,0x1
    80003864:	438080e7          	jalr	1080(ra) # 80004c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003868:	00000493          	li	s1,0
    8000386c:	f99ff06f          	j	80003804 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003870:	00006517          	auipc	a0,0x6
    80003874:	9b850513          	addi	a0,a0,-1608 # 80009228 <_ZTV14PeriodicThread+0x1c0>
    80003878:	00001097          	auipc	ra,0x1
    8000387c:	420080e7          	jalr	1056(ra) # 80004c98 <_Z11printStringPKc>
    finishedB = true;
    80003880:	00100793          	li	a5,1
    80003884:	00008717          	auipc	a4,0x8
    80003888:	0cf70123          	sb	a5,194(a4) # 8000b946 <_ZL9finishedB>
    thread_dispatch();
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	004080e7          	jalr	4(ra) # 80002890 <_Z15thread_dispatchv>
}
    80003894:	01813083          	ld	ra,24(sp)
    80003898:	01013403          	ld	s0,16(sp)
    8000389c:	00813483          	ld	s1,8(sp)
    800038a0:	00013903          	ld	s2,0(sp)
    800038a4:	02010113          	addi	sp,sp,32
    800038a8:	00008067          	ret

00000000800038ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00113c23          	sd	ra,24(sp)
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	01213023          	sd	s2,0(sp)
    800038c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800038c4:	00000913          	li	s2,0
    800038c8:	0380006f          	j	80003900 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800038cc:	fffff097          	auipc	ra,0xfffff
    800038d0:	fc4080e7          	jalr	-60(ra) # 80002890 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038d4:	00148493          	addi	s1,s1,1
    800038d8:	000027b7          	lui	a5,0x2
    800038dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038e0:	0097ee63          	bltu	a5,s1,800038fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038e4:	00000713          	li	a4,0
    800038e8:	000077b7          	lui	a5,0x7
    800038ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038f0:	fce7eee3          	bltu	a5,a4,800038cc <_ZL11workerBodyAPv+0x20>
    800038f4:	00170713          	addi	a4,a4,1
    800038f8:	ff1ff06f          	j	800038e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800038fc:	00190913          	addi	s2,s2,1
    80003900:	00900793          	li	a5,9
    80003904:	0527e063          	bltu	a5,s2,80003944 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	93050513          	addi	a0,a0,-1744 # 80009238 <_ZTV14PeriodicThread+0x1d0>
    80003910:	00001097          	auipc	ra,0x1
    80003914:	388080e7          	jalr	904(ra) # 80004c98 <_Z11printStringPKc>
    80003918:	00000613          	li	a2,0
    8000391c:	00a00593          	li	a1,10
    80003920:	0009051b          	sext.w	a0,s2
    80003924:	00001097          	auipc	ra,0x1
    80003928:	524080e7          	jalr	1316(ra) # 80004e48 <_Z8printIntiii>
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	cb450513          	addi	a0,a0,-844 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003934:	00001097          	auipc	ra,0x1
    80003938:	364080e7          	jalr	868(ra) # 80004c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000393c:	00000493          	li	s1,0
    80003940:	f99ff06f          	j	800038d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003944:	00006517          	auipc	a0,0x6
    80003948:	8cc50513          	addi	a0,a0,-1844 # 80009210 <_ZTV14PeriodicThread+0x1a8>
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	34c080e7          	jalr	844(ra) # 80004c98 <_Z11printStringPKc>
    finishedA = true;
    80003954:	00100793          	li	a5,1
    80003958:	00008717          	auipc	a4,0x8
    8000395c:	fef707a3          	sb	a5,-17(a4) # 8000b947 <_ZL9finishedA>
}
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	00813483          	ld	s1,8(sp)
    8000396c:	00013903          	ld	s2,0(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret

0000000080003978 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003978:	fd010113          	addi	sp,sp,-48
    8000397c:	02113423          	sd	ra,40(sp)
    80003980:	02813023          	sd	s0,32(sp)
    80003984:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003988:	00000613          	li	a2,0
    8000398c:	00000597          	auipc	a1,0x0
    80003990:	f2058593          	addi	a1,a1,-224 # 800038ac <_ZL11workerBodyAPv>
    80003994:	fd040513          	addi	a0,s0,-48
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	e94080e7          	jalr	-364(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800039a0:	00006517          	auipc	a0,0x6
    800039a4:	8a050513          	addi	a0,a0,-1888 # 80009240 <_ZTV14PeriodicThread+0x1d8>
    800039a8:	00001097          	auipc	ra,0x1
    800039ac:	2f0080e7          	jalr	752(ra) # 80004c98 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800039b0:	00000613          	li	a2,0
    800039b4:	00000597          	auipc	a1,0x0
    800039b8:	e2458593          	addi	a1,a1,-476 # 800037d8 <_ZL11workerBodyBPv>
    800039bc:	fd840513          	addi	a0,s0,-40
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	e6c080e7          	jalr	-404(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	89050513          	addi	a0,a0,-1904 # 80009258 <_ZTV14PeriodicThread+0x1f0>
    800039d0:	00001097          	auipc	ra,0x1
    800039d4:	2c8080e7          	jalr	712(ra) # 80004c98 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800039d8:	00000613          	li	a2,0
    800039dc:	00000597          	auipc	a1,0x0
    800039e0:	c7c58593          	addi	a1,a1,-900 # 80003658 <_ZL11workerBodyCPv>
    800039e4:	fe040513          	addi	a0,s0,-32
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	e44080e7          	jalr	-444(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800039f0:	00006517          	auipc	a0,0x6
    800039f4:	88050513          	addi	a0,a0,-1920 # 80009270 <_ZTV14PeriodicThread+0x208>
    800039f8:	00001097          	auipc	ra,0x1
    800039fc:	2a0080e7          	jalr	672(ra) # 80004c98 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80003a00:	00000613          	li	a2,0
    80003a04:	00000597          	auipc	a1,0x0
    80003a08:	b0c58593          	addi	a1,a1,-1268 # 80003510 <_ZL11workerBodyDPv>
    80003a0c:	fe840513          	addi	a0,s0,-24
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	e1c080e7          	jalr	-484(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80003a18:	00006517          	auipc	a0,0x6
    80003a1c:	87050513          	addi	a0,a0,-1936 # 80009288 <_ZTV14PeriodicThread+0x220>
    80003a20:	00001097          	auipc	ra,0x1
    80003a24:	278080e7          	jalr	632(ra) # 80004c98 <_Z11printStringPKc>
    80003a28:	00c0006f          	j	80003a34 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	e64080e7          	jalr	-412(ra) # 80002890 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	f137c783          	lbu	a5,-237(a5) # 8000b947 <_ZL9finishedA>
    80003a3c:	fe0788e3          	beqz	a5,80003a2c <_Z18Threads_C_API_testv+0xb4>
    80003a40:	00008797          	auipc	a5,0x8
    80003a44:	f067c783          	lbu	a5,-250(a5) # 8000b946 <_ZL9finishedB>
    80003a48:	fe0782e3          	beqz	a5,80003a2c <_Z18Threads_C_API_testv+0xb4>
    80003a4c:	00008797          	auipc	a5,0x8
    80003a50:	ef97c783          	lbu	a5,-263(a5) # 8000b945 <_ZL9finishedC>
    80003a54:	fc078ce3          	beqz	a5,80003a2c <_Z18Threads_C_API_testv+0xb4>
    80003a58:	00008797          	auipc	a5,0x8
    80003a5c:	eec7c783          	lbu	a5,-276(a5) # 8000b944 <_ZL9finishedD>
    80003a60:	fc0786e3          	beqz	a5,80003a2c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003a64:	02813083          	ld	ra,40(sp)
    80003a68:	02013403          	ld	s0,32(sp)
    80003a6c:	03010113          	addi	sp,sp,48
    80003a70:	00008067          	ret

0000000080003a74 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a74:	fe010113          	addi	sp,sp,-32
    80003a78:	00113c23          	sd	ra,24(sp)
    80003a7c:	00813823          	sd	s0,16(sp)
    80003a80:	00913423          	sd	s1,8(sp)
    80003a84:	01213023          	sd	s2,0(sp)
    80003a88:	02010413          	addi	s0,sp,32
    80003a8c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a90:	00100793          	li	a5,1
    80003a94:	02a7f863          	bgeu	a5,a0,80003ac4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a98:	00a00793          	li	a5,10
    80003a9c:	02f577b3          	remu	a5,a0,a5
    80003aa0:	02078e63          	beqz	a5,80003adc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003aa4:	fff48513          	addi	a0,s1,-1
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	fcc080e7          	jalr	-52(ra) # 80003a74 <_ZL9fibonaccim>
    80003ab0:	00050913          	mv	s2,a0
    80003ab4:	ffe48513          	addi	a0,s1,-2
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	fbc080e7          	jalr	-68(ra) # 80003a74 <_ZL9fibonaccim>
    80003ac0:	00a90533          	add	a0,s2,a0
}
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	00013903          	ld	s2,0(sp)
    80003ad4:	02010113          	addi	sp,sp,32
    80003ad8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003adc:	fffff097          	auipc	ra,0xfffff
    80003ae0:	db4080e7          	jalr	-588(ra) # 80002890 <_Z15thread_dispatchv>
    80003ae4:	fc1ff06f          	j	80003aa4 <_ZL9fibonaccim+0x30>

0000000080003ae8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003ae8:	fe010113          	addi	sp,sp,-32
    80003aec:	00113c23          	sd	ra,24(sp)
    80003af0:	00813823          	sd	s0,16(sp)
    80003af4:	00913423          	sd	s1,8(sp)
    80003af8:	01213023          	sd	s2,0(sp)
    80003afc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b00:	00000913          	li	s2,0
    80003b04:	0380006f          	j	80003b3c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	d88080e7          	jalr	-632(ra) # 80002890 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b10:	00148493          	addi	s1,s1,1
    80003b14:	000027b7          	lui	a5,0x2
    80003b18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b1c:	0097ee63          	bltu	a5,s1,80003b38 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b20:	00000713          	li	a4,0
    80003b24:	000077b7          	lui	a5,0x7
    80003b28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b2c:	fce7eee3          	bltu	a5,a4,80003b08 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003b30:	00170713          	addi	a4,a4,1
    80003b34:	ff1ff06f          	j	80003b24 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003b38:	00190913          	addi	s2,s2,1
    80003b3c:	00900793          	li	a5,9
    80003b40:	0527e063          	bltu	a5,s2,80003b80 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003b44:	00005517          	auipc	a0,0x5
    80003b48:	6f450513          	addi	a0,a0,1780 # 80009238 <_ZTV14PeriodicThread+0x1d0>
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	14c080e7          	jalr	332(ra) # 80004c98 <_Z11printStringPKc>
    80003b54:	00000613          	li	a2,0
    80003b58:	00a00593          	li	a1,10
    80003b5c:	0009051b          	sext.w	a0,s2
    80003b60:	00001097          	auipc	ra,0x1
    80003b64:	2e8080e7          	jalr	744(ra) # 80004e48 <_Z8printIntiii>
    80003b68:	00006517          	auipc	a0,0x6
    80003b6c:	a7850513          	addi	a0,a0,-1416 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003b70:	00001097          	auipc	ra,0x1
    80003b74:	128080e7          	jalr	296(ra) # 80004c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b78:	00000493          	li	s1,0
    80003b7c:	f99ff06f          	j	80003b14 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b80:	00005517          	auipc	a0,0x5
    80003b84:	69050513          	addi	a0,a0,1680 # 80009210 <_ZTV14PeriodicThread+0x1a8>
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	110080e7          	jalr	272(ra) # 80004c98 <_Z11printStringPKc>
    finishedA = true;
    80003b90:	00100793          	li	a5,1
    80003b94:	00008717          	auipc	a4,0x8
    80003b98:	daf70ba3          	sb	a5,-585(a4) # 8000b94b <_ZL9finishedA>
}
    80003b9c:	01813083          	ld	ra,24(sp)
    80003ba0:	01013403          	ld	s0,16(sp)
    80003ba4:	00813483          	ld	s1,8(sp)
    80003ba8:	00013903          	ld	s2,0(sp)
    80003bac:	02010113          	addi	sp,sp,32
    80003bb0:	00008067          	ret

0000000080003bb4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003bb4:	fe010113          	addi	sp,sp,-32
    80003bb8:	00113c23          	sd	ra,24(sp)
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00913423          	sd	s1,8(sp)
    80003bc4:	01213023          	sd	s2,0(sp)
    80003bc8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003bcc:	00000913          	li	s2,0
    80003bd0:	0380006f          	j	80003c08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003bd4:	fffff097          	auipc	ra,0xfffff
    80003bd8:	cbc080e7          	jalr	-836(ra) # 80002890 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003bdc:	00148493          	addi	s1,s1,1
    80003be0:	000027b7          	lui	a5,0x2
    80003be4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003be8:	0097ee63          	bltu	a5,s1,80003c04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003bec:	00000713          	li	a4,0
    80003bf0:	000077b7          	lui	a5,0x7
    80003bf4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003bf8:	fce7eee3          	bltu	a5,a4,80003bd4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003bfc:	00170713          	addi	a4,a4,1
    80003c00:	ff1ff06f          	j	80003bf0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c04:	00190913          	addi	s2,s2,1
    80003c08:	00f00793          	li	a5,15
    80003c0c:	0527e063          	bltu	a5,s2,80003c4c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c10:	00005517          	auipc	a0,0x5
    80003c14:	61050513          	addi	a0,a0,1552 # 80009220 <_ZTV14PeriodicThread+0x1b8>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	080080e7          	jalr	128(ra) # 80004c98 <_Z11printStringPKc>
    80003c20:	00000613          	li	a2,0
    80003c24:	00a00593          	li	a1,10
    80003c28:	0009051b          	sext.w	a0,s2
    80003c2c:	00001097          	auipc	ra,0x1
    80003c30:	21c080e7          	jalr	540(ra) # 80004e48 <_Z8printIntiii>
    80003c34:	00006517          	auipc	a0,0x6
    80003c38:	9ac50513          	addi	a0,a0,-1620 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	05c080e7          	jalr	92(ra) # 80004c98 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003c44:	00000493          	li	s1,0
    80003c48:	f99ff06f          	j	80003be0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003c4c:	00005517          	auipc	a0,0x5
    80003c50:	5dc50513          	addi	a0,a0,1500 # 80009228 <_ZTV14PeriodicThread+0x1c0>
    80003c54:	00001097          	auipc	ra,0x1
    80003c58:	044080e7          	jalr	68(ra) # 80004c98 <_Z11printStringPKc>
    finishedB = true;
    80003c5c:	00100793          	li	a5,1
    80003c60:	00008717          	auipc	a4,0x8
    80003c64:	cef70523          	sb	a5,-790(a4) # 8000b94a <_ZL9finishedB>
    thread_dispatch();
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	c28080e7          	jalr	-984(ra) # 80002890 <_Z15thread_dispatchv>
}
    80003c70:	01813083          	ld	ra,24(sp)
    80003c74:	01013403          	ld	s0,16(sp)
    80003c78:	00813483          	ld	s1,8(sp)
    80003c7c:	00013903          	ld	s2,0(sp)
    80003c80:	02010113          	addi	sp,sp,32
    80003c84:	00008067          	ret

0000000080003c88 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	01213023          	sd	s2,0(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ca0:	00000493          	li	s1,0
    80003ca4:	0400006f          	j	80003ce4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ca8:	00005517          	auipc	a0,0x5
    80003cac:	53850513          	addi	a0,a0,1336 # 800091e0 <_ZTV14PeriodicThread+0x178>
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	fe8080e7          	jalr	-24(ra) # 80004c98 <_Z11printStringPKc>
    80003cb8:	00000613          	li	a2,0
    80003cbc:	00a00593          	li	a1,10
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	184080e7          	jalr	388(ra) # 80004e48 <_Z8printIntiii>
    80003ccc:	00006517          	auipc	a0,0x6
    80003cd0:	91450513          	addi	a0,a0,-1772 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	fc4080e7          	jalr	-60(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003cdc:	0014849b          	addiw	s1,s1,1
    80003ce0:	0ff4f493          	andi	s1,s1,255
    80003ce4:	00200793          	li	a5,2
    80003ce8:	fc97f0e3          	bgeu	a5,s1,80003ca8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	4fc50513          	addi	a0,a0,1276 # 800091e8 <_ZTV14PeriodicThread+0x180>
    80003cf4:	00001097          	auipc	ra,0x1
    80003cf8:	fa4080e7          	jalr	-92(ra) # 80004c98 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003cfc:	00700313          	li	t1,7
    thread_dispatch();
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	b90080e7          	jalr	-1136(ra) # 80002890 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d08:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	4ec50513          	addi	a0,a0,1260 # 800091f8 <_ZTV14PeriodicThread+0x190>
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	f84080e7          	jalr	-124(ra) # 80004c98 <_Z11printStringPKc>
    80003d1c:	00000613          	li	a2,0
    80003d20:	00a00593          	li	a1,10
    80003d24:	0009051b          	sext.w	a0,s2
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	120080e7          	jalr	288(ra) # 80004e48 <_Z8printIntiii>
    80003d30:	00006517          	auipc	a0,0x6
    80003d34:	8b050513          	addi	a0,a0,-1872 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003d38:	00001097          	auipc	ra,0x1
    80003d3c:	f60080e7          	jalr	-160(ra) # 80004c98 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003d40:	00c00513          	li	a0,12
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	d30080e7          	jalr	-720(ra) # 80003a74 <_ZL9fibonaccim>
    80003d4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003d50:	00005517          	auipc	a0,0x5
    80003d54:	4b050513          	addi	a0,a0,1200 # 80009200 <_ZTV14PeriodicThread+0x198>
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	f40080e7          	jalr	-192(ra) # 80004c98 <_Z11printStringPKc>
    80003d60:	00000613          	li	a2,0
    80003d64:	00a00593          	li	a1,10
    80003d68:	0009051b          	sext.w	a0,s2
    80003d6c:	00001097          	auipc	ra,0x1
    80003d70:	0dc080e7          	jalr	220(ra) # 80004e48 <_Z8printIntiii>
    80003d74:	00006517          	auipc	a0,0x6
    80003d78:	86c50513          	addi	a0,a0,-1940 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003d7c:	00001097          	auipc	ra,0x1
    80003d80:	f1c080e7          	jalr	-228(ra) # 80004c98 <_Z11printStringPKc>
    80003d84:	0400006f          	j	80003dc4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	45850513          	addi	a0,a0,1112 # 800091e0 <_ZTV14PeriodicThread+0x178>
    80003d90:	00001097          	auipc	ra,0x1
    80003d94:	f08080e7          	jalr	-248(ra) # 80004c98 <_Z11printStringPKc>
    80003d98:	00000613          	li	a2,0
    80003d9c:	00a00593          	li	a1,10
    80003da0:	00048513          	mv	a0,s1
    80003da4:	00001097          	auipc	ra,0x1
    80003da8:	0a4080e7          	jalr	164(ra) # 80004e48 <_Z8printIntiii>
    80003dac:	00006517          	auipc	a0,0x6
    80003db0:	83450513          	addi	a0,a0,-1996 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	ee4080e7          	jalr	-284(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003dbc:	0014849b          	addiw	s1,s1,1
    80003dc0:	0ff4f493          	andi	s1,s1,255
    80003dc4:	00500793          	li	a5,5
    80003dc8:	fc97f0e3          	bgeu	a5,s1,80003d88 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003dcc:	00005517          	auipc	a0,0x5
    80003dd0:	44450513          	addi	a0,a0,1092 # 80009210 <_ZTV14PeriodicThread+0x1a8>
    80003dd4:	00001097          	auipc	ra,0x1
    80003dd8:	ec4080e7          	jalr	-316(ra) # 80004c98 <_Z11printStringPKc>
    finishedC = true;
    80003ddc:	00100793          	li	a5,1
    80003de0:	00008717          	auipc	a4,0x8
    80003de4:	b6f704a3          	sb	a5,-1175(a4) # 8000b949 <_ZL9finishedC>
    thread_dispatch();
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	aa8080e7          	jalr	-1368(ra) # 80002890 <_Z15thread_dispatchv>
}
    80003df0:	01813083          	ld	ra,24(sp)
    80003df4:	01013403          	ld	s0,16(sp)
    80003df8:	00813483          	ld	s1,8(sp)
    80003dfc:	00013903          	ld	s2,0(sp)
    80003e00:	02010113          	addi	sp,sp,32
    80003e04:	00008067          	ret

0000000080003e08 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e08:	fe010113          	addi	sp,sp,-32
    80003e0c:	00113c23          	sd	ra,24(sp)
    80003e10:	00813823          	sd	s0,16(sp)
    80003e14:	00913423          	sd	s1,8(sp)
    80003e18:	01213023          	sd	s2,0(sp)
    80003e1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e20:	00a00493          	li	s1,10
    80003e24:	0400006f          	j	80003e64 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	38050513          	addi	a0,a0,896 # 800091a8 <_ZTV14PeriodicThread+0x140>
    80003e30:	00001097          	auipc	ra,0x1
    80003e34:	e68080e7          	jalr	-408(ra) # 80004c98 <_Z11printStringPKc>
    80003e38:	00000613          	li	a2,0
    80003e3c:	00a00593          	li	a1,10
    80003e40:	00048513          	mv	a0,s1
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	004080e7          	jalr	4(ra) # 80004e48 <_Z8printIntiii>
    80003e4c:	00005517          	auipc	a0,0x5
    80003e50:	79450513          	addi	a0,a0,1940 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	e44080e7          	jalr	-444(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003e5c:	0014849b          	addiw	s1,s1,1
    80003e60:	0ff4f493          	andi	s1,s1,255
    80003e64:	00c00793          	li	a5,12
    80003e68:	fc97f0e3          	bgeu	a5,s1,80003e28 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003e6c:	00005517          	auipc	a0,0x5
    80003e70:	34450513          	addi	a0,a0,836 # 800091b0 <_ZTV14PeriodicThread+0x148>
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	e24080e7          	jalr	-476(ra) # 80004c98 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e7c:	00500313          	li	t1,5
    thread_dispatch();
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	a10080e7          	jalr	-1520(ra) # 80002890 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e88:	01000513          	li	a0,16
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	be8080e7          	jalr	-1048(ra) # 80003a74 <_ZL9fibonaccim>
    80003e94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e98:	00005517          	auipc	a0,0x5
    80003e9c:	32850513          	addi	a0,a0,808 # 800091c0 <_ZTV14PeriodicThread+0x158>
    80003ea0:	00001097          	auipc	ra,0x1
    80003ea4:	df8080e7          	jalr	-520(ra) # 80004c98 <_Z11printStringPKc>
    80003ea8:	00000613          	li	a2,0
    80003eac:	00a00593          	li	a1,10
    80003eb0:	0009051b          	sext.w	a0,s2
    80003eb4:	00001097          	auipc	ra,0x1
    80003eb8:	f94080e7          	jalr	-108(ra) # 80004e48 <_Z8printIntiii>
    80003ebc:	00005517          	auipc	a0,0x5
    80003ec0:	72450513          	addi	a0,a0,1828 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003ec4:	00001097          	auipc	ra,0x1
    80003ec8:	dd4080e7          	jalr	-556(ra) # 80004c98 <_Z11printStringPKc>
    80003ecc:	0400006f          	j	80003f0c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ed0:	00005517          	auipc	a0,0x5
    80003ed4:	2d850513          	addi	a0,a0,728 # 800091a8 <_ZTV14PeriodicThread+0x140>
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	dc0080e7          	jalr	-576(ra) # 80004c98 <_Z11printStringPKc>
    80003ee0:	00000613          	li	a2,0
    80003ee4:	00a00593          	li	a1,10
    80003ee8:	00048513          	mv	a0,s1
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	f5c080e7          	jalr	-164(ra) # 80004e48 <_Z8printIntiii>
    80003ef4:	00005517          	auipc	a0,0x5
    80003ef8:	6ec50513          	addi	a0,a0,1772 # 800095e0 <_ZTV12ConsumerSync+0x168>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	d9c080e7          	jalr	-612(ra) # 80004c98 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f04:	0014849b          	addiw	s1,s1,1
    80003f08:	0ff4f493          	andi	s1,s1,255
    80003f0c:	00f00793          	li	a5,15
    80003f10:	fc97f0e3          	bgeu	a5,s1,80003ed0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	2bc50513          	addi	a0,a0,700 # 800091d0 <_ZTV14PeriodicThread+0x168>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	d7c080e7          	jalr	-644(ra) # 80004c98 <_Z11printStringPKc>
    finishedD = true;
    80003f24:	00100793          	li	a5,1
    80003f28:	00008717          	auipc	a4,0x8
    80003f2c:	a2f70023          	sb	a5,-1504(a4) # 8000b948 <_ZL9finishedD>
    thread_dispatch();
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	960080e7          	jalr	-1696(ra) # 80002890 <_Z15thread_dispatchv>
}
    80003f38:	01813083          	ld	ra,24(sp)
    80003f3c:	01013403          	ld	s0,16(sp)
    80003f40:	00813483          	ld	s1,8(sp)
    80003f44:	00013903          	ld	s2,0(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret

0000000080003f50 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003f50:	fc010113          	addi	sp,sp,-64
    80003f54:	02113c23          	sd	ra,56(sp)
    80003f58:	02813823          	sd	s0,48(sp)
    80003f5c:	02913423          	sd	s1,40(sp)
    80003f60:	03213023          	sd	s2,32(sp)
    80003f64:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003f68:	02000513          	li	a0,32
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	1b4080e7          	jalr	436(ra) # 80002120 <_Znwm>
    80003f74:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	330080e7          	jalr	816(ra) # 800022a8 <_ZN6ThreadC1Ev>
    80003f80:	00005797          	auipc	a5,0x5
    80003f84:	33078793          	addi	a5,a5,816 # 800092b0 <_ZTV7WorkerA+0x10>
    80003f88:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f8c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f90:	00005517          	auipc	a0,0x5
    80003f94:	2b050513          	addi	a0,a0,688 # 80009240 <_ZTV14PeriodicThread+0x1d8>
    80003f98:	00001097          	auipc	ra,0x1
    80003f9c:	d00080e7          	jalr	-768(ra) # 80004c98 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003fa0:	02000513          	li	a0,32
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	17c080e7          	jalr	380(ra) # 80002120 <_Znwm>
    80003fac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	2f8080e7          	jalr	760(ra) # 800022a8 <_ZN6ThreadC1Ev>
    80003fb8:	00005797          	auipc	a5,0x5
    80003fbc:	32078793          	addi	a5,a5,800 # 800092d8 <_ZTV7WorkerB+0x10>
    80003fc0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003fc4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	29050513          	addi	a0,a0,656 # 80009258 <_ZTV14PeriodicThread+0x1f0>
    80003fd0:	00001097          	auipc	ra,0x1
    80003fd4:	cc8080e7          	jalr	-824(ra) # 80004c98 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003fd8:	02000513          	li	a0,32
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	144080e7          	jalr	324(ra) # 80002120 <_Znwm>
    80003fe4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	2c0080e7          	jalr	704(ra) # 800022a8 <_ZN6ThreadC1Ev>
    80003ff0:	00005797          	auipc	a5,0x5
    80003ff4:	31078793          	addi	a5,a5,784 # 80009300 <_ZTV7WorkerC+0x10>
    80003ff8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ffc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004000:	00005517          	auipc	a0,0x5
    80004004:	27050513          	addi	a0,a0,624 # 80009270 <_ZTV14PeriodicThread+0x208>
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	c90080e7          	jalr	-880(ra) # 80004c98 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004010:	02000513          	li	a0,32
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	10c080e7          	jalr	268(ra) # 80002120 <_Znwm>
    8000401c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	288080e7          	jalr	648(ra) # 800022a8 <_ZN6ThreadC1Ev>
    80004028:	00005797          	auipc	a5,0x5
    8000402c:	30078793          	addi	a5,a5,768 # 80009328 <_ZTV7WorkerD+0x10>
    80004030:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004034:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004038:	00005517          	auipc	a0,0x5
    8000403c:	25050513          	addi	a0,a0,592 # 80009288 <_ZTV14PeriodicThread+0x220>
    80004040:	00001097          	auipc	ra,0x1
    80004044:	c58080e7          	jalr	-936(ra) # 80004c98 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004048:	00000493          	li	s1,0
    8000404c:	00300793          	li	a5,3
    80004050:	0297c663          	blt	a5,s1,8000407c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004054:	00349793          	slli	a5,s1,0x3
    80004058:	fe040713          	addi	a4,s0,-32
    8000405c:	00f707b3          	add	a5,a4,a5
    80004060:	fe07b503          	ld	a0,-32(a5)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	1a0080e7          	jalr	416(ra) # 80002204 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000406c:	0014849b          	addiw	s1,s1,1
    80004070:	fddff06f          	j	8000404c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	1e4080e7          	jalr	484(ra) # 80002258 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000407c:	00008797          	auipc	a5,0x8
    80004080:	8cf7c783          	lbu	a5,-1841(a5) # 8000b94b <_ZL9finishedA>
    80004084:	fe0788e3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    80004088:	00008797          	auipc	a5,0x8
    8000408c:	8c27c783          	lbu	a5,-1854(a5) # 8000b94a <_ZL9finishedB>
    80004090:	fe0782e3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    80004094:	00008797          	auipc	a5,0x8
    80004098:	8b57c783          	lbu	a5,-1867(a5) # 8000b949 <_ZL9finishedC>
    8000409c:	fc078ce3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    800040a0:	00008797          	auipc	a5,0x8
    800040a4:	8a87c783          	lbu	a5,-1880(a5) # 8000b948 <_ZL9finishedD>
    800040a8:	fc0786e3          	beqz	a5,80004074 <_Z20Threads_CPP_API_testv+0x124>
    800040ac:	fc040493          	addi	s1,s0,-64
    800040b0:	0080006f          	j	800040b8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800040b4:	00848493          	addi	s1,s1,8
    800040b8:	fe040793          	addi	a5,s0,-32
    800040bc:	08f48663          	beq	s1,a5,80004148 <_Z20Threads_CPP_API_testv+0x1f8>
    800040c0:	0004b503          	ld	a0,0(s1)
    800040c4:	fe0508e3          	beqz	a0,800040b4 <_Z20Threads_CPP_API_testv+0x164>
    800040c8:	00053783          	ld	a5,0(a0)
    800040cc:	0087b783          	ld	a5,8(a5)
    800040d0:	000780e7          	jalr	a5
    800040d4:	fe1ff06f          	j	800040b4 <_Z20Threads_CPP_API_testv+0x164>
    800040d8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800040dc:	00048513          	mv	a0,s1
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	068080e7          	jalr	104(ra) # 80002148 <_ZdlPv>
    800040e8:	00090513          	mv	a0,s2
    800040ec:	00009097          	auipc	ra,0x9
    800040f0:	bfc080e7          	jalr	-1028(ra) # 8000cce8 <_Unwind_Resume>
    800040f4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800040f8:	00048513          	mv	a0,s1
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	04c080e7          	jalr	76(ra) # 80002148 <_ZdlPv>
    80004104:	00090513          	mv	a0,s2
    80004108:	00009097          	auipc	ra,0x9
    8000410c:	be0080e7          	jalr	-1056(ra) # 8000cce8 <_Unwind_Resume>
    80004110:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004114:	00048513          	mv	a0,s1
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	030080e7          	jalr	48(ra) # 80002148 <_ZdlPv>
    80004120:	00090513          	mv	a0,s2
    80004124:	00009097          	auipc	ra,0x9
    80004128:	bc4080e7          	jalr	-1084(ra) # 8000cce8 <_Unwind_Resume>
    8000412c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004130:	00048513          	mv	a0,s1
    80004134:	ffffe097          	auipc	ra,0xffffe
    80004138:	014080e7          	jalr	20(ra) # 80002148 <_ZdlPv>
    8000413c:	00090513          	mv	a0,s2
    80004140:	00009097          	auipc	ra,0x9
    80004144:	ba8080e7          	jalr	-1112(ra) # 8000cce8 <_Unwind_Resume>
}
    80004148:	03813083          	ld	ra,56(sp)
    8000414c:	03013403          	ld	s0,48(sp)
    80004150:	02813483          	ld	s1,40(sp)
    80004154:	02013903          	ld	s2,32(sp)
    80004158:	04010113          	addi	sp,sp,64
    8000415c:	00008067          	ret

0000000080004160 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	00005797          	auipc	a5,0x5
    80004174:	14078793          	addi	a5,a5,320 # 800092b0 <_ZTV7WorkerA+0x10>
    80004178:	00f53023          	sd	a5,0(a0)
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	ef0080e7          	jalr	-272(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004184:	00813083          	ld	ra,8(sp)
    80004188:	00013403          	ld	s0,0(sp)
    8000418c:	01010113          	addi	sp,sp,16
    80004190:	00008067          	ret

0000000080004194 <_ZN7WorkerAD0Ev>:
    80004194:	fe010113          	addi	sp,sp,-32
    80004198:	00113c23          	sd	ra,24(sp)
    8000419c:	00813823          	sd	s0,16(sp)
    800041a0:	00913423          	sd	s1,8(sp)
    800041a4:	02010413          	addi	s0,sp,32
    800041a8:	00050493          	mv	s1,a0
    800041ac:	00005797          	auipc	a5,0x5
    800041b0:	10478793          	addi	a5,a5,260 # 800092b0 <_ZTV7WorkerA+0x10>
    800041b4:	00f53023          	sd	a5,0(a0)
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	eb4080e7          	jalr	-332(ra) # 8000206c <_ZN6ThreadD1Ev>
    800041c0:	00048513          	mv	a0,s1
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	f84080e7          	jalr	-124(ra) # 80002148 <_ZdlPv>
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	01013403          	ld	s0,16(sp)
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	02010113          	addi	sp,sp,32
    800041dc:	00008067          	ret

00000000800041e0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00113423          	sd	ra,8(sp)
    800041e8:	00813023          	sd	s0,0(sp)
    800041ec:	01010413          	addi	s0,sp,16
    800041f0:	00005797          	auipc	a5,0x5
    800041f4:	0e878793          	addi	a5,a5,232 # 800092d8 <_ZTV7WorkerB+0x10>
    800041f8:	00f53023          	sd	a5,0(a0)
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	e70080e7          	jalr	-400(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004204:	00813083          	ld	ra,8(sp)
    80004208:	00013403          	ld	s0,0(sp)
    8000420c:	01010113          	addi	sp,sp,16
    80004210:	00008067          	ret

0000000080004214 <_ZN7WorkerBD0Ev>:
    80004214:	fe010113          	addi	sp,sp,-32
    80004218:	00113c23          	sd	ra,24(sp)
    8000421c:	00813823          	sd	s0,16(sp)
    80004220:	00913423          	sd	s1,8(sp)
    80004224:	02010413          	addi	s0,sp,32
    80004228:	00050493          	mv	s1,a0
    8000422c:	00005797          	auipc	a5,0x5
    80004230:	0ac78793          	addi	a5,a5,172 # 800092d8 <_ZTV7WorkerB+0x10>
    80004234:	00f53023          	sd	a5,0(a0)
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	e34080e7          	jalr	-460(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004240:	00048513          	mv	a0,s1
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	f04080e7          	jalr	-252(ra) # 80002148 <_ZdlPv>
    8000424c:	01813083          	ld	ra,24(sp)
    80004250:	01013403          	ld	s0,16(sp)
    80004254:	00813483          	ld	s1,8(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret

0000000080004260 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00113423          	sd	ra,8(sp)
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	01010413          	addi	s0,sp,16
    80004270:	00005797          	auipc	a5,0x5
    80004274:	09078793          	addi	a5,a5,144 # 80009300 <_ZTV7WorkerC+0x10>
    80004278:	00f53023          	sd	a5,0(a0)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	df0080e7          	jalr	-528(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004284:	00813083          	ld	ra,8(sp)
    80004288:	00013403          	ld	s0,0(sp)
    8000428c:	01010113          	addi	sp,sp,16
    80004290:	00008067          	ret

0000000080004294 <_ZN7WorkerCD0Ev>:
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	02010413          	addi	s0,sp,32
    800042a8:	00050493          	mv	s1,a0
    800042ac:	00005797          	auipc	a5,0x5
    800042b0:	05478793          	addi	a5,a5,84 # 80009300 <_ZTV7WorkerC+0x10>
    800042b4:	00f53023          	sd	a5,0(a0)
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	db4080e7          	jalr	-588(ra) # 8000206c <_ZN6ThreadD1Ev>
    800042c0:	00048513          	mv	a0,s1
    800042c4:	ffffe097          	auipc	ra,0xffffe
    800042c8:	e84080e7          	jalr	-380(ra) # 80002148 <_ZdlPv>
    800042cc:	01813083          	ld	ra,24(sp)
    800042d0:	01013403          	ld	s0,16(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	02010113          	addi	sp,sp,32
    800042dc:	00008067          	ret

00000000800042e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00113423          	sd	ra,8(sp)
    800042e8:	00813023          	sd	s0,0(sp)
    800042ec:	01010413          	addi	s0,sp,16
    800042f0:	00005797          	auipc	a5,0x5
    800042f4:	03878793          	addi	a5,a5,56 # 80009328 <_ZTV7WorkerD+0x10>
    800042f8:	00f53023          	sd	a5,0(a0)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	d70080e7          	jalr	-656(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004304:	00813083          	ld	ra,8(sp)
    80004308:	00013403          	ld	s0,0(sp)
    8000430c:	01010113          	addi	sp,sp,16
    80004310:	00008067          	ret

0000000080004314 <_ZN7WorkerDD0Ev>:
    80004314:	fe010113          	addi	sp,sp,-32
    80004318:	00113c23          	sd	ra,24(sp)
    8000431c:	00813823          	sd	s0,16(sp)
    80004320:	00913423          	sd	s1,8(sp)
    80004324:	02010413          	addi	s0,sp,32
    80004328:	00050493          	mv	s1,a0
    8000432c:	00005797          	auipc	a5,0x5
    80004330:	ffc78793          	addi	a5,a5,-4 # 80009328 <_ZTV7WorkerD+0x10>
    80004334:	00f53023          	sd	a5,0(a0)
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	d34080e7          	jalr	-716(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004340:	00048513          	mv	a0,s1
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	e04080e7          	jalr	-508(ra) # 80002148 <_ZdlPv>
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	01013403          	ld	s0,16(sp)
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	02010113          	addi	sp,sp,32
    8000435c:	00008067          	ret

0000000080004360 <_ZN7WorkerA3runEv>:
    void run() override {
    80004360:	ff010113          	addi	sp,sp,-16
    80004364:	00113423          	sd	ra,8(sp)
    80004368:	00813023          	sd	s0,0(sp)
    8000436c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004370:	00000593          	li	a1,0
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	774080e7          	jalr	1908(ra) # 80003ae8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <_ZN7WorkerB3runEv>:
    void run() override {
    8000438c:	ff010113          	addi	sp,sp,-16
    80004390:	00113423          	sd	ra,8(sp)
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000439c:	00000593          	li	a1,0
    800043a0:	00000097          	auipc	ra,0x0
    800043a4:	814080e7          	jalr	-2028(ra) # 80003bb4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800043a8:	00813083          	ld	ra,8(sp)
    800043ac:	00013403          	ld	s0,0(sp)
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800043b8:	ff010113          	addi	sp,sp,-16
    800043bc:	00113423          	sd	ra,8(sp)
    800043c0:	00813023          	sd	s0,0(sp)
    800043c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800043c8:	00000593          	li	a1,0
    800043cc:	00000097          	auipc	ra,0x0
    800043d0:	8bc080e7          	jalr	-1860(ra) # 80003c88 <_ZN7WorkerC11workerBodyCEPv>
    }
    800043d4:	00813083          	ld	ra,8(sp)
    800043d8:	00013403          	ld	s0,0(sp)
    800043dc:	01010113          	addi	sp,sp,16
    800043e0:	00008067          	ret

00000000800043e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800043e4:	ff010113          	addi	sp,sp,-16
    800043e8:	00113423          	sd	ra,8(sp)
    800043ec:	00813023          	sd	s0,0(sp)
    800043f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800043f4:	00000593          	li	a1,0
    800043f8:	00000097          	auipc	ra,0x0
    800043fc:	a10080e7          	jalr	-1520(ra) # 80003e08 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004400:	00813083          	ld	ra,8(sp)
    80004404:	00013403          	ld	s0,0(sp)
    80004408:	01010113          	addi	sp,sp,16
    8000440c:	00008067          	ret

0000000080004410 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004410:	fd010113          	addi	sp,sp,-48
    80004414:	02113423          	sd	ra,40(sp)
    80004418:	02813023          	sd	s0,32(sp)
    8000441c:	00913c23          	sd	s1,24(sp)
    80004420:	01213823          	sd	s2,16(sp)
    80004424:	01313423          	sd	s3,8(sp)
    80004428:	03010413          	addi	s0,sp,48
    8000442c:	00050993          	mv	s3,a0
    80004430:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004434:	00000913          	li	s2,0
    80004438:	00c0006f          	j	80004444 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000443c:	ffffe097          	auipc	ra,0xffffe
    80004440:	e1c080e7          	jalr	-484(ra) # 80002258 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	59c080e7          	jalr	1436(ra) # 800029e0 <_Z4getcv>
    8000444c:	0005059b          	sext.w	a1,a0
    80004450:	01b00793          	li	a5,27
    80004454:	02f58a63          	beq	a1,a5,80004488 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004458:	0084b503          	ld	a0,8(s1)
    8000445c:	00002097          	auipc	ra,0x2
    80004460:	980080e7          	jalr	-1664(ra) # 80005ddc <_ZN9BufferCPP3putEi>
        i++;
    80004464:	0019071b          	addiw	a4,s2,1
    80004468:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000446c:	0004a683          	lw	a3,0(s1)
    80004470:	0026979b          	slliw	a5,a3,0x2
    80004474:	00d787bb          	addw	a5,a5,a3
    80004478:	0017979b          	slliw	a5,a5,0x1
    8000447c:	02f767bb          	remw	a5,a4,a5
    80004480:	fc0792e3          	bnez	a5,80004444 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004484:	fb9ff06f          	j	8000443c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004488:	00100793          	li	a5,1
    8000448c:	00007717          	auipc	a4,0x7
    80004490:	4cf72223          	sw	a5,1220(a4) # 8000b950 <_ZL9threadEnd>
    td->buffer->put('!');
    80004494:	0209b783          	ld	a5,32(s3)
    80004498:	02100593          	li	a1,33
    8000449c:	0087b503          	ld	a0,8(a5)
    800044a0:	00002097          	auipc	ra,0x2
    800044a4:	93c080e7          	jalr	-1732(ra) # 80005ddc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800044a8:	0104b503          	ld	a0,16(s1)
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	e8c080e7          	jalr	-372(ra) # 80002338 <_ZN9Semaphore6signalEv>
}
    800044b4:	02813083          	ld	ra,40(sp)
    800044b8:	02013403          	ld	s0,32(sp)
    800044bc:	01813483          	ld	s1,24(sp)
    800044c0:	01013903          	ld	s2,16(sp)
    800044c4:	00813983          	ld	s3,8(sp)
    800044c8:	03010113          	addi	sp,sp,48
    800044cc:	00008067          	ret

00000000800044d0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800044d0:	fe010113          	addi	sp,sp,-32
    800044d4:	00113c23          	sd	ra,24(sp)
    800044d8:	00813823          	sd	s0,16(sp)
    800044dc:	00913423          	sd	s1,8(sp)
    800044e0:	01213023          	sd	s2,0(sp)
    800044e4:	02010413          	addi	s0,sp,32
    800044e8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800044ec:	00000913          	li	s2,0
    800044f0:	00c0006f          	j	800044fc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800044f4:	ffffe097          	auipc	ra,0xffffe
    800044f8:	d64080e7          	jalr	-668(ra) # 80002258 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800044fc:	00007797          	auipc	a5,0x7
    80004500:	4547a783          	lw	a5,1108(a5) # 8000b950 <_ZL9threadEnd>
    80004504:	02079e63          	bnez	a5,80004540 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004508:	0004a583          	lw	a1,0(s1)
    8000450c:	0305859b          	addiw	a1,a1,48
    80004510:	0084b503          	ld	a0,8(s1)
    80004514:	00002097          	auipc	ra,0x2
    80004518:	8c8080e7          	jalr	-1848(ra) # 80005ddc <_ZN9BufferCPP3putEi>
        i++;
    8000451c:	0019071b          	addiw	a4,s2,1
    80004520:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004524:	0004a683          	lw	a3,0(s1)
    80004528:	0026979b          	slliw	a5,a3,0x2
    8000452c:	00d787bb          	addw	a5,a5,a3
    80004530:	0017979b          	slliw	a5,a5,0x1
    80004534:	02f767bb          	remw	a5,a4,a5
    80004538:	fc0792e3          	bnez	a5,800044fc <_ZN12ProducerSync8producerEPv+0x2c>
    8000453c:	fb9ff06f          	j	800044f4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004540:	0104b503          	ld	a0,16(s1)
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	df4080e7          	jalr	-524(ra) # 80002338 <_ZN9Semaphore6signalEv>
}
    8000454c:	01813083          	ld	ra,24(sp)
    80004550:	01013403          	ld	s0,16(sp)
    80004554:	00813483          	ld	s1,8(sp)
    80004558:	00013903          	ld	s2,0(sp)
    8000455c:	02010113          	addi	sp,sp,32
    80004560:	00008067          	ret

0000000080004564 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004564:	fd010113          	addi	sp,sp,-48
    80004568:	02113423          	sd	ra,40(sp)
    8000456c:	02813023          	sd	s0,32(sp)
    80004570:	00913c23          	sd	s1,24(sp)
    80004574:	01213823          	sd	s2,16(sp)
    80004578:	01313423          	sd	s3,8(sp)
    8000457c:	01413023          	sd	s4,0(sp)
    80004580:	03010413          	addi	s0,sp,48
    80004584:	00050993          	mv	s3,a0
    80004588:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000458c:	00000a13          	li	s4,0
    80004590:	01c0006f          	j	800045ac <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	cc4080e7          	jalr	-828(ra) # 80002258 <_ZN6Thread8dispatchEv>
    8000459c:	0500006f          	j	800045ec <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800045a0:	00a00513          	li	a0,10
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	468080e7          	jalr	1128(ra) # 80002a0c <_Z4putcc>
    while (!threadEnd) {
    800045ac:	00007797          	auipc	a5,0x7
    800045b0:	3a47a783          	lw	a5,932(a5) # 8000b950 <_ZL9threadEnd>
    800045b4:	06079263          	bnez	a5,80004618 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800045b8:	00893503          	ld	a0,8(s2)
    800045bc:	00002097          	auipc	ra,0x2
    800045c0:	8b0080e7          	jalr	-1872(ra) # 80005e6c <_ZN9BufferCPP3getEv>
        i++;
    800045c4:	001a049b          	addiw	s1,s4,1
    800045c8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800045cc:	0ff57513          	andi	a0,a0,255
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	43c080e7          	jalr	1084(ra) # 80002a0c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800045d8:	00092703          	lw	a4,0(s2)
    800045dc:	0027179b          	slliw	a5,a4,0x2
    800045e0:	00e787bb          	addw	a5,a5,a4
    800045e4:	02f4e7bb          	remw	a5,s1,a5
    800045e8:	fa0786e3          	beqz	a5,80004594 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800045ec:	05000793          	li	a5,80
    800045f0:	02f4e4bb          	remw	s1,s1,a5
    800045f4:	fa049ce3          	bnez	s1,800045ac <_ZN12ConsumerSync8consumerEPv+0x48>
    800045f8:	fa9ff06f          	j	800045a0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800045fc:	0209b783          	ld	a5,32(s3)
    80004600:	0087b503          	ld	a0,8(a5)
    80004604:	00002097          	auipc	ra,0x2
    80004608:	868080e7          	jalr	-1944(ra) # 80005e6c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000460c:	0ff57513          	andi	a0,a0,255
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	df4080e7          	jalr	-524(ra) # 80002404 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004618:	0209b783          	ld	a5,32(s3)
    8000461c:	0087b503          	ld	a0,8(a5)
    80004620:	00002097          	auipc	ra,0x2
    80004624:	8d8080e7          	jalr	-1832(ra) # 80005ef8 <_ZN9BufferCPP6getCntEv>
    80004628:	fca04ae3          	bgtz	a0,800045fc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000462c:	01093503          	ld	a0,16(s2)
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	d08080e7          	jalr	-760(ra) # 80002338 <_ZN9Semaphore6signalEv>
}
    80004638:	02813083          	ld	ra,40(sp)
    8000463c:	02013403          	ld	s0,32(sp)
    80004640:	01813483          	ld	s1,24(sp)
    80004644:	01013903          	ld	s2,16(sp)
    80004648:	00813983          	ld	s3,8(sp)
    8000464c:	00013a03          	ld	s4,0(sp)
    80004650:	03010113          	addi	sp,sp,48
    80004654:	00008067          	ret

0000000080004658 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004658:	f8010113          	addi	sp,sp,-128
    8000465c:	06113c23          	sd	ra,120(sp)
    80004660:	06813823          	sd	s0,112(sp)
    80004664:	06913423          	sd	s1,104(sp)
    80004668:	07213023          	sd	s2,96(sp)
    8000466c:	05313c23          	sd	s3,88(sp)
    80004670:	05413823          	sd	s4,80(sp)
    80004674:	05513423          	sd	s5,72(sp)
    80004678:	05613023          	sd	s6,64(sp)
    8000467c:	03713c23          	sd	s7,56(sp)
    80004680:	03813823          	sd	s8,48(sp)
    80004684:	03913423          	sd	s9,40(sp)
    80004688:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000468c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004690:	00005517          	auipc	a0,0x5
    80004694:	cb050513          	addi	a0,a0,-848 # 80009340 <_ZTV7WorkerD+0x28>
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	600080e7          	jalr	1536(ra) # 80004c98 <_Z11printStringPKc>
    getString(input, 30);
    800046a0:	01e00593          	li	a1,30
    800046a4:	f8040513          	addi	a0,s0,-128
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	678080e7          	jalr	1656(ra) # 80004d20 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800046b0:	f8040513          	addi	a0,s0,-128
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	744080e7          	jalr	1860(ra) # 80004df8 <_Z11stringToIntPKc>
    800046bc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800046c0:	00005517          	auipc	a0,0x5
    800046c4:	ca050513          	addi	a0,a0,-864 # 80009360 <_ZTV7WorkerD+0x48>
    800046c8:	00000097          	auipc	ra,0x0
    800046cc:	5d0080e7          	jalr	1488(ra) # 80004c98 <_Z11printStringPKc>
    getString(input, 30);
    800046d0:	01e00593          	li	a1,30
    800046d4:	f8040513          	addi	a0,s0,-128
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	648080e7          	jalr	1608(ra) # 80004d20 <_Z9getStringPci>
    n = stringToInt(input);
    800046e0:	f8040513          	addi	a0,s0,-128
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	714080e7          	jalr	1812(ra) # 80004df8 <_Z11stringToIntPKc>
    800046ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800046f0:	00005517          	auipc	a0,0x5
    800046f4:	c9050513          	addi	a0,a0,-880 # 80009380 <_ZTV7WorkerD+0x68>
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	5a0080e7          	jalr	1440(ra) # 80004c98 <_Z11printStringPKc>
    80004700:	00000613          	li	a2,0
    80004704:	00a00593          	li	a1,10
    80004708:	00090513          	mv	a0,s2
    8000470c:	00000097          	auipc	ra,0x0
    80004710:	73c080e7          	jalr	1852(ra) # 80004e48 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004714:	00005517          	auipc	a0,0x5
    80004718:	c8450513          	addi	a0,a0,-892 # 80009398 <_ZTV7WorkerD+0x80>
    8000471c:	00000097          	auipc	ra,0x0
    80004720:	57c080e7          	jalr	1404(ra) # 80004c98 <_Z11printStringPKc>
    80004724:	00000613          	li	a2,0
    80004728:	00a00593          	li	a1,10
    8000472c:	00048513          	mv	a0,s1
    80004730:	00000097          	auipc	ra,0x0
    80004734:	718080e7          	jalr	1816(ra) # 80004e48 <_Z8printIntiii>
    printString(".\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	c7850513          	addi	a0,a0,-904 # 800093b0 <_ZTV7WorkerD+0x98>
    80004740:	00000097          	auipc	ra,0x0
    80004744:	558080e7          	jalr	1368(ra) # 80004c98 <_Z11printStringPKc>
    if(threadNum > n) {
    80004748:	0324c463          	blt	s1,s2,80004770 <_Z29producerConsumer_CPP_Sync_APIv+0x118>
    } else if (threadNum < 1) {
    8000474c:	03205c63          	blez	s2,80004784 <_Z29producerConsumer_CPP_Sync_APIv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80004750:	03800513          	li	a0,56
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	9cc080e7          	jalr	-1588(ra) # 80002120 <_Znwm>
    8000475c:	00050a93          	mv	s5,a0
    80004760:	00048593          	mv	a1,s1
    80004764:	00001097          	auipc	ra,0x1
    80004768:	524080e7          	jalr	1316(ra) # 80005c88 <_ZN9BufferCPPC1Ei>
    8000476c:	0300006f          	j	8000479c <_Z29producerConsumer_CPP_Sync_APIv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004770:	00005517          	auipc	a0,0x5
    80004774:	c4850513          	addi	a0,a0,-952 # 800093b8 <_ZTV7WorkerD+0xa0>
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	520080e7          	jalr	1312(ra) # 80004c98 <_Z11printStringPKc>
        return;
    80004780:	0140006f          	j	80004794 <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004784:	00005517          	auipc	a0,0x5
    80004788:	c7450513          	addi	a0,a0,-908 # 800093f8 <_ZTV7WorkerD+0xe0>
    8000478c:	00000097          	auipc	ra,0x0
    80004790:	50c080e7          	jalr	1292(ra) # 80004c98 <_Z11printStringPKc>
        return;
    80004794:	000b8113          	mv	sp,s7
    80004798:	2380006f          	j	800049d0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    waitForAll = new Semaphore(0);
    8000479c:	01000513          	li	a0,16
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	980080e7          	jalr	-1664(ra) # 80002120 <_Znwm>
    800047a8:	00050493          	mv	s1,a0
    800047ac:	00000593          	li	a1,0
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	b24080e7          	jalr	-1244(ra) # 800022d4 <_ZN9SemaphoreC1Ej>
    800047b8:	00007797          	auipc	a5,0x7
    800047bc:	1a97b023          	sd	s1,416(a5) # 8000b958 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800047c0:	00391793          	slli	a5,s2,0x3
    800047c4:	00f78793          	addi	a5,a5,15
    800047c8:	ff07f793          	andi	a5,a5,-16
    800047cc:	40f10133          	sub	sp,sp,a5
    800047d0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800047d4:	0019071b          	addiw	a4,s2,1
    800047d8:	00171793          	slli	a5,a4,0x1
    800047dc:	00e787b3          	add	a5,a5,a4
    800047e0:	00379793          	slli	a5,a5,0x3
    800047e4:	00f78793          	addi	a5,a5,15
    800047e8:	ff07f793          	andi	a5,a5,-16
    800047ec:	40f10133          	sub	sp,sp,a5
    800047f0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800047f4:	00191c13          	slli	s8,s2,0x1
    800047f8:	012c07b3          	add	a5,s8,s2
    800047fc:	00379793          	slli	a5,a5,0x3
    80004800:	00fa07b3          	add	a5,s4,a5
    80004804:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004808:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000480c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004810:	02800513          	li	a0,40
    80004814:	ffffe097          	auipc	ra,0xffffe
    80004818:	90c080e7          	jalr	-1780(ra) # 80002120 <_Znwm>
    8000481c:	00050b13          	mv	s6,a0
    80004820:	012c0c33          	add	s8,s8,s2
    80004824:	003c1c13          	slli	s8,s8,0x3
    80004828:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	a7c080e7          	jalr	-1412(ra) # 800022a8 <_ZN6ThreadC1Ev>
    80004834:	00005797          	auipc	a5,0x5
    80004838:	c5478793          	addi	a5,a5,-940 # 80009488 <_ZTV12ConsumerSync+0x10>
    8000483c:	00fb3023          	sd	a5,0(s6)
    80004840:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004844:	000b0513          	mv	a0,s6
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	9bc080e7          	jalr	-1604(ra) # 80002204 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004850:	00000493          	li	s1,0
    80004854:	0380006f          	j	8000488c <_Z29producerConsumer_CPP_Sync_APIv+0x234>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004858:	00005797          	auipc	a5,0x5
    8000485c:	c0878793          	addi	a5,a5,-1016 # 80009460 <_ZTV12ProducerSync+0x10>
    80004860:	00fcb023          	sd	a5,0(s9)
    80004864:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004868:	00349793          	slli	a5,s1,0x3
    8000486c:	00f987b3          	add	a5,s3,a5
    80004870:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004874:	00349793          	slli	a5,s1,0x3
    80004878:	00f987b3          	add	a5,s3,a5
    8000487c:	0007b503          	ld	a0,0(a5)
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	984080e7          	jalr	-1660(ra) # 80002204 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004888:	0014849b          	addiw	s1,s1,1
    8000488c:	0b24d063          	bge	s1,s2,8000492c <_Z29producerConsumer_CPP_Sync_APIv+0x2d4>
        data[i].id = i;
    80004890:	00149793          	slli	a5,s1,0x1
    80004894:	009787b3          	add	a5,a5,s1
    80004898:	00379793          	slli	a5,a5,0x3
    8000489c:	00fa07b3          	add	a5,s4,a5
    800048a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800048a4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800048a8:	00007717          	auipc	a4,0x7
    800048ac:	0b073703          	ld	a4,176(a4) # 8000b958 <_ZL10waitForAll>
    800048b0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800048b4:	02905863          	blez	s1,800048e4 <_Z29producerConsumer_CPP_Sync_APIv+0x28c>
            threads[i] = new ProducerSync(data+i);
    800048b8:	02800513          	li	a0,40
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	864080e7          	jalr	-1948(ra) # 80002120 <_Znwm>
    800048c4:	00050c93          	mv	s9,a0
    800048c8:	00149c13          	slli	s8,s1,0x1
    800048cc:	009c0c33          	add	s8,s8,s1
    800048d0:	003c1c13          	slli	s8,s8,0x3
    800048d4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	9d0080e7          	jalr	-1584(ra) # 800022a8 <_ZN6ThreadC1Ev>
    800048e0:	f79ff06f          	j	80004858 <_Z29producerConsumer_CPP_Sync_APIv+0x200>
            threads[i] = new ProducerKeyboard(data+i);
    800048e4:	02800513          	li	a0,40
    800048e8:	ffffe097          	auipc	ra,0xffffe
    800048ec:	838080e7          	jalr	-1992(ra) # 80002120 <_Znwm>
    800048f0:	00050c93          	mv	s9,a0
    800048f4:	00149c13          	slli	s8,s1,0x1
    800048f8:	009c0c33          	add	s8,s8,s1
    800048fc:	003c1c13          	slli	s8,s8,0x3
    80004900:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	9a4080e7          	jalr	-1628(ra) # 800022a8 <_ZN6ThreadC1Ev>
    8000490c:	00005797          	auipc	a5,0x5
    80004910:	b2c78793          	addi	a5,a5,-1236 # 80009438 <_ZTV16ProducerKeyboard+0x10>
    80004914:	00fcb023          	sd	a5,0(s9)
    80004918:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000491c:	00349793          	slli	a5,s1,0x3
    80004920:	00f987b3          	add	a5,s3,a5
    80004924:	0197b023          	sd	s9,0(a5)
    80004928:	f4dff06f          	j	80004874 <_Z29producerConsumer_CPP_Sync_APIv+0x21c>
    Thread::dispatch();
    8000492c:	ffffe097          	auipc	ra,0xffffe
    80004930:	92c080e7          	jalr	-1748(ra) # 80002258 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004934:	00000493          	li	s1,0
    80004938:	00994e63          	blt	s2,s1,80004954 <_Z29producerConsumer_CPP_Sync_APIv+0x2fc>
        waitForAll->wait();
    8000493c:	00007517          	auipc	a0,0x7
    80004940:	01c53503          	ld	a0,28(a0) # 8000b958 <_ZL10waitForAll>
    80004944:	ffffe097          	auipc	ra,0xffffe
    80004948:	9c8080e7          	jalr	-1592(ra) # 8000230c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000494c:	0014849b          	addiw	s1,s1,1
    80004950:	fe9ff06f          	j	80004938 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
    for (int i = 0; i < threadNum; i++) {
    80004954:	00000493          	li	s1,0
    80004958:	0080006f          	j	80004960 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000495c:	0014849b          	addiw	s1,s1,1
    80004960:	0324d263          	bge	s1,s2,80004984 <_Z29producerConsumer_CPP_Sync_APIv+0x32c>
        delete threads[i];
    80004964:	00349793          	slli	a5,s1,0x3
    80004968:	00f987b3          	add	a5,s3,a5
    8000496c:	0007b503          	ld	a0,0(a5)
    80004970:	fe0506e3          	beqz	a0,8000495c <_Z29producerConsumer_CPP_Sync_APIv+0x304>
    80004974:	00053783          	ld	a5,0(a0)
    80004978:	0087b783          	ld	a5,8(a5)
    8000497c:	000780e7          	jalr	a5
    80004980:	fddff06f          	j	8000495c <_Z29producerConsumer_CPP_Sync_APIv+0x304>
    delete consumerThread;
    80004984:	000b0a63          	beqz	s6,80004998 <_Z29producerConsumer_CPP_Sync_APIv+0x340>
    80004988:	000b3783          	ld	a5,0(s6)
    8000498c:	0087b783          	ld	a5,8(a5)
    80004990:	000b0513          	mv	a0,s6
    80004994:	000780e7          	jalr	a5
    delete waitForAll;
    80004998:	00007517          	auipc	a0,0x7
    8000499c:	fc053503          	ld	a0,-64(a0) # 8000b958 <_ZL10waitForAll>
    800049a0:	00050863          	beqz	a0,800049b0 <_Z29producerConsumer_CPP_Sync_APIv+0x358>
    800049a4:	00053783          	ld	a5,0(a0)
    800049a8:	0087b783          	ld	a5,8(a5)
    800049ac:	000780e7          	jalr	a5
    delete buffer;
    800049b0:	000a8e63          	beqz	s5,800049cc <_Z29producerConsumer_CPP_Sync_APIv+0x374>
    800049b4:	000a8513          	mv	a0,s5
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	5c8080e7          	jalr	1480(ra) # 80005f80 <_ZN9BufferCPPD1Ev>
    800049c0:	000a8513          	mv	a0,s5
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	784080e7          	jalr	1924(ra) # 80002148 <_ZdlPv>
    800049cc:	000b8113          	mv	sp,s7

}
    800049d0:	f8040113          	addi	sp,s0,-128
    800049d4:	07813083          	ld	ra,120(sp)
    800049d8:	07013403          	ld	s0,112(sp)
    800049dc:	06813483          	ld	s1,104(sp)
    800049e0:	06013903          	ld	s2,96(sp)
    800049e4:	05813983          	ld	s3,88(sp)
    800049e8:	05013a03          	ld	s4,80(sp)
    800049ec:	04813a83          	ld	s5,72(sp)
    800049f0:	04013b03          	ld	s6,64(sp)
    800049f4:	03813b83          	ld	s7,56(sp)
    800049f8:	03013c03          	ld	s8,48(sp)
    800049fc:	02813c83          	ld	s9,40(sp)
    80004a00:	08010113          	addi	sp,sp,128
    80004a04:	00008067          	ret
    80004a08:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004a0c:	000a8513          	mv	a0,s5
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	738080e7          	jalr	1848(ra) # 80002148 <_ZdlPv>
    80004a18:	00048513          	mv	a0,s1
    80004a1c:	00008097          	auipc	ra,0x8
    80004a20:	2cc080e7          	jalr	716(ra) # 8000cce8 <_Unwind_Resume>
    80004a24:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004a28:	00048513          	mv	a0,s1
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	71c080e7          	jalr	1820(ra) # 80002148 <_ZdlPv>
    80004a34:	00090513          	mv	a0,s2
    80004a38:	00008097          	auipc	ra,0x8
    80004a3c:	2b0080e7          	jalr	688(ra) # 8000cce8 <_Unwind_Resume>
    80004a40:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004a44:	000b0513          	mv	a0,s6
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	700080e7          	jalr	1792(ra) # 80002148 <_ZdlPv>
    80004a50:	00048513          	mv	a0,s1
    80004a54:	00008097          	auipc	ra,0x8
    80004a58:	294080e7          	jalr	660(ra) # 8000cce8 <_Unwind_Resume>
    80004a5c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004a60:	000c8513          	mv	a0,s9
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	6e4080e7          	jalr	1764(ra) # 80002148 <_ZdlPv>
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	00008097          	auipc	ra,0x8
    80004a74:	278080e7          	jalr	632(ra) # 8000cce8 <_Unwind_Resume>
    80004a78:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004a7c:	000c8513          	mv	a0,s9
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	6c8080e7          	jalr	1736(ra) # 80002148 <_ZdlPv>
    80004a88:	00048513          	mv	a0,s1
    80004a8c:	00008097          	auipc	ra,0x8
    80004a90:	25c080e7          	jalr	604(ra) # 8000cce8 <_Unwind_Resume>

0000000080004a94 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004a94:	ff010113          	addi	sp,sp,-16
    80004a98:	00113423          	sd	ra,8(sp)
    80004a9c:	00813023          	sd	s0,0(sp)
    80004aa0:	01010413          	addi	s0,sp,16
    80004aa4:	00005797          	auipc	a5,0x5
    80004aa8:	9e478793          	addi	a5,a5,-1564 # 80009488 <_ZTV12ConsumerSync+0x10>
    80004aac:	00f53023          	sd	a5,0(a0)
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	5bc080e7          	jalr	1468(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004ab8:	00813083          	ld	ra,8(sp)
    80004abc:	00013403          	ld	s0,0(sp)
    80004ac0:	01010113          	addi	sp,sp,16
    80004ac4:	00008067          	ret

0000000080004ac8 <_ZN12ConsumerSyncD0Ev>:
    80004ac8:	fe010113          	addi	sp,sp,-32
    80004acc:	00113c23          	sd	ra,24(sp)
    80004ad0:	00813823          	sd	s0,16(sp)
    80004ad4:	00913423          	sd	s1,8(sp)
    80004ad8:	02010413          	addi	s0,sp,32
    80004adc:	00050493          	mv	s1,a0
    80004ae0:	00005797          	auipc	a5,0x5
    80004ae4:	9a878793          	addi	a5,a5,-1624 # 80009488 <_ZTV12ConsumerSync+0x10>
    80004ae8:	00f53023          	sd	a5,0(a0)
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	580080e7          	jalr	1408(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004af4:	00048513          	mv	a0,s1
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	650080e7          	jalr	1616(ra) # 80002148 <_ZdlPv>
    80004b00:	01813083          	ld	ra,24(sp)
    80004b04:	01013403          	ld	s0,16(sp)
    80004b08:	00813483          	ld	s1,8(sp)
    80004b0c:	02010113          	addi	sp,sp,32
    80004b10:	00008067          	ret

0000000080004b14 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004b14:	ff010113          	addi	sp,sp,-16
    80004b18:	00113423          	sd	ra,8(sp)
    80004b1c:	00813023          	sd	s0,0(sp)
    80004b20:	01010413          	addi	s0,sp,16
    80004b24:	00005797          	auipc	a5,0x5
    80004b28:	93c78793          	addi	a5,a5,-1732 # 80009460 <_ZTV12ProducerSync+0x10>
    80004b2c:	00f53023          	sd	a5,0(a0)
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	53c080e7          	jalr	1340(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004b38:	00813083          	ld	ra,8(sp)
    80004b3c:	00013403          	ld	s0,0(sp)
    80004b40:	01010113          	addi	sp,sp,16
    80004b44:	00008067          	ret

0000000080004b48 <_ZN12ProducerSyncD0Ev>:
    80004b48:	fe010113          	addi	sp,sp,-32
    80004b4c:	00113c23          	sd	ra,24(sp)
    80004b50:	00813823          	sd	s0,16(sp)
    80004b54:	00913423          	sd	s1,8(sp)
    80004b58:	02010413          	addi	s0,sp,32
    80004b5c:	00050493          	mv	s1,a0
    80004b60:	00005797          	auipc	a5,0x5
    80004b64:	90078793          	addi	a5,a5,-1792 # 80009460 <_ZTV12ProducerSync+0x10>
    80004b68:	00f53023          	sd	a5,0(a0)
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	500080e7          	jalr	1280(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004b74:	00048513          	mv	a0,s1
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	5d0080e7          	jalr	1488(ra) # 80002148 <_ZdlPv>
    80004b80:	01813083          	ld	ra,24(sp)
    80004b84:	01013403          	ld	s0,16(sp)
    80004b88:	00813483          	ld	s1,8(sp)
    80004b8c:	02010113          	addi	sp,sp,32
    80004b90:	00008067          	ret

0000000080004b94 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004b94:	ff010113          	addi	sp,sp,-16
    80004b98:	00113423          	sd	ra,8(sp)
    80004b9c:	00813023          	sd	s0,0(sp)
    80004ba0:	01010413          	addi	s0,sp,16
    80004ba4:	00005797          	auipc	a5,0x5
    80004ba8:	89478793          	addi	a5,a5,-1900 # 80009438 <_ZTV16ProducerKeyboard+0x10>
    80004bac:	00f53023          	sd	a5,0(a0)
    80004bb0:	ffffd097          	auipc	ra,0xffffd
    80004bb4:	4bc080e7          	jalr	1212(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004bb8:	00813083          	ld	ra,8(sp)
    80004bbc:	00013403          	ld	s0,0(sp)
    80004bc0:	01010113          	addi	sp,sp,16
    80004bc4:	00008067          	ret

0000000080004bc8 <_ZN16ProducerKeyboardD0Ev>:
    80004bc8:	fe010113          	addi	sp,sp,-32
    80004bcc:	00113c23          	sd	ra,24(sp)
    80004bd0:	00813823          	sd	s0,16(sp)
    80004bd4:	00913423          	sd	s1,8(sp)
    80004bd8:	02010413          	addi	s0,sp,32
    80004bdc:	00050493          	mv	s1,a0
    80004be0:	00005797          	auipc	a5,0x5
    80004be4:	85878793          	addi	a5,a5,-1960 # 80009438 <_ZTV16ProducerKeyboard+0x10>
    80004be8:	00f53023          	sd	a5,0(a0)
    80004bec:	ffffd097          	auipc	ra,0xffffd
    80004bf0:	480080e7          	jalr	1152(ra) # 8000206c <_ZN6ThreadD1Ev>
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	ffffd097          	auipc	ra,0xffffd
    80004bfc:	550080e7          	jalr	1360(ra) # 80002148 <_ZdlPv>
    80004c00:	01813083          	ld	ra,24(sp)
    80004c04:	01013403          	ld	s0,16(sp)
    80004c08:	00813483          	ld	s1,8(sp)
    80004c0c:	02010113          	addi	sp,sp,32
    80004c10:	00008067          	ret

0000000080004c14 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004c14:	ff010113          	addi	sp,sp,-16
    80004c18:	00113423          	sd	ra,8(sp)
    80004c1c:	00813023          	sd	s0,0(sp)
    80004c20:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004c24:	02053583          	ld	a1,32(a0)
    80004c28:	fffff097          	auipc	ra,0xfffff
    80004c2c:	7e8080e7          	jalr	2024(ra) # 80004410 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004c30:	00813083          	ld	ra,8(sp)
    80004c34:	00013403          	ld	s0,0(sp)
    80004c38:	01010113          	addi	sp,sp,16
    80004c3c:	00008067          	ret

0000000080004c40 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004c40:	ff010113          	addi	sp,sp,-16
    80004c44:	00113423          	sd	ra,8(sp)
    80004c48:	00813023          	sd	s0,0(sp)
    80004c4c:	01010413          	addi	s0,sp,16
        producer(td);
    80004c50:	02053583          	ld	a1,32(a0)
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	87c080e7          	jalr	-1924(ra) # 800044d0 <_ZN12ProducerSync8producerEPv>
    }
    80004c5c:	00813083          	ld	ra,8(sp)
    80004c60:	00013403          	ld	s0,0(sp)
    80004c64:	01010113          	addi	sp,sp,16
    80004c68:	00008067          	ret

0000000080004c6c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004c6c:	ff010113          	addi	sp,sp,-16
    80004c70:	00113423          	sd	ra,8(sp)
    80004c74:	00813023          	sd	s0,0(sp)
    80004c78:	01010413          	addi	s0,sp,16
        consumer(td);
    80004c7c:	02053583          	ld	a1,32(a0)
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	8e4080e7          	jalr	-1820(ra) # 80004564 <_ZN12ConsumerSync8consumerEPv>
    }
    80004c88:	00813083          	ld	ra,8(sp)
    80004c8c:	00013403          	ld	s0,0(sp)
    80004c90:	01010113          	addi	sp,sp,16
    80004c94:	00008067          	ret

0000000080004c98 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004c98:	fe010113          	addi	sp,sp,-32
    80004c9c:	00113c23          	sd	ra,24(sp)
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	02010413          	addi	s0,sp,32
    80004cac:	00050493          	mv	s1,a0
    LOCK();
    80004cb0:	00100613          	li	a2,1
    80004cb4:	00000593          	li	a1,0
    80004cb8:	00007517          	auipc	a0,0x7
    80004cbc:	ca850513          	addi	a0,a0,-856 # 8000b960 <lockPrint>
    80004cc0:	ffffc097          	auipc	ra,0xffffc
    80004cc4:	570080e7          	jalr	1392(ra) # 80001230 <copy_and_swap>
    80004cc8:	00050863          	beqz	a0,80004cd8 <_Z11printStringPKc+0x40>
    80004ccc:	ffffe097          	auipc	ra,0xffffe
    80004cd0:	bc4080e7          	jalr	-1084(ra) # 80002890 <_Z15thread_dispatchv>
    80004cd4:	fddff06f          	j	80004cb0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004cd8:	0004c503          	lbu	a0,0(s1)
    80004cdc:	00050a63          	beqz	a0,80004cf0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004ce0:	ffffe097          	auipc	ra,0xffffe
    80004ce4:	d2c080e7          	jalr	-724(ra) # 80002a0c <_Z4putcc>
        string++;
    80004ce8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004cec:	fedff06f          	j	80004cd8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004cf0:	00000613          	li	a2,0
    80004cf4:	00100593          	li	a1,1
    80004cf8:	00007517          	auipc	a0,0x7
    80004cfc:	c6850513          	addi	a0,a0,-920 # 8000b960 <lockPrint>
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	530080e7          	jalr	1328(ra) # 80001230 <copy_and_swap>
    80004d08:	fe0514e3          	bnez	a0,80004cf0 <_Z11printStringPKc+0x58>
}
    80004d0c:	01813083          	ld	ra,24(sp)
    80004d10:	01013403          	ld	s0,16(sp)
    80004d14:	00813483          	ld	s1,8(sp)
    80004d18:	02010113          	addi	sp,sp,32
    80004d1c:	00008067          	ret

0000000080004d20 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004d20:	fd010113          	addi	sp,sp,-48
    80004d24:	02113423          	sd	ra,40(sp)
    80004d28:	02813023          	sd	s0,32(sp)
    80004d2c:	00913c23          	sd	s1,24(sp)
    80004d30:	01213823          	sd	s2,16(sp)
    80004d34:	01313423          	sd	s3,8(sp)
    80004d38:	01413023          	sd	s4,0(sp)
    80004d3c:	03010413          	addi	s0,sp,48
    80004d40:	00050993          	mv	s3,a0
    80004d44:	00058a13          	mv	s4,a1
    LOCK();
    80004d48:	00100613          	li	a2,1
    80004d4c:	00000593          	li	a1,0
    80004d50:	00007517          	auipc	a0,0x7
    80004d54:	c1050513          	addi	a0,a0,-1008 # 8000b960 <lockPrint>
    80004d58:	ffffc097          	auipc	ra,0xffffc
    80004d5c:	4d8080e7          	jalr	1240(ra) # 80001230 <copy_and_swap>
    80004d60:	00050863          	beqz	a0,80004d70 <_Z9getStringPci+0x50>
    80004d64:	ffffe097          	auipc	ra,0xffffe
    80004d68:	b2c080e7          	jalr	-1236(ra) # 80002890 <_Z15thread_dispatchv>
    80004d6c:	fddff06f          	j	80004d48 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004d70:	00000913          	li	s2,0
    80004d74:	00090493          	mv	s1,s2
    80004d78:	0019091b          	addiw	s2,s2,1
    80004d7c:	03495a63          	bge	s2,s4,80004db0 <_Z9getStringPci+0x90>
        cc = getc();
    80004d80:	ffffe097          	auipc	ra,0xffffe
    80004d84:	c60080e7          	jalr	-928(ra) # 800029e0 <_Z4getcv>
        if(cc < 1)
    80004d88:	02050463          	beqz	a0,80004db0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004d8c:	009984b3          	add	s1,s3,s1
    80004d90:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004d94:	00a00793          	li	a5,10
    80004d98:	00f50a63          	beq	a0,a5,80004dac <_Z9getStringPci+0x8c>
    80004d9c:	00d00793          	li	a5,13
    80004da0:	fcf51ae3          	bne	a0,a5,80004d74 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004da4:	00090493          	mv	s1,s2
    80004da8:	0080006f          	j	80004db0 <_Z9getStringPci+0x90>
    80004dac:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004db0:	009984b3          	add	s1,s3,s1
    80004db4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004db8:	00000613          	li	a2,0
    80004dbc:	00100593          	li	a1,1
    80004dc0:	00007517          	auipc	a0,0x7
    80004dc4:	ba050513          	addi	a0,a0,-1120 # 8000b960 <lockPrint>
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	468080e7          	jalr	1128(ra) # 80001230 <copy_and_swap>
    80004dd0:	fe0514e3          	bnez	a0,80004db8 <_Z9getStringPci+0x98>
    return buf;
}
    80004dd4:	00098513          	mv	a0,s3
    80004dd8:	02813083          	ld	ra,40(sp)
    80004ddc:	02013403          	ld	s0,32(sp)
    80004de0:	01813483          	ld	s1,24(sp)
    80004de4:	01013903          	ld	s2,16(sp)
    80004de8:	00813983          	ld	s3,8(sp)
    80004dec:	00013a03          	ld	s4,0(sp)
    80004df0:	03010113          	addi	sp,sp,48
    80004df4:	00008067          	ret

0000000080004df8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004df8:	ff010113          	addi	sp,sp,-16
    80004dfc:	00813423          	sd	s0,8(sp)
    80004e00:	01010413          	addi	s0,sp,16
    80004e04:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004e08:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004e0c:	0006c603          	lbu	a2,0(a3)
    80004e10:	fd06071b          	addiw	a4,a2,-48
    80004e14:	0ff77713          	andi	a4,a4,255
    80004e18:	00900793          	li	a5,9
    80004e1c:	02e7e063          	bltu	a5,a4,80004e3c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004e20:	0025179b          	slliw	a5,a0,0x2
    80004e24:	00a787bb          	addw	a5,a5,a0
    80004e28:	0017979b          	slliw	a5,a5,0x1
    80004e2c:	00168693          	addi	a3,a3,1
    80004e30:	00c787bb          	addw	a5,a5,a2
    80004e34:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004e38:	fd5ff06f          	j	80004e0c <_Z11stringToIntPKc+0x14>
    return n;
}
    80004e3c:	00813403          	ld	s0,8(sp)
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret

0000000080004e48 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004e48:	fc010113          	addi	sp,sp,-64
    80004e4c:	02113c23          	sd	ra,56(sp)
    80004e50:	02813823          	sd	s0,48(sp)
    80004e54:	02913423          	sd	s1,40(sp)
    80004e58:	03213023          	sd	s2,32(sp)
    80004e5c:	01313c23          	sd	s3,24(sp)
    80004e60:	04010413          	addi	s0,sp,64
    80004e64:	00050493          	mv	s1,a0
    80004e68:	00058913          	mv	s2,a1
    80004e6c:	00060993          	mv	s3,a2
    LOCK();
    80004e70:	00100613          	li	a2,1
    80004e74:	00000593          	li	a1,0
    80004e78:	00007517          	auipc	a0,0x7
    80004e7c:	ae850513          	addi	a0,a0,-1304 # 8000b960 <lockPrint>
    80004e80:	ffffc097          	auipc	ra,0xffffc
    80004e84:	3b0080e7          	jalr	944(ra) # 80001230 <copy_and_swap>
    80004e88:	00050863          	beqz	a0,80004e98 <_Z8printIntiii+0x50>
    80004e8c:	ffffe097          	auipc	ra,0xffffe
    80004e90:	a04080e7          	jalr	-1532(ra) # 80002890 <_Z15thread_dispatchv>
    80004e94:	fddff06f          	j	80004e70 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004e98:	00098463          	beqz	s3,80004ea0 <_Z8printIntiii+0x58>
    80004e9c:	0804c463          	bltz	s1,80004f24 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004ea0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004ea4:	00000593          	li	a1,0
    }

    i = 0;
    80004ea8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004eac:	0009079b          	sext.w	a5,s2
    80004eb0:	0325773b          	remuw	a4,a0,s2
    80004eb4:	00048613          	mv	a2,s1
    80004eb8:	0014849b          	addiw	s1,s1,1
    80004ebc:	02071693          	slli	a3,a4,0x20
    80004ec0:	0206d693          	srli	a3,a3,0x20
    80004ec4:	00006717          	auipc	a4,0x6
    80004ec8:	62c70713          	addi	a4,a4,1580 # 8000b4f0 <digits>
    80004ecc:	00d70733          	add	a4,a4,a3
    80004ed0:	00074683          	lbu	a3,0(a4)
    80004ed4:	fd040713          	addi	a4,s0,-48
    80004ed8:	00c70733          	add	a4,a4,a2
    80004edc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004ee0:	0005071b          	sext.w	a4,a0
    80004ee4:	0325553b          	divuw	a0,a0,s2
    80004ee8:	fcf772e3          	bgeu	a4,a5,80004eac <_Z8printIntiii+0x64>
    if(neg)
    80004eec:	00058c63          	beqz	a1,80004f04 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004ef0:	fd040793          	addi	a5,s0,-48
    80004ef4:	009784b3          	add	s1,a5,s1
    80004ef8:	02d00793          	li	a5,45
    80004efc:	fef48823          	sb	a5,-16(s1)
    80004f00:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004f04:	fff4849b          	addiw	s1,s1,-1
    80004f08:	0204c463          	bltz	s1,80004f30 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004f0c:	fd040793          	addi	a5,s0,-48
    80004f10:	009787b3          	add	a5,a5,s1
    80004f14:	ff07c503          	lbu	a0,-16(a5)
    80004f18:	ffffe097          	auipc	ra,0xffffe
    80004f1c:	af4080e7          	jalr	-1292(ra) # 80002a0c <_Z4putcc>
    80004f20:	fe5ff06f          	j	80004f04 <_Z8printIntiii+0xbc>
        x = -xx;
    80004f24:	4090053b          	negw	a0,s1
        neg = 1;
    80004f28:	00100593          	li	a1,1
        x = -xx;
    80004f2c:	f7dff06f          	j	80004ea8 <_Z8printIntiii+0x60>

    UNLOCK();
    80004f30:	00000613          	li	a2,0
    80004f34:	00100593          	li	a1,1
    80004f38:	00007517          	auipc	a0,0x7
    80004f3c:	a2850513          	addi	a0,a0,-1496 # 8000b960 <lockPrint>
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	2f0080e7          	jalr	752(ra) # 80001230 <copy_and_swap>
    80004f48:	fe0514e3          	bnez	a0,80004f30 <_Z8printIntiii+0xe8>
    80004f4c:	03813083          	ld	ra,56(sp)
    80004f50:	03013403          	ld	s0,48(sp)
    80004f54:	02813483          	ld	s1,40(sp)
    80004f58:	02013903          	ld	s2,32(sp)
    80004f5c:	01813983          	ld	s3,24(sp)
    80004f60:	04010113          	addi	sp,sp,64
    80004f64:	00008067          	ret

0000000080004f68 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004f68:	fe010113          	addi	sp,sp,-32
    80004f6c:	00113c23          	sd	ra,24(sp)
    80004f70:	00813823          	sd	s0,16(sp)
    80004f74:	00913423          	sd	s1,8(sp)
    80004f78:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	52450513          	addi	a0,a0,1316 # 800094a0 <_ZTV12ConsumerSync+0x28>
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	d14080e7          	jalr	-748(ra) # 80004c98 <_Z11printStringPKc>
    int test = getc() - '0';
    80004f8c:	ffffe097          	auipc	ra,0xffffe
    80004f90:	a54080e7          	jalr	-1452(ra) # 800029e0 <_Z4getcv>
    80004f94:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80004f98:	ffffe097          	auipc	ra,0xffffe
    80004f9c:	a48080e7          	jalr	-1464(ra) # 800029e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80004fa0:	00700793          	li	a5,7
    80004fa4:	1097e263          	bltu	a5,s1,800050a8 <_Z8userMainv+0x140>
    80004fa8:	00249493          	slli	s1,s1,0x2
    80004fac:	00004717          	auipc	a4,0x4
    80004fb0:	74c70713          	addi	a4,a4,1868 # 800096f8 <_ZTV12ConsumerSync+0x280>
    80004fb4:	00e484b3          	add	s1,s1,a4
    80004fb8:	0004a783          	lw	a5,0(s1)
    80004fbc:	00e787b3          	add	a5,a5,a4
    80004fc0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80004fc4:	fffff097          	auipc	ra,0xfffff
    80004fc8:	9b4080e7          	jalr	-1612(ra) # 80003978 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004fcc:	00004517          	auipc	a0,0x4
    80004fd0:	4f450513          	addi	a0,a0,1268 # 800094c0 <_ZTV12ConsumerSync+0x48>
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	cc4080e7          	jalr	-828(ra) # 80004c98 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	02010113          	addi	sp,sp,32
    80004fec:	00008067          	ret
            Threads_CPP_API_test();
    80004ff0:	fffff097          	auipc	ra,0xfffff
    80004ff4:	f60080e7          	jalr	-160(ra) # 80003f50 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004ff8:	00004517          	auipc	a0,0x4
    80004ffc:	50850513          	addi	a0,a0,1288 # 80009500 <_ZTV12ConsumerSync+0x88>
    80005000:	00000097          	auipc	ra,0x0
    80005004:	c98080e7          	jalr	-872(ra) # 80004c98 <_Z11printStringPKc>
            break;
    80005008:	fd5ff06f          	j	80004fdc <_Z8userMainv+0x74>
            producerConsumer_C_API();
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	298080e7          	jalr	664(ra) # 800062a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005014:	00004517          	auipc	a0,0x4
    80005018:	52c50513          	addi	a0,a0,1324 # 80009540 <_ZTV12ConsumerSync+0xc8>
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	c7c080e7          	jalr	-900(ra) # 80004c98 <_Z11printStringPKc>
            break;
    80005024:	fb9ff06f          	j	80004fdc <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005028:	fffff097          	auipc	ra,0xfffff
    8000502c:	630080e7          	jalr	1584(ra) # 80004658 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005030:	00004517          	auipc	a0,0x4
    80005034:	56050513          	addi	a0,a0,1376 # 80009590 <_ZTV12ConsumerSync+0x118>
    80005038:	00000097          	auipc	ra,0x0
    8000503c:	c60080e7          	jalr	-928(ra) # 80004c98 <_Z11printStringPKc>
            break;
    80005040:	f9dff06f          	j	80004fdc <_Z8userMainv+0x74>
            testSleeping();
    80005044:	00001097          	auipc	ra,0x1
    80005048:	bbc080e7          	jalr	-1092(ra) # 80005c00 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000504c:	00004517          	auipc	a0,0x4
    80005050:	59c50513          	addi	a0,a0,1436 # 800095e8 <_ZTV12ConsumerSync+0x170>
    80005054:	00000097          	auipc	ra,0x0
    80005058:	c44080e7          	jalr	-956(ra) # 80004c98 <_Z11printStringPKc>
            break;
    8000505c:	f81ff06f          	j	80004fdc <_Z8userMainv+0x74>
            testConsumerProducer();
    80005060:	00000097          	auipc	ra,0x0
    80005064:	37c080e7          	jalr	892(ra) # 800053dc <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005068:	00004517          	auipc	a0,0x4
    8000506c:	5b050513          	addi	a0,a0,1456 # 80009618 <_ZTV12ConsumerSync+0x1a0>
    80005070:	00000097          	auipc	ra,0x0
    80005074:	c28080e7          	jalr	-984(ra) # 80004c98 <_Z11printStringPKc>
            break;
    80005078:	f65ff06f          	j	80004fdc <_Z8userMainv+0x74>
            System_Mode_test();
    8000507c:	ffffe097          	auipc	ra,0xffffe
    80005080:	324080e7          	jalr	804(ra) # 800033a0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005084:	00004517          	auipc	a0,0x4
    80005088:	5d450513          	addi	a0,a0,1492 # 80009658 <_ZTV12ConsumerSync+0x1e0>
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	c0c080e7          	jalr	-1012(ra) # 80004c98 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005094:	00004517          	auipc	a0,0x4
    80005098:	5e450513          	addi	a0,a0,1508 # 80009678 <_ZTV12ConsumerSync+0x200>
    8000509c:	00000097          	auipc	ra,0x0
    800050a0:	bfc080e7          	jalr	-1028(ra) # 80004c98 <_Z11printStringPKc>
            break;
    800050a4:	f39ff06f          	j	80004fdc <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800050a8:	00004517          	auipc	a0,0x4
    800050ac:	62850513          	addi	a0,a0,1576 # 800096d0 <_ZTV12ConsumerSync+0x258>
    800050b0:	00000097          	auipc	ra,0x0
    800050b4:	be8080e7          	jalr	-1048(ra) # 80004c98 <_Z11printStringPKc>
    800050b8:	f25ff06f          	j	80004fdc <_Z8userMainv+0x74>

00000000800050bc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800050bc:	fe010113          	addi	sp,sp,-32
    800050c0:	00113c23          	sd	ra,24(sp)
    800050c4:	00813823          	sd	s0,16(sp)
    800050c8:	00913423          	sd	s1,8(sp)
    800050cc:	01213023          	sd	s2,0(sp)
    800050d0:	02010413          	addi	s0,sp,32
    800050d4:	00050493          	mv	s1,a0
    800050d8:	00058913          	mv	s2,a1
    800050dc:	0015879b          	addiw	a5,a1,1
    800050e0:	0007851b          	sext.w	a0,a5
    800050e4:	00f4a023          	sw	a5,0(s1)
    800050e8:	0004a823          	sw	zero,16(s1)
    800050ec:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800050f0:	00251513          	slli	a0,a0,0x2
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	6dc080e7          	jalr	1756(ra) # 800027d0 <_Z9mem_allocm>
    800050fc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005100:	00000593          	li	a1,0
    80005104:	02048513          	addi	a0,s1,32
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	7ac080e7          	jalr	1964(ra) # 800028b4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005110:	00090593          	mv	a1,s2
    80005114:	01848513          	addi	a0,s1,24
    80005118:	ffffd097          	auipc	ra,0xffffd
    8000511c:	79c080e7          	jalr	1948(ra) # 800028b4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005120:	00100593          	li	a1,1
    80005124:	02848513          	addi	a0,s1,40
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	78c080e7          	jalr	1932(ra) # 800028b4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005130:	00100593          	li	a1,1
    80005134:	03048513          	addi	a0,s1,48
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	77c080e7          	jalr	1916(ra) # 800028b4 <_Z8sem_openPP4_semj>
}
    80005140:	01813083          	ld	ra,24(sp)
    80005144:	01013403          	ld	s0,16(sp)
    80005148:	00813483          	ld	s1,8(sp)
    8000514c:	00013903          	ld	s2,0(sp)
    80005150:	02010113          	addi	sp,sp,32
    80005154:	00008067          	ret

0000000080005158 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005158:	fe010113          	addi	sp,sp,-32
    8000515c:	00113c23          	sd	ra,24(sp)
    80005160:	00813823          	sd	s0,16(sp)
    80005164:	00913423          	sd	s1,8(sp)
    80005168:	01213023          	sd	s2,0(sp)
    8000516c:	02010413          	addi	s0,sp,32
    80005170:	00050493          	mv	s1,a0
    80005174:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005178:	01853503          	ld	a0,24(a0)
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	79c080e7          	jalr	1948(ra) # 80002918 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005184:	0304b503          	ld	a0,48(s1)
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	790080e7          	jalr	1936(ra) # 80002918 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005190:	0084b783          	ld	a5,8(s1)
    80005194:	0144a703          	lw	a4,20(s1)
    80005198:	00271713          	slli	a4,a4,0x2
    8000519c:	00e787b3          	add	a5,a5,a4
    800051a0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800051a4:	0144a783          	lw	a5,20(s1)
    800051a8:	0017879b          	addiw	a5,a5,1
    800051ac:	0004a703          	lw	a4,0(s1)
    800051b0:	02e7e7bb          	remw	a5,a5,a4
    800051b4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800051b8:	0304b503          	ld	a0,48(s1)
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	78c080e7          	jalr	1932(ra) # 80002948 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800051c4:	0204b503          	ld	a0,32(s1)
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	780080e7          	jalr	1920(ra) # 80002948 <_Z10sem_signalP4_sem>

}
    800051d0:	01813083          	ld	ra,24(sp)
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	00013903          	ld	s2,0(sp)
    800051e0:	02010113          	addi	sp,sp,32
    800051e4:	00008067          	ret

00000000800051e8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800051e8:	fe010113          	addi	sp,sp,-32
    800051ec:	00113c23          	sd	ra,24(sp)
    800051f0:	00813823          	sd	s0,16(sp)
    800051f4:	00913423          	sd	s1,8(sp)
    800051f8:	01213023          	sd	s2,0(sp)
    800051fc:	02010413          	addi	s0,sp,32
    80005200:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005204:	02053503          	ld	a0,32(a0)
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	710080e7          	jalr	1808(ra) # 80002918 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005210:	0284b503          	ld	a0,40(s1)
    80005214:	ffffd097          	auipc	ra,0xffffd
    80005218:	704080e7          	jalr	1796(ra) # 80002918 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000521c:	0084b703          	ld	a4,8(s1)
    80005220:	0104a783          	lw	a5,16(s1)
    80005224:	00279693          	slli	a3,a5,0x2
    80005228:	00d70733          	add	a4,a4,a3
    8000522c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005230:	0017879b          	addiw	a5,a5,1
    80005234:	0004a703          	lw	a4,0(s1)
    80005238:	02e7e7bb          	remw	a5,a5,a4
    8000523c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005240:	0284b503          	ld	a0,40(s1)
    80005244:	ffffd097          	auipc	ra,0xffffd
    80005248:	704080e7          	jalr	1796(ra) # 80002948 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000524c:	0184b503          	ld	a0,24(s1)
    80005250:	ffffd097          	auipc	ra,0xffffd
    80005254:	6f8080e7          	jalr	1784(ra) # 80002948 <_Z10sem_signalP4_sem>

    return ret;
}
    80005258:	00090513          	mv	a0,s2
    8000525c:	01813083          	ld	ra,24(sp)
    80005260:	01013403          	ld	s0,16(sp)
    80005264:	00813483          	ld	s1,8(sp)
    80005268:	00013903          	ld	s2,0(sp)
    8000526c:	02010113          	addi	sp,sp,32
    80005270:	00008067          	ret

0000000080005274 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005274:	fe010113          	addi	sp,sp,-32
    80005278:	00113c23          	sd	ra,24(sp)
    8000527c:	00813823          	sd	s0,16(sp)
    80005280:	00913423          	sd	s1,8(sp)
    80005284:	01213023          	sd	s2,0(sp)
    80005288:	02010413          	addi	s0,sp,32
    8000528c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005290:	02853503          	ld	a0,40(a0)
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	684080e7          	jalr	1668(ra) # 80002918 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000529c:	0304b503          	ld	a0,48(s1)
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	678080e7          	jalr	1656(ra) # 80002918 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800052a8:	0144a783          	lw	a5,20(s1)
    800052ac:	0104a903          	lw	s2,16(s1)
    800052b0:	0327ce63          	blt	a5,s2,800052ec <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800052b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800052b8:	0304b503          	ld	a0,48(s1)
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	68c080e7          	jalr	1676(ra) # 80002948 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800052c4:	0284b503          	ld	a0,40(s1)
    800052c8:	ffffd097          	auipc	ra,0xffffd
    800052cc:	680080e7          	jalr	1664(ra) # 80002948 <_Z10sem_signalP4_sem>

    return ret;
}
    800052d0:	00090513          	mv	a0,s2
    800052d4:	01813083          	ld	ra,24(sp)
    800052d8:	01013403          	ld	s0,16(sp)
    800052dc:	00813483          	ld	s1,8(sp)
    800052e0:	00013903          	ld	s2,0(sp)
    800052e4:	02010113          	addi	sp,sp,32
    800052e8:	00008067          	ret
        ret = cap - head + tail;
    800052ec:	0004a703          	lw	a4,0(s1)
    800052f0:	4127093b          	subw	s2,a4,s2
    800052f4:	00f9093b          	addw	s2,s2,a5
    800052f8:	fc1ff06f          	j	800052b8 <_ZN6Buffer6getCntEv+0x44>

00000000800052fc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800052fc:	fe010113          	addi	sp,sp,-32
    80005300:	00113c23          	sd	ra,24(sp)
    80005304:	00813823          	sd	s0,16(sp)
    80005308:	00913423          	sd	s1,8(sp)
    8000530c:	02010413          	addi	s0,sp,32
    80005310:	00050493          	mv	s1,a0
    putc('\n');
    80005314:	00a00513          	li	a0,10
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	6f4080e7          	jalr	1780(ra) # 80002a0c <_Z4putcc>
    printString("Buffer deleted!\n");
    80005320:	00004517          	auipc	a0,0x4
    80005324:	3f850513          	addi	a0,a0,1016 # 80009718 <_ZTV12ConsumerSync+0x2a0>
    80005328:	00000097          	auipc	ra,0x0
    8000532c:	970080e7          	jalr	-1680(ra) # 80004c98 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005330:	00048513          	mv	a0,s1
    80005334:	00000097          	auipc	ra,0x0
    80005338:	f40080e7          	jalr	-192(ra) # 80005274 <_ZN6Buffer6getCntEv>
    8000533c:	02a05c63          	blez	a0,80005374 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005340:	0084b783          	ld	a5,8(s1)
    80005344:	0104a703          	lw	a4,16(s1)
    80005348:	00271713          	slli	a4,a4,0x2
    8000534c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005350:	0007c503          	lbu	a0,0(a5)
    80005354:	ffffd097          	auipc	ra,0xffffd
    80005358:	6b8080e7          	jalr	1720(ra) # 80002a0c <_Z4putcc>
        head = (head + 1) % cap;
    8000535c:	0104a783          	lw	a5,16(s1)
    80005360:	0017879b          	addiw	a5,a5,1
    80005364:	0004a703          	lw	a4,0(s1)
    80005368:	02e7e7bb          	remw	a5,a5,a4
    8000536c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005370:	fc1ff06f          	j	80005330 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005374:	02100513          	li	a0,33
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	694080e7          	jalr	1684(ra) # 80002a0c <_Z4putcc>
    putc('\n');
    80005380:	00a00513          	li	a0,10
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	688080e7          	jalr	1672(ra) # 80002a0c <_Z4putcc>
    mem_free(buffer);
    8000538c:	0084b503          	ld	a0,8(s1)
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	46c080e7          	jalr	1132(ra) # 800027fc <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005398:	0204b503          	ld	a0,32(s1)
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	54c080e7          	jalr	1356(ra) # 800028e8 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800053a4:	0184b503          	ld	a0,24(s1)
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	540080e7          	jalr	1344(ra) # 800028e8 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800053b0:	0304b503          	ld	a0,48(s1)
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	534080e7          	jalr	1332(ra) # 800028e8 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800053bc:	0284b503          	ld	a0,40(s1)
    800053c0:	ffffd097          	auipc	ra,0xffffd
    800053c4:	528080e7          	jalr	1320(ra) # 800028e8 <_Z9sem_closeP4_sem>
}
    800053c8:	01813083          	ld	ra,24(sp)
    800053cc:	01013403          	ld	s0,16(sp)
    800053d0:	00813483          	ld	s1,8(sp)
    800053d4:	02010113          	addi	sp,sp,32
    800053d8:	00008067          	ret

00000000800053dc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800053dc:	f8010113          	addi	sp,sp,-128
    800053e0:	06113c23          	sd	ra,120(sp)
    800053e4:	06813823          	sd	s0,112(sp)
    800053e8:	06913423          	sd	s1,104(sp)
    800053ec:	07213023          	sd	s2,96(sp)
    800053f0:	05313c23          	sd	s3,88(sp)
    800053f4:	05413823          	sd	s4,80(sp)
    800053f8:	05513423          	sd	s5,72(sp)
    800053fc:	05613023          	sd	s6,64(sp)
    80005400:	03713c23          	sd	s7,56(sp)
    80005404:	03813823          	sd	s8,48(sp)
    80005408:	03913423          	sd	s9,40(sp)
    8000540c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80005410:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80005414:	00004517          	auipc	a0,0x4
    80005418:	f2c50513          	addi	a0,a0,-212 # 80009340 <_ZTV7WorkerD+0x28>
    8000541c:	00000097          	auipc	ra,0x0
    80005420:	87c080e7          	jalr	-1924(ra) # 80004c98 <_Z11printStringPKc>
    getString(input, 30);
    80005424:	01e00593          	li	a1,30
    80005428:	f8040513          	addi	a0,s0,-128
    8000542c:	00000097          	auipc	ra,0x0
    80005430:	8f4080e7          	jalr	-1804(ra) # 80004d20 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005434:	f8040513          	addi	a0,s0,-128
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	9c0080e7          	jalr	-1600(ra) # 80004df8 <_Z11stringToIntPKc>
    80005440:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80005444:	00004517          	auipc	a0,0x4
    80005448:	f1c50513          	addi	a0,a0,-228 # 80009360 <_ZTV7WorkerD+0x48>
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	84c080e7          	jalr	-1972(ra) # 80004c98 <_Z11printStringPKc>
    getString(input, 30);
    80005454:	01e00593          	li	a1,30
    80005458:	f8040513          	addi	a0,s0,-128
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	8c4080e7          	jalr	-1852(ra) # 80004d20 <_Z9getStringPci>
    n = stringToInt(input);
    80005464:	f8040513          	addi	a0,s0,-128
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	990080e7          	jalr	-1648(ra) # 80004df8 <_Z11stringToIntPKc>
    80005470:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80005474:	00004517          	auipc	a0,0x4
    80005478:	f0c50513          	addi	a0,a0,-244 # 80009380 <_ZTV7WorkerD+0x68>
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	81c080e7          	jalr	-2020(ra) # 80004c98 <_Z11printStringPKc>
    printInt(threadNum);
    80005484:	00000613          	li	a2,0
    80005488:	00a00593          	li	a1,10
    8000548c:	00098513          	mv	a0,s3
    80005490:	00000097          	auipc	ra,0x0
    80005494:	9b8080e7          	jalr	-1608(ra) # 80004e48 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	f0050513          	addi	a0,a0,-256 # 80009398 <_ZTV7WorkerD+0x80>
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	7f8080e7          	jalr	2040(ra) # 80004c98 <_Z11printStringPKc>
    printInt(n);
    800054a8:	00000613          	li	a2,0
    800054ac:	00a00593          	li	a1,10
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00000097          	auipc	ra,0x0
    800054b8:	994080e7          	jalr	-1644(ra) # 80004e48 <_Z8printIntiii>
    printString(".\n");
    800054bc:	00004517          	auipc	a0,0x4
    800054c0:	ef450513          	addi	a0,a0,-268 # 800093b0 <_ZTV7WorkerD+0x98>
    800054c4:	fffff097          	auipc	ra,0xfffff
    800054c8:	7d4080e7          	jalr	2004(ra) # 80004c98 <_Z11printStringPKc>
    if (threadNum > n) {
    800054cc:	0334c463          	blt	s1,s3,800054f4 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    800054d0:	03305c63          	blez	s3,80005508 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    800054d4:	03800513          	li	a0,56
    800054d8:	ffffd097          	auipc	ra,0xffffd
    800054dc:	c48080e7          	jalr	-952(ra) # 80002120 <_Znwm>
    800054e0:	00050a93          	mv	s5,a0
    800054e4:	00048593          	mv	a1,s1
    800054e8:	00000097          	auipc	ra,0x0
    800054ec:	7a0080e7          	jalr	1952(ra) # 80005c88 <_ZN9BufferCPPC1Ei>
    800054f0:	0300006f          	j	80005520 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800054f4:	00004517          	auipc	a0,0x4
    800054f8:	ec450513          	addi	a0,a0,-316 # 800093b8 <_ZTV7WorkerD+0xa0>
    800054fc:	fffff097          	auipc	ra,0xfffff
    80005500:	79c080e7          	jalr	1948(ra) # 80004c98 <_Z11printStringPKc>
        return;
    80005504:	0140006f          	j	80005518 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005508:	00004517          	auipc	a0,0x4
    8000550c:	ef050513          	addi	a0,a0,-272 # 800093f8 <_ZTV7WorkerD+0xe0>
    80005510:	fffff097          	auipc	ra,0xfffff
    80005514:	788080e7          	jalr	1928(ra) # 80004c98 <_Z11printStringPKc>
        return;
    80005518:	000c0113          	mv	sp,s8
    8000551c:	2140006f          	j	80005730 <_Z20testConsumerProducerv+0x354>
    waitForAll = new Semaphore(0);
    80005520:	01000513          	li	a0,16
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	bfc080e7          	jalr	-1028(ra) # 80002120 <_Znwm>
    8000552c:	00050913          	mv	s2,a0
    80005530:	00000593          	li	a1,0
    80005534:	ffffd097          	auipc	ra,0xffffd
    80005538:	da0080e7          	jalr	-608(ra) # 800022d4 <_ZN9SemaphoreC1Ej>
    8000553c:	00006797          	auipc	a5,0x6
    80005540:	4327ba23          	sd	s2,1076(a5) # 8000b970 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80005544:	00399793          	slli	a5,s3,0x3
    80005548:	00f78793          	addi	a5,a5,15
    8000554c:	ff07f793          	andi	a5,a5,-16
    80005550:	40f10133          	sub	sp,sp,a5
    80005554:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80005558:	0019871b          	addiw	a4,s3,1
    8000555c:	00171793          	slli	a5,a4,0x1
    80005560:	00e787b3          	add	a5,a5,a4
    80005564:	00379793          	slli	a5,a5,0x3
    80005568:	00f78793          	addi	a5,a5,15
    8000556c:	ff07f793          	andi	a5,a5,-16
    80005570:	40f10133          	sub	sp,sp,a5
    80005574:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80005578:	00199493          	slli	s1,s3,0x1
    8000557c:	013484b3          	add	s1,s1,s3
    80005580:	00349493          	slli	s1,s1,0x3
    80005584:	009b04b3          	add	s1,s6,s1
    80005588:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000558c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80005590:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80005594:	02800513          	li	a0,40
    80005598:	ffffd097          	auipc	ra,0xffffd
    8000559c:	b88080e7          	jalr	-1144(ra) # 80002120 <_Znwm>
    800055a0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800055a4:	ffffd097          	auipc	ra,0xffffd
    800055a8:	d04080e7          	jalr	-764(ra) # 800022a8 <_ZN6ThreadC1Ev>
    800055ac:	00004797          	auipc	a5,0x4
    800055b0:	1e478793          	addi	a5,a5,484 # 80009790 <_ZTV8Consumer+0x10>
    800055b4:	00fbb023          	sd	a5,0(s7)
    800055b8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800055bc:	000b8513          	mv	a0,s7
    800055c0:	ffffd097          	auipc	ra,0xffffd
    800055c4:	c44080e7          	jalr	-956(ra) # 80002204 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800055c8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800055cc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800055d0:	00006797          	auipc	a5,0x6
    800055d4:	3a07b783          	ld	a5,928(a5) # 8000b970 <_ZL10waitForAll>
    800055d8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800055dc:	02800513          	li	a0,40
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	b40080e7          	jalr	-1216(ra) # 80002120 <_Znwm>
    800055e8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	cbc080e7          	jalr	-836(ra) # 800022a8 <_ZN6ThreadC1Ev>
    800055f4:	00004797          	auipc	a5,0x4
    800055f8:	14c78793          	addi	a5,a5,332 # 80009740 <_ZTV16ProducerKeyborad+0x10>
    800055fc:	00f4b023          	sd	a5,0(s1)
    80005600:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80005604:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80005608:	00048513          	mv	a0,s1
    8000560c:	ffffd097          	auipc	ra,0xffffd
    80005610:	bf8080e7          	jalr	-1032(ra) # 80002204 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80005614:	00100913          	li	s2,1
    80005618:	0300006f          	j	80005648 <_Z20testConsumerProducerv+0x26c>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000561c:	00004797          	auipc	a5,0x4
    80005620:	14c78793          	addi	a5,a5,332 # 80009768 <_ZTV8Producer+0x10>
    80005624:	00fcb023          	sd	a5,0(s9)
    80005628:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000562c:	00391793          	slli	a5,s2,0x3
    80005630:	00fa07b3          	add	a5,s4,a5
    80005634:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80005638:	000c8513          	mv	a0,s9
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	bc8080e7          	jalr	-1080(ra) # 80002204 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80005644:	0019091b          	addiw	s2,s2,1
    80005648:	05395263          	bge	s2,s3,8000568c <_Z20testConsumerProducerv+0x2b0>
        threadData[i].id = i;
    8000564c:	00191493          	slli	s1,s2,0x1
    80005650:	012484b3          	add	s1,s1,s2
    80005654:	00349493          	slli	s1,s1,0x3
    80005658:	009b04b3          	add	s1,s6,s1
    8000565c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80005660:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80005664:	00006797          	auipc	a5,0x6
    80005668:	30c7b783          	ld	a5,780(a5) # 8000b970 <_ZL10waitForAll>
    8000566c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80005670:	02800513          	li	a0,40
    80005674:	ffffd097          	auipc	ra,0xffffd
    80005678:	aac080e7          	jalr	-1364(ra) # 80002120 <_Znwm>
    8000567c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80005680:	ffffd097          	auipc	ra,0xffffd
    80005684:	c28080e7          	jalr	-984(ra) # 800022a8 <_ZN6ThreadC1Ev>
    80005688:	f95ff06f          	j	8000561c <_Z20testConsumerProducerv+0x240>
    Thread::dispatch();
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	bcc080e7          	jalr	-1076(ra) # 80002258 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005694:	00000493          	li	s1,0
    80005698:	0099ce63          	blt	s3,s1,800056b4 <_Z20testConsumerProducerv+0x2d8>
        waitForAll->wait();
    8000569c:	00006517          	auipc	a0,0x6
    800056a0:	2d453503          	ld	a0,724(a0) # 8000b970 <_ZL10waitForAll>
    800056a4:	ffffd097          	auipc	ra,0xffffd
    800056a8:	c68080e7          	jalr	-920(ra) # 8000230c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800056ac:	0014849b          	addiw	s1,s1,1
    800056b0:	fe9ff06f          	j	80005698 <_Z20testConsumerProducerv+0x2bc>
    delete waitForAll;
    800056b4:	00006517          	auipc	a0,0x6
    800056b8:	2bc53503          	ld	a0,700(a0) # 8000b970 <_ZL10waitForAll>
    800056bc:	00050863          	beqz	a0,800056cc <_Z20testConsumerProducerv+0x2f0>
    800056c0:	00053783          	ld	a5,0(a0)
    800056c4:	0087b783          	ld	a5,8(a5)
    800056c8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800056cc:	00000493          	li	s1,0
    800056d0:	0080006f          	j	800056d8 <_Z20testConsumerProducerv+0x2fc>
    for (int i = 0; i < threadNum; i++) {
    800056d4:	0014849b          	addiw	s1,s1,1
    800056d8:	0334d263          	bge	s1,s3,800056fc <_Z20testConsumerProducerv+0x320>
        delete producers[i];
    800056dc:	00349793          	slli	a5,s1,0x3
    800056e0:	00fa07b3          	add	a5,s4,a5
    800056e4:	0007b503          	ld	a0,0(a5)
    800056e8:	fe0506e3          	beqz	a0,800056d4 <_Z20testConsumerProducerv+0x2f8>
    800056ec:	00053783          	ld	a5,0(a0)
    800056f0:	0087b783          	ld	a5,8(a5)
    800056f4:	000780e7          	jalr	a5
    800056f8:	fddff06f          	j	800056d4 <_Z20testConsumerProducerv+0x2f8>
    delete consumer;
    800056fc:	000b8a63          	beqz	s7,80005710 <_Z20testConsumerProducerv+0x334>
    80005700:	000bb783          	ld	a5,0(s7)
    80005704:	0087b783          	ld	a5,8(a5)
    80005708:	000b8513          	mv	a0,s7
    8000570c:	000780e7          	jalr	a5
    delete buffer;
    80005710:	000a8e63          	beqz	s5,8000572c <_Z20testConsumerProducerv+0x350>
    80005714:	000a8513          	mv	a0,s5
    80005718:	00001097          	auipc	ra,0x1
    8000571c:	868080e7          	jalr	-1944(ra) # 80005f80 <_ZN9BufferCPPD1Ev>
    80005720:	000a8513          	mv	a0,s5
    80005724:	ffffd097          	auipc	ra,0xffffd
    80005728:	a24080e7          	jalr	-1500(ra) # 80002148 <_ZdlPv>
    8000572c:	000c0113          	mv	sp,s8
}
    80005730:	f8040113          	addi	sp,s0,-128
    80005734:	07813083          	ld	ra,120(sp)
    80005738:	07013403          	ld	s0,112(sp)
    8000573c:	06813483          	ld	s1,104(sp)
    80005740:	06013903          	ld	s2,96(sp)
    80005744:	05813983          	ld	s3,88(sp)
    80005748:	05013a03          	ld	s4,80(sp)
    8000574c:	04813a83          	ld	s5,72(sp)
    80005750:	04013b03          	ld	s6,64(sp)
    80005754:	03813b83          	ld	s7,56(sp)
    80005758:	03013c03          	ld	s8,48(sp)
    8000575c:	02813c83          	ld	s9,40(sp)
    80005760:	08010113          	addi	sp,sp,128
    80005764:	00008067          	ret
    80005768:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000576c:	000a8513          	mv	a0,s5
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	9d8080e7          	jalr	-1576(ra) # 80002148 <_ZdlPv>
    80005778:	00048513          	mv	a0,s1
    8000577c:	00007097          	auipc	ra,0x7
    80005780:	56c080e7          	jalr	1388(ra) # 8000cce8 <_Unwind_Resume>
    80005784:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80005788:	00090513          	mv	a0,s2
    8000578c:	ffffd097          	auipc	ra,0xffffd
    80005790:	9bc080e7          	jalr	-1604(ra) # 80002148 <_ZdlPv>
    80005794:	00048513          	mv	a0,s1
    80005798:	00007097          	auipc	ra,0x7
    8000579c:	550080e7          	jalr	1360(ra) # 8000cce8 <_Unwind_Resume>
    800057a0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800057a4:	000b8513          	mv	a0,s7
    800057a8:	ffffd097          	auipc	ra,0xffffd
    800057ac:	9a0080e7          	jalr	-1632(ra) # 80002148 <_ZdlPv>
    800057b0:	00048513          	mv	a0,s1
    800057b4:	00007097          	auipc	ra,0x7
    800057b8:	534080e7          	jalr	1332(ra) # 8000cce8 <_Unwind_Resume>
    800057bc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800057c0:	00048513          	mv	a0,s1
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	984080e7          	jalr	-1660(ra) # 80002148 <_ZdlPv>
    800057cc:	00090513          	mv	a0,s2
    800057d0:	00007097          	auipc	ra,0x7
    800057d4:	518080e7          	jalr	1304(ra) # 8000cce8 <_Unwind_Resume>
    800057d8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800057dc:	000c8513          	mv	a0,s9
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	968080e7          	jalr	-1688(ra) # 80002148 <_ZdlPv>
    800057e8:	00048513          	mv	a0,s1
    800057ec:	00007097          	auipc	ra,0x7
    800057f0:	4fc080e7          	jalr	1276(ra) # 8000cce8 <_Unwind_Resume>

00000000800057f4 <_ZN8Consumer3runEv>:
    void run() override {
    800057f4:	fd010113          	addi	sp,sp,-48
    800057f8:	02113423          	sd	ra,40(sp)
    800057fc:	02813023          	sd	s0,32(sp)
    80005800:	00913c23          	sd	s1,24(sp)
    80005804:	01213823          	sd	s2,16(sp)
    80005808:	01313423          	sd	s3,8(sp)
    8000580c:	03010413          	addi	s0,sp,48
    80005810:	00050913          	mv	s2,a0
        int i = 0;
    80005814:	00000993          	li	s3,0
    80005818:	0100006f          	j	80005828 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000581c:	00a00513          	li	a0,10
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	be4080e7          	jalr	-1052(ra) # 80002404 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80005828:	00006797          	auipc	a5,0x6
    8000582c:	1407a783          	lw	a5,320(a5) # 8000b968 <_ZL9threadEnd>
    80005830:	04079a63          	bnez	a5,80005884 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80005834:	02093783          	ld	a5,32(s2)
    80005838:	0087b503          	ld	a0,8(a5)
    8000583c:	00000097          	auipc	ra,0x0
    80005840:	630080e7          	jalr	1584(ra) # 80005e6c <_ZN9BufferCPP3getEv>
            i++;
    80005844:	0019849b          	addiw	s1,s3,1
    80005848:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000584c:	0ff57513          	andi	a0,a0,255
    80005850:	ffffd097          	auipc	ra,0xffffd
    80005854:	bb4080e7          	jalr	-1100(ra) # 80002404 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80005858:	05000793          	li	a5,80
    8000585c:	02f4e4bb          	remw	s1,s1,a5
    80005860:	fc0494e3          	bnez	s1,80005828 <_ZN8Consumer3runEv+0x34>
    80005864:	fb9ff06f          	j	8000581c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80005868:	02093783          	ld	a5,32(s2)
    8000586c:	0087b503          	ld	a0,8(a5)
    80005870:	00000097          	auipc	ra,0x0
    80005874:	5fc080e7          	jalr	1532(ra) # 80005e6c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80005878:	0ff57513          	andi	a0,a0,255
    8000587c:	ffffd097          	auipc	ra,0xffffd
    80005880:	b88080e7          	jalr	-1144(ra) # 80002404 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80005884:	02093783          	ld	a5,32(s2)
    80005888:	0087b503          	ld	a0,8(a5)
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	66c080e7          	jalr	1644(ra) # 80005ef8 <_ZN9BufferCPP6getCntEv>
    80005894:	fca04ae3          	bgtz	a0,80005868 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80005898:	02093783          	ld	a5,32(s2)
    8000589c:	0107b503          	ld	a0,16(a5)
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	a98080e7          	jalr	-1384(ra) # 80002338 <_ZN9Semaphore6signalEv>
    }
    800058a8:	02813083          	ld	ra,40(sp)
    800058ac:	02013403          	ld	s0,32(sp)
    800058b0:	01813483          	ld	s1,24(sp)
    800058b4:	01013903          	ld	s2,16(sp)
    800058b8:	00813983          	ld	s3,8(sp)
    800058bc:	03010113          	addi	sp,sp,48
    800058c0:	00008067          	ret

00000000800058c4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800058c4:	ff010113          	addi	sp,sp,-16
    800058c8:	00113423          	sd	ra,8(sp)
    800058cc:	00813023          	sd	s0,0(sp)
    800058d0:	01010413          	addi	s0,sp,16
    800058d4:	00004797          	auipc	a5,0x4
    800058d8:	ebc78793          	addi	a5,a5,-324 # 80009790 <_ZTV8Consumer+0x10>
    800058dc:	00f53023          	sd	a5,0(a0)
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	78c080e7          	jalr	1932(ra) # 8000206c <_ZN6ThreadD1Ev>
    800058e8:	00813083          	ld	ra,8(sp)
    800058ec:	00013403          	ld	s0,0(sp)
    800058f0:	01010113          	addi	sp,sp,16
    800058f4:	00008067          	ret

00000000800058f8 <_ZN8ConsumerD0Ev>:
    800058f8:	fe010113          	addi	sp,sp,-32
    800058fc:	00113c23          	sd	ra,24(sp)
    80005900:	00813823          	sd	s0,16(sp)
    80005904:	00913423          	sd	s1,8(sp)
    80005908:	02010413          	addi	s0,sp,32
    8000590c:	00050493          	mv	s1,a0
    80005910:	00004797          	auipc	a5,0x4
    80005914:	e8078793          	addi	a5,a5,-384 # 80009790 <_ZTV8Consumer+0x10>
    80005918:	00f53023          	sd	a5,0(a0)
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	750080e7          	jalr	1872(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005924:	00048513          	mv	a0,s1
    80005928:	ffffd097          	auipc	ra,0xffffd
    8000592c:	820080e7          	jalr	-2016(ra) # 80002148 <_ZdlPv>
    80005930:	01813083          	ld	ra,24(sp)
    80005934:	01013403          	ld	s0,16(sp)
    80005938:	00813483          	ld	s1,8(sp)
    8000593c:	02010113          	addi	sp,sp,32
    80005940:	00008067          	ret

0000000080005944 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80005944:	ff010113          	addi	sp,sp,-16
    80005948:	00113423          	sd	ra,8(sp)
    8000594c:	00813023          	sd	s0,0(sp)
    80005950:	01010413          	addi	s0,sp,16
    80005954:	00004797          	auipc	a5,0x4
    80005958:	dec78793          	addi	a5,a5,-532 # 80009740 <_ZTV16ProducerKeyborad+0x10>
    8000595c:	00f53023          	sd	a5,0(a0)
    80005960:	ffffc097          	auipc	ra,0xffffc
    80005964:	70c080e7          	jalr	1804(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005968:	00813083          	ld	ra,8(sp)
    8000596c:	00013403          	ld	s0,0(sp)
    80005970:	01010113          	addi	sp,sp,16
    80005974:	00008067          	ret

0000000080005978 <_ZN16ProducerKeyboradD0Ev>:
    80005978:	fe010113          	addi	sp,sp,-32
    8000597c:	00113c23          	sd	ra,24(sp)
    80005980:	00813823          	sd	s0,16(sp)
    80005984:	00913423          	sd	s1,8(sp)
    80005988:	02010413          	addi	s0,sp,32
    8000598c:	00050493          	mv	s1,a0
    80005990:	00004797          	auipc	a5,0x4
    80005994:	db078793          	addi	a5,a5,-592 # 80009740 <_ZTV16ProducerKeyborad+0x10>
    80005998:	00f53023          	sd	a5,0(a0)
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	6d0080e7          	jalr	1744(ra) # 8000206c <_ZN6ThreadD1Ev>
    800059a4:	00048513          	mv	a0,s1
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	7a0080e7          	jalr	1952(ra) # 80002148 <_ZdlPv>
    800059b0:	01813083          	ld	ra,24(sp)
    800059b4:	01013403          	ld	s0,16(sp)
    800059b8:	00813483          	ld	s1,8(sp)
    800059bc:	02010113          	addi	sp,sp,32
    800059c0:	00008067          	ret

00000000800059c4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800059c4:	ff010113          	addi	sp,sp,-16
    800059c8:	00113423          	sd	ra,8(sp)
    800059cc:	00813023          	sd	s0,0(sp)
    800059d0:	01010413          	addi	s0,sp,16
    800059d4:	00004797          	auipc	a5,0x4
    800059d8:	d9478793          	addi	a5,a5,-620 # 80009768 <_ZTV8Producer+0x10>
    800059dc:	00f53023          	sd	a5,0(a0)
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	68c080e7          	jalr	1676(ra) # 8000206c <_ZN6ThreadD1Ev>
    800059e8:	00813083          	ld	ra,8(sp)
    800059ec:	00013403          	ld	s0,0(sp)
    800059f0:	01010113          	addi	sp,sp,16
    800059f4:	00008067          	ret

00000000800059f8 <_ZN8ProducerD0Ev>:
    800059f8:	fe010113          	addi	sp,sp,-32
    800059fc:	00113c23          	sd	ra,24(sp)
    80005a00:	00813823          	sd	s0,16(sp)
    80005a04:	00913423          	sd	s1,8(sp)
    80005a08:	02010413          	addi	s0,sp,32
    80005a0c:	00050493          	mv	s1,a0
    80005a10:	00004797          	auipc	a5,0x4
    80005a14:	d5878793          	addi	a5,a5,-680 # 80009768 <_ZTV8Producer+0x10>
    80005a18:	00f53023          	sd	a5,0(a0)
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	650080e7          	jalr	1616(ra) # 8000206c <_ZN6ThreadD1Ev>
    80005a24:	00048513          	mv	a0,s1
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	720080e7          	jalr	1824(ra) # 80002148 <_ZdlPv>
    80005a30:	01813083          	ld	ra,24(sp)
    80005a34:	01013403          	ld	s0,16(sp)
    80005a38:	00813483          	ld	s1,8(sp)
    80005a3c:	02010113          	addi	sp,sp,32
    80005a40:	00008067          	ret

0000000080005a44 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80005a44:	fe010113          	addi	sp,sp,-32
    80005a48:	00113c23          	sd	ra,24(sp)
    80005a4c:	00813823          	sd	s0,16(sp)
    80005a50:	00913423          	sd	s1,8(sp)
    80005a54:	02010413          	addi	s0,sp,32
    80005a58:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80005a5c:	ffffd097          	auipc	ra,0xffffd
    80005a60:	f84080e7          	jalr	-124(ra) # 800029e0 <_Z4getcv>
    80005a64:	0005059b          	sext.w	a1,a0
    80005a68:	01b00793          	li	a5,27
    80005a6c:	00f58c63          	beq	a1,a5,80005a84 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80005a70:	0204b783          	ld	a5,32(s1)
    80005a74:	0087b503          	ld	a0,8(a5)
    80005a78:	00000097          	auipc	ra,0x0
    80005a7c:	364080e7          	jalr	868(ra) # 80005ddc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005a80:	fddff06f          	j	80005a5c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005a84:	00100793          	li	a5,1
    80005a88:	00006717          	auipc	a4,0x6
    80005a8c:	eef72023          	sw	a5,-288(a4) # 8000b968 <_ZL9threadEnd>
        td->buffer->put('!');
    80005a90:	0204b783          	ld	a5,32(s1)
    80005a94:	02100593          	li	a1,33
    80005a98:	0087b503          	ld	a0,8(a5)
    80005a9c:	00000097          	auipc	ra,0x0
    80005aa0:	340080e7          	jalr	832(ra) # 80005ddc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005aa4:	0204b783          	ld	a5,32(s1)
    80005aa8:	0107b503          	ld	a0,16(a5)
    80005aac:	ffffd097          	auipc	ra,0xffffd
    80005ab0:	88c080e7          	jalr	-1908(ra) # 80002338 <_ZN9Semaphore6signalEv>
    }
    80005ab4:	01813083          	ld	ra,24(sp)
    80005ab8:	01013403          	ld	s0,16(sp)
    80005abc:	00813483          	ld	s1,8(sp)
    80005ac0:	02010113          	addi	sp,sp,32
    80005ac4:	00008067          	ret

0000000080005ac8 <_ZN8Producer3runEv>:
    void run() override {
    80005ac8:	fe010113          	addi	sp,sp,-32
    80005acc:	00113c23          	sd	ra,24(sp)
    80005ad0:	00813823          	sd	s0,16(sp)
    80005ad4:	00913423          	sd	s1,8(sp)
    80005ad8:	01213023          	sd	s2,0(sp)
    80005adc:	02010413          	addi	s0,sp,32
    80005ae0:	00050493          	mv	s1,a0
        int i = 0;
    80005ae4:	00000913          	li	s2,0
        while (!threadEnd) {
    80005ae8:	00006797          	auipc	a5,0x6
    80005aec:	e807a783          	lw	a5,-384(a5) # 8000b968 <_ZL9threadEnd>
    80005af0:	04079263          	bnez	a5,80005b34 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80005af4:	0204b783          	ld	a5,32(s1)
    80005af8:	0007a583          	lw	a1,0(a5)
    80005afc:	0305859b          	addiw	a1,a1,48
    80005b00:	0087b503          	ld	a0,8(a5)
    80005b04:	00000097          	auipc	ra,0x0
    80005b08:	2d8080e7          	jalr	728(ra) # 80005ddc <_ZN9BufferCPP3putEi>
            i++;
    80005b0c:	0019071b          	addiw	a4,s2,1
    80005b10:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005b14:	0204b783          	ld	a5,32(s1)
    80005b18:	0007a783          	lw	a5,0(a5)
    80005b1c:	00e787bb          	addw	a5,a5,a4
    80005b20:	00500513          	li	a0,5
    80005b24:	02a7e53b          	remw	a0,a5,a0
    80005b28:	ffffc097          	auipc	ra,0xffffc
    80005b2c:	758080e7          	jalr	1880(ra) # 80002280 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005b30:	fb9ff06f          	j	80005ae8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80005b34:	0204b783          	ld	a5,32(s1)
    80005b38:	0107b503          	ld	a0,16(a5)
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	7fc080e7          	jalr	2044(ra) # 80002338 <_ZN9Semaphore6signalEv>
    }
    80005b44:	01813083          	ld	ra,24(sp)
    80005b48:	01013403          	ld	s0,16(sp)
    80005b4c:	00813483          	ld	s1,8(sp)
    80005b50:	00013903          	ld	s2,0(sp)
    80005b54:	02010113          	addi	sp,sp,32
    80005b58:	00008067          	ret

0000000080005b5c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005b5c:	fe010113          	addi	sp,sp,-32
    80005b60:	00113c23          	sd	ra,24(sp)
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00913423          	sd	s1,8(sp)
    80005b6c:	01213023          	sd	s2,0(sp)
    80005b70:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005b74:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005b78:	00600493          	li	s1,6
    while (--i > 0) {
    80005b7c:	fff4849b          	addiw	s1,s1,-1
    80005b80:	04905463          	blez	s1,80005bc8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005b84:	00004517          	auipc	a0,0x4
    80005b88:	c2450513          	addi	a0,a0,-988 # 800097a8 <_ZTV8Consumer+0x28>
    80005b8c:	fffff097          	auipc	ra,0xfffff
    80005b90:	10c080e7          	jalr	268(ra) # 80004c98 <_Z11printStringPKc>
        printInt(sleep_time);
    80005b94:	00000613          	li	a2,0
    80005b98:	00a00593          	li	a1,10
    80005b9c:	0009051b          	sext.w	a0,s2
    80005ba0:	fffff097          	auipc	ra,0xfffff
    80005ba4:	2a8080e7          	jalr	680(ra) # 80004e48 <_Z8printIntiii>
        printString(" !\n");
    80005ba8:	00004517          	auipc	a0,0x4
    80005bac:	c0850513          	addi	a0,a0,-1016 # 800097b0 <_ZTV8Consumer+0x30>
    80005bb0:	fffff097          	auipc	ra,0xfffff
    80005bb4:	0e8080e7          	jalr	232(ra) # 80004c98 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005bb8:	00090513          	mv	a0,s2
    80005bbc:	ffffd097          	auipc	ra,0xffffd
    80005bc0:	e78080e7          	jalr	-392(ra) # 80002a34 <_Z10time_sleepm>
    while (--i > 0) {
    80005bc4:	fb9ff06f          	j	80005b7c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005bc8:	00a00793          	li	a5,10
    80005bcc:	02f95933          	divu	s2,s2,a5
    80005bd0:	fff90913          	addi	s2,s2,-1
    80005bd4:	00006797          	auipc	a5,0x6
    80005bd8:	da478793          	addi	a5,a5,-604 # 8000b978 <_ZL8finished>
    80005bdc:	01278933          	add	s2,a5,s2
    80005be0:	00100793          	li	a5,1
    80005be4:	00f90023          	sb	a5,0(s2)
}
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	00813483          	ld	s1,8(sp)
    80005bf4:	00013903          	ld	s2,0(sp)
    80005bf8:	02010113          	addi	sp,sp,32
    80005bfc:	00008067          	ret

0000000080005c00 <_Z12testSleepingv>:

void testSleeping() {
    80005c00:	fc010113          	addi	sp,sp,-64
    80005c04:	02113c23          	sd	ra,56(sp)
    80005c08:	02813823          	sd	s0,48(sp)
    80005c0c:	02913423          	sd	s1,40(sp)
    80005c10:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005c14:	00a00793          	li	a5,10
    80005c18:	fcf43823          	sd	a5,-48(s0)
    80005c1c:	01400793          	li	a5,20
    80005c20:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c24:	00000493          	li	s1,0
    80005c28:	02c0006f          	j	80005c54 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005c2c:	00349513          	slli	a0,s1,0x3
    80005c30:	fd040793          	addi	a5,s0,-48
    80005c34:	00a78633          	add	a2,a5,a0
    80005c38:	00000597          	auipc	a1,0x0
    80005c3c:	f2458593          	addi	a1,a1,-220 # 80005b5c <_ZL9sleepyRunPv>
    80005c40:	fc040793          	addi	a5,s0,-64
    80005c44:	00a78533          	add	a0,a5,a0
    80005c48:	ffffd097          	auipc	ra,0xffffd
    80005c4c:	be4080e7          	jalr	-1052(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c50:	0014849b          	addiw	s1,s1,1
    80005c54:	00100793          	li	a5,1
    80005c58:	fc97dae3          	bge	a5,s1,80005c2c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005c5c:	00006797          	auipc	a5,0x6
    80005c60:	d1c7c783          	lbu	a5,-740(a5) # 8000b978 <_ZL8finished>
    80005c64:	fe078ce3          	beqz	a5,80005c5c <_Z12testSleepingv+0x5c>
    80005c68:	00006797          	auipc	a5,0x6
    80005c6c:	d117c783          	lbu	a5,-751(a5) # 8000b979 <_ZL8finished+0x1>
    80005c70:	fe0786e3          	beqz	a5,80005c5c <_Z12testSleepingv+0x5c>
}
    80005c74:	03813083          	ld	ra,56(sp)
    80005c78:	03013403          	ld	s0,48(sp)
    80005c7c:	02813483          	ld	s1,40(sp)
    80005c80:	04010113          	addi	sp,sp,64
    80005c84:	00008067          	ret

0000000080005c88 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c88:	fd010113          	addi	sp,sp,-48
    80005c8c:	02113423          	sd	ra,40(sp)
    80005c90:	02813023          	sd	s0,32(sp)
    80005c94:	00913c23          	sd	s1,24(sp)
    80005c98:	01213823          	sd	s2,16(sp)
    80005c9c:	01313423          	sd	s3,8(sp)
    80005ca0:	03010413          	addi	s0,sp,48
    80005ca4:	00050493          	mv	s1,a0
    80005ca8:	00058913          	mv	s2,a1
    80005cac:	0015879b          	addiw	a5,a1,1
    80005cb0:	0007851b          	sext.w	a0,a5
    80005cb4:	00f4a023          	sw	a5,0(s1)
    80005cb8:	0004a823          	sw	zero,16(s1)
    80005cbc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005cc0:	00251513          	slli	a0,a0,0x2
    80005cc4:	ffffd097          	auipc	ra,0xffffd
    80005cc8:	b0c080e7          	jalr	-1268(ra) # 800027d0 <_Z9mem_allocm>
    80005ccc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005cd0:	01000513          	li	a0,16
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	44c080e7          	jalr	1100(ra) # 80002120 <_Znwm>
    80005cdc:	00050993          	mv	s3,a0
    80005ce0:	00000593          	li	a1,0
    80005ce4:	ffffc097          	auipc	ra,0xffffc
    80005ce8:	5f0080e7          	jalr	1520(ra) # 800022d4 <_ZN9SemaphoreC1Ej>
    80005cec:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005cf0:	01000513          	li	a0,16
    80005cf4:	ffffc097          	auipc	ra,0xffffc
    80005cf8:	42c080e7          	jalr	1068(ra) # 80002120 <_Znwm>
    80005cfc:	00050993          	mv	s3,a0
    80005d00:	00090593          	mv	a1,s2
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	5d0080e7          	jalr	1488(ra) # 800022d4 <_ZN9SemaphoreC1Ej>
    80005d0c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005d10:	01000513          	li	a0,16
    80005d14:	ffffc097          	auipc	ra,0xffffc
    80005d18:	40c080e7          	jalr	1036(ra) # 80002120 <_Znwm>
    80005d1c:	00050913          	mv	s2,a0
    80005d20:	00100593          	li	a1,1
    80005d24:	ffffc097          	auipc	ra,0xffffc
    80005d28:	5b0080e7          	jalr	1456(ra) # 800022d4 <_ZN9SemaphoreC1Ej>
    80005d2c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005d30:	01000513          	li	a0,16
    80005d34:	ffffc097          	auipc	ra,0xffffc
    80005d38:	3ec080e7          	jalr	1004(ra) # 80002120 <_Znwm>
    80005d3c:	00050913          	mv	s2,a0
    80005d40:	00100593          	li	a1,1
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	590080e7          	jalr	1424(ra) # 800022d4 <_ZN9SemaphoreC1Ej>
    80005d4c:	0324b823          	sd	s2,48(s1)
}
    80005d50:	02813083          	ld	ra,40(sp)
    80005d54:	02013403          	ld	s0,32(sp)
    80005d58:	01813483          	ld	s1,24(sp)
    80005d5c:	01013903          	ld	s2,16(sp)
    80005d60:	00813983          	ld	s3,8(sp)
    80005d64:	03010113          	addi	sp,sp,48
    80005d68:	00008067          	ret
    80005d6c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005d70:	00098513          	mv	a0,s3
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	3d4080e7          	jalr	980(ra) # 80002148 <_ZdlPv>
    80005d7c:	00048513          	mv	a0,s1
    80005d80:	00007097          	auipc	ra,0x7
    80005d84:	f68080e7          	jalr	-152(ra) # 8000cce8 <_Unwind_Resume>
    80005d88:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d8c:	00098513          	mv	a0,s3
    80005d90:	ffffc097          	auipc	ra,0xffffc
    80005d94:	3b8080e7          	jalr	952(ra) # 80002148 <_ZdlPv>
    80005d98:	00048513          	mv	a0,s1
    80005d9c:	00007097          	auipc	ra,0x7
    80005da0:	f4c080e7          	jalr	-180(ra) # 8000cce8 <_Unwind_Resume>
    80005da4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005da8:	00090513          	mv	a0,s2
    80005dac:	ffffc097          	auipc	ra,0xffffc
    80005db0:	39c080e7          	jalr	924(ra) # 80002148 <_ZdlPv>
    80005db4:	00048513          	mv	a0,s1
    80005db8:	00007097          	auipc	ra,0x7
    80005dbc:	f30080e7          	jalr	-208(ra) # 8000cce8 <_Unwind_Resume>
    80005dc0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005dc4:	00090513          	mv	a0,s2
    80005dc8:	ffffc097          	auipc	ra,0xffffc
    80005dcc:	380080e7          	jalr	896(ra) # 80002148 <_ZdlPv>
    80005dd0:	00048513          	mv	a0,s1
    80005dd4:	00007097          	auipc	ra,0x7
    80005dd8:	f14080e7          	jalr	-236(ra) # 8000cce8 <_Unwind_Resume>

0000000080005ddc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005ddc:	fe010113          	addi	sp,sp,-32
    80005de0:	00113c23          	sd	ra,24(sp)
    80005de4:	00813823          	sd	s0,16(sp)
    80005de8:	00913423          	sd	s1,8(sp)
    80005dec:	01213023          	sd	s2,0(sp)
    80005df0:	02010413          	addi	s0,sp,32
    80005df4:	00050493          	mv	s1,a0
    80005df8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005dfc:	01853503          	ld	a0,24(a0)
    80005e00:	ffffc097          	auipc	ra,0xffffc
    80005e04:	50c080e7          	jalr	1292(ra) # 8000230c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005e08:	0304b503          	ld	a0,48(s1)
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	500080e7          	jalr	1280(ra) # 8000230c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005e14:	0084b783          	ld	a5,8(s1)
    80005e18:	0144a703          	lw	a4,20(s1)
    80005e1c:	00271713          	slli	a4,a4,0x2
    80005e20:	00e787b3          	add	a5,a5,a4
    80005e24:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e28:	0144a783          	lw	a5,20(s1)
    80005e2c:	0017879b          	addiw	a5,a5,1
    80005e30:	0004a703          	lw	a4,0(s1)
    80005e34:	02e7e7bb          	remw	a5,a5,a4
    80005e38:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005e3c:	0304b503          	ld	a0,48(s1)
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	4f8080e7          	jalr	1272(ra) # 80002338 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005e48:	0204b503          	ld	a0,32(s1)
    80005e4c:	ffffc097          	auipc	ra,0xffffc
    80005e50:	4ec080e7          	jalr	1260(ra) # 80002338 <_ZN9Semaphore6signalEv>

}
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	00013903          	ld	s2,0(sp)
    80005e64:	02010113          	addi	sp,sp,32
    80005e68:	00008067          	ret

0000000080005e6c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e6c:	fe010113          	addi	sp,sp,-32
    80005e70:	00113c23          	sd	ra,24(sp)
    80005e74:	00813823          	sd	s0,16(sp)
    80005e78:	00913423          	sd	s1,8(sp)
    80005e7c:	01213023          	sd	s2,0(sp)
    80005e80:	02010413          	addi	s0,sp,32
    80005e84:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e88:	02053503          	ld	a0,32(a0)
    80005e8c:	ffffc097          	auipc	ra,0xffffc
    80005e90:	480080e7          	jalr	1152(ra) # 8000230c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e94:	0284b503          	ld	a0,40(s1)
    80005e98:	ffffc097          	auipc	ra,0xffffc
    80005e9c:	474080e7          	jalr	1140(ra) # 8000230c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005ea0:	0084b703          	ld	a4,8(s1)
    80005ea4:	0104a783          	lw	a5,16(s1)
    80005ea8:	00279693          	slli	a3,a5,0x2
    80005eac:	00d70733          	add	a4,a4,a3
    80005eb0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005eb4:	0017879b          	addiw	a5,a5,1
    80005eb8:	0004a703          	lw	a4,0(s1)
    80005ebc:	02e7e7bb          	remw	a5,a5,a4
    80005ec0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005ec4:	0284b503          	ld	a0,40(s1)
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	470080e7          	jalr	1136(ra) # 80002338 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005ed0:	0184b503          	ld	a0,24(s1)
    80005ed4:	ffffc097          	auipc	ra,0xffffc
    80005ed8:	464080e7          	jalr	1124(ra) # 80002338 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005edc:	00090513          	mv	a0,s2
    80005ee0:	01813083          	ld	ra,24(sp)
    80005ee4:	01013403          	ld	s0,16(sp)
    80005ee8:	00813483          	ld	s1,8(sp)
    80005eec:	00013903          	ld	s2,0(sp)
    80005ef0:	02010113          	addi	sp,sp,32
    80005ef4:	00008067          	ret

0000000080005ef8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ef8:	fe010113          	addi	sp,sp,-32
    80005efc:	00113c23          	sd	ra,24(sp)
    80005f00:	00813823          	sd	s0,16(sp)
    80005f04:	00913423          	sd	s1,8(sp)
    80005f08:	01213023          	sd	s2,0(sp)
    80005f0c:	02010413          	addi	s0,sp,32
    80005f10:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005f14:	02853503          	ld	a0,40(a0)
    80005f18:	ffffc097          	auipc	ra,0xffffc
    80005f1c:	3f4080e7          	jalr	1012(ra) # 8000230c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005f20:	0304b503          	ld	a0,48(s1)
    80005f24:	ffffc097          	auipc	ra,0xffffc
    80005f28:	3e8080e7          	jalr	1000(ra) # 8000230c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005f2c:	0144a783          	lw	a5,20(s1)
    80005f30:	0104a903          	lw	s2,16(s1)
    80005f34:	0327ce63          	blt	a5,s2,80005f70 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005f38:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005f3c:	0304b503          	ld	a0,48(s1)
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	3f8080e7          	jalr	1016(ra) # 80002338 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005f48:	0284b503          	ld	a0,40(s1)
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	3ec080e7          	jalr	1004(ra) # 80002338 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f54:	00090513          	mv	a0,s2
    80005f58:	01813083          	ld	ra,24(sp)
    80005f5c:	01013403          	ld	s0,16(sp)
    80005f60:	00813483          	ld	s1,8(sp)
    80005f64:	00013903          	ld	s2,0(sp)
    80005f68:	02010113          	addi	sp,sp,32
    80005f6c:	00008067          	ret
        ret = cap - head + tail;
    80005f70:	0004a703          	lw	a4,0(s1)
    80005f74:	4127093b          	subw	s2,a4,s2
    80005f78:	00f9093b          	addw	s2,s2,a5
    80005f7c:	fc1ff06f          	j	80005f3c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005f80 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f80:	fe010113          	addi	sp,sp,-32
    80005f84:	00113c23          	sd	ra,24(sp)
    80005f88:	00813823          	sd	s0,16(sp)
    80005f8c:	00913423          	sd	s1,8(sp)
    80005f90:	02010413          	addi	s0,sp,32
    80005f94:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005f98:	00a00513          	li	a0,10
    80005f9c:	ffffc097          	auipc	ra,0xffffc
    80005fa0:	468080e7          	jalr	1128(ra) # 80002404 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005fa4:	00003517          	auipc	a0,0x3
    80005fa8:	77450513          	addi	a0,a0,1908 # 80009718 <_ZTV12ConsumerSync+0x2a0>
    80005fac:	fffff097          	auipc	ra,0xfffff
    80005fb0:	cec080e7          	jalr	-788(ra) # 80004c98 <_Z11printStringPKc>
    while (getCnt()) {
    80005fb4:	00048513          	mv	a0,s1
    80005fb8:	00000097          	auipc	ra,0x0
    80005fbc:	f40080e7          	jalr	-192(ra) # 80005ef8 <_ZN9BufferCPP6getCntEv>
    80005fc0:	02050c63          	beqz	a0,80005ff8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005fc4:	0084b783          	ld	a5,8(s1)
    80005fc8:	0104a703          	lw	a4,16(s1)
    80005fcc:	00271713          	slli	a4,a4,0x2
    80005fd0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005fd4:	0007c503          	lbu	a0,0(a5)
    80005fd8:	ffffc097          	auipc	ra,0xffffc
    80005fdc:	42c080e7          	jalr	1068(ra) # 80002404 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005fe0:	0104a783          	lw	a5,16(s1)
    80005fe4:	0017879b          	addiw	a5,a5,1
    80005fe8:	0004a703          	lw	a4,0(s1)
    80005fec:	02e7e7bb          	remw	a5,a5,a4
    80005ff0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005ff4:	fc1ff06f          	j	80005fb4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005ff8:	02100513          	li	a0,33
    80005ffc:	ffffc097          	auipc	ra,0xffffc
    80006000:	408080e7          	jalr	1032(ra) # 80002404 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006004:	00a00513          	li	a0,10
    80006008:	ffffc097          	auipc	ra,0xffffc
    8000600c:	3fc080e7          	jalr	1020(ra) # 80002404 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006010:	0084b503          	ld	a0,8(s1)
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	7e8080e7          	jalr	2024(ra) # 800027fc <_Z8mem_freePv>
    delete itemAvailable;
    8000601c:	0204b503          	ld	a0,32(s1)
    80006020:	00050863          	beqz	a0,80006030 <_ZN9BufferCPPD1Ev+0xb0>
    80006024:	00053783          	ld	a5,0(a0)
    80006028:	0087b783          	ld	a5,8(a5)
    8000602c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006030:	0184b503          	ld	a0,24(s1)
    80006034:	00050863          	beqz	a0,80006044 <_ZN9BufferCPPD1Ev+0xc4>
    80006038:	00053783          	ld	a5,0(a0)
    8000603c:	0087b783          	ld	a5,8(a5)
    80006040:	000780e7          	jalr	a5
    delete mutexTail;
    80006044:	0304b503          	ld	a0,48(s1)
    80006048:	00050863          	beqz	a0,80006058 <_ZN9BufferCPPD1Ev+0xd8>
    8000604c:	00053783          	ld	a5,0(a0)
    80006050:	0087b783          	ld	a5,8(a5)
    80006054:	000780e7          	jalr	a5
    delete mutexHead;
    80006058:	0284b503          	ld	a0,40(s1)
    8000605c:	00050863          	beqz	a0,8000606c <_ZN9BufferCPPD1Ev+0xec>
    80006060:	00053783          	ld	a5,0(a0)
    80006064:	0087b783          	ld	a5,8(a5)
    80006068:	000780e7          	jalr	a5
}
    8000606c:	01813083          	ld	ra,24(sp)
    80006070:	01013403          	ld	s0,16(sp)
    80006074:	00813483          	ld	s1,8(sp)
    80006078:	02010113          	addi	sp,sp,32
    8000607c:	00008067          	ret

0000000080006080 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80006080:	fe010113          	addi	sp,sp,-32
    80006084:	00113c23          	sd	ra,24(sp)
    80006088:	00813823          	sd	s0,16(sp)
    8000608c:	00913423          	sd	s1,8(sp)
    80006090:	01213023          	sd	s2,0(sp)
    80006094:	02010413          	addi	s0,sp,32
    80006098:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000609c:	00000913          	li	s2,0
    800060a0:	00c0006f          	j	800060ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800060a4:	ffffc097          	auipc	ra,0xffffc
    800060a8:	7ec080e7          	jalr	2028(ra) # 80002890 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800060ac:	ffffd097          	auipc	ra,0xffffd
    800060b0:	934080e7          	jalr	-1740(ra) # 800029e0 <_Z4getcv>
    800060b4:	0005059b          	sext.w	a1,a0
    800060b8:	01b00793          	li	a5,27
    800060bc:	02f58a63          	beq	a1,a5,800060f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800060c0:	0084b503          	ld	a0,8(s1)
    800060c4:	fffff097          	auipc	ra,0xfffff
    800060c8:	094080e7          	jalr	148(ra) # 80005158 <_ZN6Buffer3putEi>
        i++;
    800060cc:	0019071b          	addiw	a4,s2,1
    800060d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800060d4:	0004a683          	lw	a3,0(s1)
    800060d8:	0026979b          	slliw	a5,a3,0x2
    800060dc:	00d787bb          	addw	a5,a5,a3
    800060e0:	0017979b          	slliw	a5,a5,0x1
    800060e4:	02f767bb          	remw	a5,a4,a5
    800060e8:	fc0792e3          	bnez	a5,800060ac <_ZL16producerKeyboardPv+0x2c>
    800060ec:	fb9ff06f          	j	800060a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800060f0:	00100793          	li	a5,1
    800060f4:	00006717          	auipc	a4,0x6
    800060f8:	88f72623          	sw	a5,-1908(a4) # 8000b980 <_ZL9threadEnd>
    data->buffer->put('!');
    800060fc:	02100593          	li	a1,33
    80006100:	0084b503          	ld	a0,8(s1)
    80006104:	fffff097          	auipc	ra,0xfffff
    80006108:	054080e7          	jalr	84(ra) # 80005158 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000610c:	0104b503          	ld	a0,16(s1)
    80006110:	ffffd097          	auipc	ra,0xffffd
    80006114:	838080e7          	jalr	-1992(ra) # 80002948 <_Z10sem_signalP4_sem>
}
    80006118:	01813083          	ld	ra,24(sp)
    8000611c:	01013403          	ld	s0,16(sp)
    80006120:	00813483          	ld	s1,8(sp)
    80006124:	00013903          	ld	s2,0(sp)
    80006128:	02010113          	addi	sp,sp,32
    8000612c:	00008067          	ret

0000000080006130 <_ZL8producerPv>:

static void producer(void *arg) {
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00813823          	sd	s0,16(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	01213023          	sd	s2,0(sp)
    80006144:	02010413          	addi	s0,sp,32
    80006148:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000614c:	00000913          	li	s2,0
    80006150:	00c0006f          	j	8000615c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80006154:	ffffc097          	auipc	ra,0xffffc
    80006158:	73c080e7          	jalr	1852(ra) # 80002890 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000615c:	00006797          	auipc	a5,0x6
    80006160:	8247a783          	lw	a5,-2012(a5) # 8000b980 <_ZL9threadEnd>
    80006164:	02079e63          	bnez	a5,800061a0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80006168:	0004a583          	lw	a1,0(s1)
    8000616c:	0305859b          	addiw	a1,a1,48
    80006170:	0084b503          	ld	a0,8(s1)
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	fe4080e7          	jalr	-28(ra) # 80005158 <_ZN6Buffer3putEi>
        i++;
    8000617c:	0019071b          	addiw	a4,s2,1
    80006180:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80006184:	0004a683          	lw	a3,0(s1)
    80006188:	0026979b          	slliw	a5,a3,0x2
    8000618c:	00d787bb          	addw	a5,a5,a3
    80006190:	0017979b          	slliw	a5,a5,0x1
    80006194:	02f767bb          	remw	a5,a4,a5
    80006198:	fc0792e3          	bnez	a5,8000615c <_ZL8producerPv+0x2c>
    8000619c:	fb9ff06f          	j	80006154 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800061a0:	0104b503          	ld	a0,16(s1)
    800061a4:	ffffc097          	auipc	ra,0xffffc
    800061a8:	7a4080e7          	jalr	1956(ra) # 80002948 <_Z10sem_signalP4_sem>
}
    800061ac:	01813083          	ld	ra,24(sp)
    800061b0:	01013403          	ld	s0,16(sp)
    800061b4:	00813483          	ld	s1,8(sp)
    800061b8:	00013903          	ld	s2,0(sp)
    800061bc:	02010113          	addi	sp,sp,32
    800061c0:	00008067          	ret

00000000800061c4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800061c4:	fd010113          	addi	sp,sp,-48
    800061c8:	02113423          	sd	ra,40(sp)
    800061cc:	02813023          	sd	s0,32(sp)
    800061d0:	00913c23          	sd	s1,24(sp)
    800061d4:	01213823          	sd	s2,16(sp)
    800061d8:	01313423          	sd	s3,8(sp)
    800061dc:	03010413          	addi	s0,sp,48
    800061e0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800061e4:	00000993          	li	s3,0
    800061e8:	01c0006f          	j	80006204 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800061ec:	ffffc097          	auipc	ra,0xffffc
    800061f0:	6a4080e7          	jalr	1700(ra) # 80002890 <_Z15thread_dispatchv>
    800061f4:	0500006f          	j	80006244 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800061f8:	00a00513          	li	a0,10
    800061fc:	ffffd097          	auipc	ra,0xffffd
    80006200:	810080e7          	jalr	-2032(ra) # 80002a0c <_Z4putcc>
    while (!threadEnd) {
    80006204:	00005797          	auipc	a5,0x5
    80006208:	77c7a783          	lw	a5,1916(a5) # 8000b980 <_ZL9threadEnd>
    8000620c:	06079063          	bnez	a5,8000626c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80006210:	00893503          	ld	a0,8(s2)
    80006214:	fffff097          	auipc	ra,0xfffff
    80006218:	fd4080e7          	jalr	-44(ra) # 800051e8 <_ZN6Buffer3getEv>
        i++;
    8000621c:	0019849b          	addiw	s1,s3,1
    80006220:	0004899b          	sext.w	s3,s1
        putc(key);
    80006224:	0ff57513          	andi	a0,a0,255
    80006228:	ffffc097          	auipc	ra,0xffffc
    8000622c:	7e4080e7          	jalr	2020(ra) # 80002a0c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80006230:	00092703          	lw	a4,0(s2)
    80006234:	0027179b          	slliw	a5,a4,0x2
    80006238:	00e787bb          	addw	a5,a5,a4
    8000623c:	02f4e7bb          	remw	a5,s1,a5
    80006240:	fa0786e3          	beqz	a5,800061ec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80006244:	05000793          	li	a5,80
    80006248:	02f4e4bb          	remw	s1,s1,a5
    8000624c:	fa049ce3          	bnez	s1,80006204 <_ZL8consumerPv+0x40>
    80006250:	fa9ff06f          	j	800061f8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80006254:	00893503          	ld	a0,8(s2)
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	f90080e7          	jalr	-112(ra) # 800051e8 <_ZN6Buffer3getEv>
        putc(key);
    80006260:	0ff57513          	andi	a0,a0,255
    80006264:	ffffc097          	auipc	ra,0xffffc
    80006268:	7a8080e7          	jalr	1960(ra) # 80002a0c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000626c:	00893503          	ld	a0,8(s2)
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	004080e7          	jalr	4(ra) # 80005274 <_ZN6Buffer6getCntEv>
    80006278:	fca04ee3          	bgtz	a0,80006254 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000627c:	01093503          	ld	a0,16(s2)
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	6c8080e7          	jalr	1736(ra) # 80002948 <_Z10sem_signalP4_sem>
}
    80006288:	02813083          	ld	ra,40(sp)
    8000628c:	02013403          	ld	s0,32(sp)
    80006290:	01813483          	ld	s1,24(sp)
    80006294:	01013903          	ld	s2,16(sp)
    80006298:	00813983          	ld	s3,8(sp)
    8000629c:	03010113          	addi	sp,sp,48
    800062a0:	00008067          	ret

00000000800062a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800062a4:	f9010113          	addi	sp,sp,-112
    800062a8:	06113423          	sd	ra,104(sp)
    800062ac:	06813023          	sd	s0,96(sp)
    800062b0:	04913c23          	sd	s1,88(sp)
    800062b4:	05213823          	sd	s2,80(sp)
    800062b8:	05313423          	sd	s3,72(sp)
    800062bc:	05413023          	sd	s4,64(sp)
    800062c0:	03513c23          	sd	s5,56(sp)
    800062c4:	03613823          	sd	s6,48(sp)
    800062c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800062cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	07050513          	addi	a0,a0,112 # 80009340 <_ZTV7WorkerD+0x28>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	9c0080e7          	jalr	-1600(ra) # 80004c98 <_Z11printStringPKc>
    getString(input, 30);
    800062e0:	01e00593          	li	a1,30
    800062e4:	fa040513          	addi	a0,s0,-96
    800062e8:	fffff097          	auipc	ra,0xfffff
    800062ec:	a38080e7          	jalr	-1480(ra) # 80004d20 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800062f0:	fa040513          	addi	a0,s0,-96
    800062f4:	fffff097          	auipc	ra,0xfffff
    800062f8:	b04080e7          	jalr	-1276(ra) # 80004df8 <_Z11stringToIntPKc>
    800062fc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80006300:	00003517          	auipc	a0,0x3
    80006304:	06050513          	addi	a0,a0,96 # 80009360 <_ZTV7WorkerD+0x48>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	990080e7          	jalr	-1648(ra) # 80004c98 <_Z11printStringPKc>
    getString(input, 30);
    80006310:	01e00593          	li	a1,30
    80006314:	fa040513          	addi	a0,s0,-96
    80006318:	fffff097          	auipc	ra,0xfffff
    8000631c:	a08080e7          	jalr	-1528(ra) # 80004d20 <_Z9getStringPci>
    n = stringToInt(input);
    80006320:	fa040513          	addi	a0,s0,-96
    80006324:	fffff097          	auipc	ra,0xfffff
    80006328:	ad4080e7          	jalr	-1324(ra) # 80004df8 <_Z11stringToIntPKc>
    8000632c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80006330:	00003517          	auipc	a0,0x3
    80006334:	05050513          	addi	a0,a0,80 # 80009380 <_ZTV7WorkerD+0x68>
    80006338:	fffff097          	auipc	ra,0xfffff
    8000633c:	960080e7          	jalr	-1696(ra) # 80004c98 <_Z11printStringPKc>
    80006340:	00000613          	li	a2,0
    80006344:	00a00593          	li	a1,10
    80006348:	00090513          	mv	a0,s2
    8000634c:	fffff097          	auipc	ra,0xfffff
    80006350:	afc080e7          	jalr	-1284(ra) # 80004e48 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80006354:	00003517          	auipc	a0,0x3
    80006358:	04450513          	addi	a0,a0,68 # 80009398 <_ZTV7WorkerD+0x80>
    8000635c:	fffff097          	auipc	ra,0xfffff
    80006360:	93c080e7          	jalr	-1732(ra) # 80004c98 <_Z11printStringPKc>
    80006364:	00000613          	li	a2,0
    80006368:	00a00593          	li	a1,10
    8000636c:	00048513          	mv	a0,s1
    80006370:	fffff097          	auipc	ra,0xfffff
    80006374:	ad8080e7          	jalr	-1320(ra) # 80004e48 <_Z8printIntiii>
    printString(".\n");
    80006378:	00003517          	auipc	a0,0x3
    8000637c:	03850513          	addi	a0,a0,56 # 800093b0 <_ZTV7WorkerD+0x98>
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	918080e7          	jalr	-1768(ra) # 80004c98 <_Z11printStringPKc>
    if(threadNum > n) {
    80006388:	0324c463          	blt	s1,s2,800063b0 <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    8000638c:	03205c63          	blez	s2,800063c4 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    80006390:	03800513          	li	a0,56
    80006394:	ffffc097          	auipc	ra,0xffffc
    80006398:	d8c080e7          	jalr	-628(ra) # 80002120 <_Znwm>
    8000639c:	00050a13          	mv	s4,a0
    800063a0:	00048593          	mv	a1,s1
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	d18080e7          	jalr	-744(ra) # 800050bc <_ZN6BufferC1Ei>
    800063ac:	0300006f          	j	800063dc <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800063b0:	00003517          	auipc	a0,0x3
    800063b4:	00850513          	addi	a0,a0,8 # 800093b8 <_ZTV7WorkerD+0xa0>
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	8e0080e7          	jalr	-1824(ra) # 80004c98 <_Z11printStringPKc>
        return;
    800063c0:	0140006f          	j	800063d4 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800063c4:	00003517          	auipc	a0,0x3
    800063c8:	03450513          	addi	a0,a0,52 # 800093f8 <_ZTV7WorkerD+0xe0>
    800063cc:	fffff097          	auipc	ra,0xfffff
    800063d0:	8cc080e7          	jalr	-1844(ra) # 80004c98 <_Z11printStringPKc>
        return;
    800063d4:	000b0113          	mv	sp,s6
    800063d8:	1500006f          	j	80006528 <_Z22producerConsumer_C_APIv+0x284>
    sem_open(&waitForAll, 0);
    800063dc:	00000593          	li	a1,0
    800063e0:	00005517          	auipc	a0,0x5
    800063e4:	5a850513          	addi	a0,a0,1448 # 8000b988 <_ZL10waitForAll>
    800063e8:	ffffc097          	auipc	ra,0xffffc
    800063ec:	4cc080e7          	jalr	1228(ra) # 800028b4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800063f0:	00391793          	slli	a5,s2,0x3
    800063f4:	00f78793          	addi	a5,a5,15
    800063f8:	ff07f793          	andi	a5,a5,-16
    800063fc:	40f10133          	sub	sp,sp,a5
    80006400:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80006404:	0019071b          	addiw	a4,s2,1
    80006408:	00171793          	slli	a5,a4,0x1
    8000640c:	00e787b3          	add	a5,a5,a4
    80006410:	00379793          	slli	a5,a5,0x3
    80006414:	00f78793          	addi	a5,a5,15
    80006418:	ff07f793          	andi	a5,a5,-16
    8000641c:	40f10133          	sub	sp,sp,a5
    80006420:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80006424:	00191613          	slli	a2,s2,0x1
    80006428:	012607b3          	add	a5,a2,s2
    8000642c:	00379793          	slli	a5,a5,0x3
    80006430:	00f987b3          	add	a5,s3,a5
    80006434:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80006438:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000643c:	00005717          	auipc	a4,0x5
    80006440:	54c73703          	ld	a4,1356(a4) # 8000b988 <_ZL10waitForAll>
    80006444:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80006448:	00078613          	mv	a2,a5
    8000644c:	00000597          	auipc	a1,0x0
    80006450:	d7858593          	addi	a1,a1,-648 # 800061c4 <_ZL8consumerPv>
    80006454:	f9840513          	addi	a0,s0,-104
    80006458:	ffffc097          	auipc	ra,0xffffc
    8000645c:	3d4080e7          	jalr	980(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80006460:	00000493          	li	s1,0
    80006464:	0280006f          	j	8000648c <_Z22producerConsumer_C_APIv+0x1e8>
        thread_create(threads + i,
    80006468:	00000597          	auipc	a1,0x0
    8000646c:	c1858593          	addi	a1,a1,-1000 # 80006080 <_ZL16producerKeyboardPv>
                      data + i);
    80006470:	00179613          	slli	a2,a5,0x1
    80006474:	00f60633          	add	a2,a2,a5
    80006478:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000647c:	00c98633          	add	a2,s3,a2
    80006480:	ffffc097          	auipc	ra,0xffffc
    80006484:	3ac080e7          	jalr	940(ra) # 8000282c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80006488:	0014849b          	addiw	s1,s1,1
    8000648c:	0524d263          	bge	s1,s2,800064d0 <_Z22producerConsumer_C_APIv+0x22c>
        data[i].id = i;
    80006490:	00149793          	slli	a5,s1,0x1
    80006494:	009787b3          	add	a5,a5,s1
    80006498:	00379793          	slli	a5,a5,0x3
    8000649c:	00f987b3          	add	a5,s3,a5
    800064a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800064a4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800064a8:	00005717          	auipc	a4,0x5
    800064ac:	4e073703          	ld	a4,1248(a4) # 8000b988 <_ZL10waitForAll>
    800064b0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800064b4:	00048793          	mv	a5,s1
    800064b8:	00349513          	slli	a0,s1,0x3
    800064bc:	00aa8533          	add	a0,s5,a0
    800064c0:	fa9054e3          	blez	s1,80006468 <_Z22producerConsumer_C_APIv+0x1c4>
    800064c4:	00000597          	auipc	a1,0x0
    800064c8:	c6c58593          	addi	a1,a1,-916 # 80006130 <_ZL8producerPv>
    800064cc:	fa5ff06f          	j	80006470 <_Z22producerConsumer_C_APIv+0x1cc>
    thread_dispatch();
    800064d0:	ffffc097          	auipc	ra,0xffffc
    800064d4:	3c0080e7          	jalr	960(ra) # 80002890 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800064d8:	00000493          	li	s1,0
    800064dc:	00994e63          	blt	s2,s1,800064f8 <_Z22producerConsumer_C_APIv+0x254>
        sem_wait(waitForAll);
    800064e0:	00005517          	auipc	a0,0x5
    800064e4:	4a853503          	ld	a0,1192(a0) # 8000b988 <_ZL10waitForAll>
    800064e8:	ffffc097          	auipc	ra,0xffffc
    800064ec:	430080e7          	jalr	1072(ra) # 80002918 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800064f0:	0014849b          	addiw	s1,s1,1
    800064f4:	fe9ff06f          	j	800064dc <_Z22producerConsumer_C_APIv+0x238>
    sem_close(waitForAll);
    800064f8:	00005517          	auipc	a0,0x5
    800064fc:	49053503          	ld	a0,1168(a0) # 8000b988 <_ZL10waitForAll>
    80006500:	ffffc097          	auipc	ra,0xffffc
    80006504:	3e8080e7          	jalr	1000(ra) # 800028e8 <_Z9sem_closeP4_sem>
    delete buffer;
    80006508:	000a0e63          	beqz	s4,80006524 <_Z22producerConsumer_C_APIv+0x280>
    8000650c:	000a0513          	mv	a0,s4
    80006510:	fffff097          	auipc	ra,0xfffff
    80006514:	dec080e7          	jalr	-532(ra) # 800052fc <_ZN6BufferD1Ev>
    80006518:	000a0513          	mv	a0,s4
    8000651c:	ffffc097          	auipc	ra,0xffffc
    80006520:	c2c080e7          	jalr	-980(ra) # 80002148 <_ZdlPv>
    80006524:	000b0113          	mv	sp,s6

}
    80006528:	f9040113          	addi	sp,s0,-112
    8000652c:	06813083          	ld	ra,104(sp)
    80006530:	06013403          	ld	s0,96(sp)
    80006534:	05813483          	ld	s1,88(sp)
    80006538:	05013903          	ld	s2,80(sp)
    8000653c:	04813983          	ld	s3,72(sp)
    80006540:	04013a03          	ld	s4,64(sp)
    80006544:	03813a83          	ld	s5,56(sp)
    80006548:	03013b03          	ld	s6,48(sp)
    8000654c:	07010113          	addi	sp,sp,112
    80006550:	00008067          	ret
    80006554:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80006558:	000a0513          	mv	a0,s4
    8000655c:	ffffc097          	auipc	ra,0xffffc
    80006560:	bec080e7          	jalr	-1044(ra) # 80002148 <_ZdlPv>
    80006564:	00048513          	mv	a0,s1
    80006568:	00006097          	auipc	ra,0x6
    8000656c:	780080e7          	jalr	1920(ra) # 8000cce8 <_Unwind_Resume>

0000000080006570 <start>:
    80006570:	ff010113          	addi	sp,sp,-16
    80006574:	00813423          	sd	s0,8(sp)
    80006578:	01010413          	addi	s0,sp,16
    8000657c:	300027f3          	csrr	a5,mstatus
    80006580:	ffffe737          	lui	a4,0xffffe
    80006584:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff197f>
    80006588:	00e7f7b3          	and	a5,a5,a4
    8000658c:	00001737          	lui	a4,0x1
    80006590:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006594:	00e7e7b3          	or	a5,a5,a4
    80006598:	30079073          	csrw	mstatus,a5
    8000659c:	00000797          	auipc	a5,0x0
    800065a0:	16078793          	addi	a5,a5,352 # 800066fc <system_main>
    800065a4:	34179073          	csrw	mepc,a5
    800065a8:	00000793          	li	a5,0
    800065ac:	18079073          	csrw	satp,a5
    800065b0:	000107b7          	lui	a5,0x10
    800065b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800065b8:	30279073          	csrw	medeleg,a5
    800065bc:	30379073          	csrw	mideleg,a5
    800065c0:	104027f3          	csrr	a5,sie
    800065c4:	2227e793          	ori	a5,a5,546
    800065c8:	10479073          	csrw	sie,a5
    800065cc:	fff00793          	li	a5,-1
    800065d0:	00a7d793          	srli	a5,a5,0xa
    800065d4:	3b079073          	csrw	pmpaddr0,a5
    800065d8:	00f00793          	li	a5,15
    800065dc:	3a079073          	csrw	pmpcfg0,a5
    800065e0:	f14027f3          	csrr	a5,mhartid
    800065e4:	0200c737          	lui	a4,0x200c
    800065e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065ec:	0007869b          	sext.w	a3,a5
    800065f0:	00269713          	slli	a4,a3,0x2
    800065f4:	000f4637          	lui	a2,0xf4
    800065f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065fc:	00d70733          	add	a4,a4,a3
    80006600:	0037979b          	slliw	a5,a5,0x3
    80006604:	020046b7          	lui	a3,0x2004
    80006608:	00d787b3          	add	a5,a5,a3
    8000660c:	00c585b3          	add	a1,a1,a2
    80006610:	00371693          	slli	a3,a4,0x3
    80006614:	00005717          	auipc	a4,0x5
    80006618:	60c70713          	addi	a4,a4,1548 # 8000bc20 <timer_scratch>
    8000661c:	00b7b023          	sd	a1,0(a5)
    80006620:	00d70733          	add	a4,a4,a3
    80006624:	00f73c23          	sd	a5,24(a4)
    80006628:	02c73023          	sd	a2,32(a4)
    8000662c:	34071073          	csrw	mscratch,a4
    80006630:	00000797          	auipc	a5,0x0
    80006634:	6e078793          	addi	a5,a5,1760 # 80006d10 <timervec>
    80006638:	30579073          	csrw	mtvec,a5
    8000663c:	300027f3          	csrr	a5,mstatus
    80006640:	0087e793          	ori	a5,a5,8
    80006644:	30079073          	csrw	mstatus,a5
    80006648:	304027f3          	csrr	a5,mie
    8000664c:	0807e793          	ori	a5,a5,128
    80006650:	30479073          	csrw	mie,a5
    80006654:	f14027f3          	csrr	a5,mhartid
    80006658:	0007879b          	sext.w	a5,a5
    8000665c:	00078213          	mv	tp,a5
    80006660:	30200073          	mret
    80006664:	00813403          	ld	s0,8(sp)
    80006668:	01010113          	addi	sp,sp,16
    8000666c:	00008067          	ret

0000000080006670 <timerinit>:
    80006670:	ff010113          	addi	sp,sp,-16
    80006674:	00813423          	sd	s0,8(sp)
    80006678:	01010413          	addi	s0,sp,16
    8000667c:	f14027f3          	csrr	a5,mhartid
    80006680:	0200c737          	lui	a4,0x200c
    80006684:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006688:	0007869b          	sext.w	a3,a5
    8000668c:	00269713          	slli	a4,a3,0x2
    80006690:	000f4637          	lui	a2,0xf4
    80006694:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006698:	00d70733          	add	a4,a4,a3
    8000669c:	0037979b          	slliw	a5,a5,0x3
    800066a0:	020046b7          	lui	a3,0x2004
    800066a4:	00d787b3          	add	a5,a5,a3
    800066a8:	00c585b3          	add	a1,a1,a2
    800066ac:	00371693          	slli	a3,a4,0x3
    800066b0:	00005717          	auipc	a4,0x5
    800066b4:	57070713          	addi	a4,a4,1392 # 8000bc20 <timer_scratch>
    800066b8:	00b7b023          	sd	a1,0(a5)
    800066bc:	00d70733          	add	a4,a4,a3
    800066c0:	00f73c23          	sd	a5,24(a4)
    800066c4:	02c73023          	sd	a2,32(a4)
    800066c8:	34071073          	csrw	mscratch,a4
    800066cc:	00000797          	auipc	a5,0x0
    800066d0:	64478793          	addi	a5,a5,1604 # 80006d10 <timervec>
    800066d4:	30579073          	csrw	mtvec,a5
    800066d8:	300027f3          	csrr	a5,mstatus
    800066dc:	0087e793          	ori	a5,a5,8
    800066e0:	30079073          	csrw	mstatus,a5
    800066e4:	304027f3          	csrr	a5,mie
    800066e8:	0807e793          	ori	a5,a5,128
    800066ec:	30479073          	csrw	mie,a5
    800066f0:	00813403          	ld	s0,8(sp)
    800066f4:	01010113          	addi	sp,sp,16
    800066f8:	00008067          	ret

00000000800066fc <system_main>:
    800066fc:	fe010113          	addi	sp,sp,-32
    80006700:	00813823          	sd	s0,16(sp)
    80006704:	00913423          	sd	s1,8(sp)
    80006708:	00113c23          	sd	ra,24(sp)
    8000670c:	02010413          	addi	s0,sp,32
    80006710:	00000097          	auipc	ra,0x0
    80006714:	0c4080e7          	jalr	196(ra) # 800067d4 <cpuid>
    80006718:	00005497          	auipc	s1,0x5
    8000671c:	27848493          	addi	s1,s1,632 # 8000b990 <started>
    80006720:	02050263          	beqz	a0,80006744 <system_main+0x48>
    80006724:	0004a783          	lw	a5,0(s1)
    80006728:	0007879b          	sext.w	a5,a5
    8000672c:	fe078ce3          	beqz	a5,80006724 <system_main+0x28>
    80006730:	0ff0000f          	fence
    80006734:	00003517          	auipc	a0,0x3
    80006738:	0b450513          	addi	a0,a0,180 # 800097e8 <_ZTV8Consumer+0x68>
    8000673c:	00001097          	auipc	ra,0x1
    80006740:	a70080e7          	jalr	-1424(ra) # 800071ac <panic>
    80006744:	00001097          	auipc	ra,0x1
    80006748:	9c4080e7          	jalr	-1596(ra) # 80007108 <consoleinit>
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	150080e7          	jalr	336(ra) # 8000789c <printfinit>
    80006754:	00003517          	auipc	a0,0x3
    80006758:	e8c50513          	addi	a0,a0,-372 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000675c:	00001097          	auipc	ra,0x1
    80006760:	aac080e7          	jalr	-1364(ra) # 80007208 <__printf>
    80006764:	00003517          	auipc	a0,0x3
    80006768:	05450513          	addi	a0,a0,84 # 800097b8 <_ZTV8Consumer+0x38>
    8000676c:	00001097          	auipc	ra,0x1
    80006770:	a9c080e7          	jalr	-1380(ra) # 80007208 <__printf>
    80006774:	00003517          	auipc	a0,0x3
    80006778:	e6c50513          	addi	a0,a0,-404 # 800095e0 <_ZTV12ConsumerSync+0x168>
    8000677c:	00001097          	auipc	ra,0x1
    80006780:	a8c080e7          	jalr	-1396(ra) # 80007208 <__printf>
    80006784:	00001097          	auipc	ra,0x1
    80006788:	4a4080e7          	jalr	1188(ra) # 80007c28 <kinit>
    8000678c:	00000097          	auipc	ra,0x0
    80006790:	148080e7          	jalr	328(ra) # 800068d4 <trapinit>
    80006794:	00000097          	auipc	ra,0x0
    80006798:	16c080e7          	jalr	364(ra) # 80006900 <trapinithart>
    8000679c:	00000097          	auipc	ra,0x0
    800067a0:	5b4080e7          	jalr	1460(ra) # 80006d50 <plicinit>
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	5d4080e7          	jalr	1492(ra) # 80006d78 <plicinithart>
    800067ac:	00000097          	auipc	ra,0x0
    800067b0:	078080e7          	jalr	120(ra) # 80006824 <userinit>
    800067b4:	0ff0000f          	fence
    800067b8:	00100793          	li	a5,1
    800067bc:	00003517          	auipc	a0,0x3
    800067c0:	01450513          	addi	a0,a0,20 # 800097d0 <_ZTV8Consumer+0x50>
    800067c4:	00f4a023          	sw	a5,0(s1)
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	a40080e7          	jalr	-1472(ra) # 80007208 <__printf>
    800067d0:	0000006f          	j	800067d0 <system_main+0xd4>

00000000800067d4 <cpuid>:
    800067d4:	ff010113          	addi	sp,sp,-16
    800067d8:	00813423          	sd	s0,8(sp)
    800067dc:	01010413          	addi	s0,sp,16
    800067e0:	00020513          	mv	a0,tp
    800067e4:	00813403          	ld	s0,8(sp)
    800067e8:	0005051b          	sext.w	a0,a0
    800067ec:	01010113          	addi	sp,sp,16
    800067f0:	00008067          	ret

00000000800067f4 <mycpu>:
    800067f4:	ff010113          	addi	sp,sp,-16
    800067f8:	00813423          	sd	s0,8(sp)
    800067fc:	01010413          	addi	s0,sp,16
    80006800:	00020793          	mv	a5,tp
    80006804:	00813403          	ld	s0,8(sp)
    80006808:	0007879b          	sext.w	a5,a5
    8000680c:	00779793          	slli	a5,a5,0x7
    80006810:	00006517          	auipc	a0,0x6
    80006814:	44050513          	addi	a0,a0,1088 # 8000cc50 <cpus>
    80006818:	00f50533          	add	a0,a0,a5
    8000681c:	01010113          	addi	sp,sp,16
    80006820:	00008067          	ret

0000000080006824 <userinit>:
    80006824:	ff010113          	addi	sp,sp,-16
    80006828:	00813423          	sd	s0,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	00813403          	ld	s0,8(sp)
    80006834:	01010113          	addi	sp,sp,16
    80006838:	ffffc317          	auipc	t1,0xffffc
    8000683c:	25430067          	jr	596(t1) # 80002a8c <main>

0000000080006840 <either_copyout>:
    80006840:	ff010113          	addi	sp,sp,-16
    80006844:	00813023          	sd	s0,0(sp)
    80006848:	00113423          	sd	ra,8(sp)
    8000684c:	01010413          	addi	s0,sp,16
    80006850:	02051663          	bnez	a0,8000687c <either_copyout+0x3c>
    80006854:	00058513          	mv	a0,a1
    80006858:	00060593          	mv	a1,a2
    8000685c:	0006861b          	sext.w	a2,a3
    80006860:	00002097          	auipc	ra,0x2
    80006864:	c54080e7          	jalr	-940(ra) # 800084b4 <__memmove>
    80006868:	00813083          	ld	ra,8(sp)
    8000686c:	00013403          	ld	s0,0(sp)
    80006870:	00000513          	li	a0,0
    80006874:	01010113          	addi	sp,sp,16
    80006878:	00008067          	ret
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	f9450513          	addi	a0,a0,-108 # 80009810 <_ZTV8Consumer+0x90>
    80006884:	00001097          	auipc	ra,0x1
    80006888:	928080e7          	jalr	-1752(ra) # 800071ac <panic>

000000008000688c <either_copyin>:
    8000688c:	ff010113          	addi	sp,sp,-16
    80006890:	00813023          	sd	s0,0(sp)
    80006894:	00113423          	sd	ra,8(sp)
    80006898:	01010413          	addi	s0,sp,16
    8000689c:	02059463          	bnez	a1,800068c4 <either_copyin+0x38>
    800068a0:	00060593          	mv	a1,a2
    800068a4:	0006861b          	sext.w	a2,a3
    800068a8:	00002097          	auipc	ra,0x2
    800068ac:	c0c080e7          	jalr	-1012(ra) # 800084b4 <__memmove>
    800068b0:	00813083          	ld	ra,8(sp)
    800068b4:	00013403          	ld	s0,0(sp)
    800068b8:	00000513          	li	a0,0
    800068bc:	01010113          	addi	sp,sp,16
    800068c0:	00008067          	ret
    800068c4:	00003517          	auipc	a0,0x3
    800068c8:	f7450513          	addi	a0,a0,-140 # 80009838 <_ZTV8Consumer+0xb8>
    800068cc:	00001097          	auipc	ra,0x1
    800068d0:	8e0080e7          	jalr	-1824(ra) # 800071ac <panic>

00000000800068d4 <trapinit>:
    800068d4:	ff010113          	addi	sp,sp,-16
    800068d8:	00813423          	sd	s0,8(sp)
    800068dc:	01010413          	addi	s0,sp,16
    800068e0:	00813403          	ld	s0,8(sp)
    800068e4:	00003597          	auipc	a1,0x3
    800068e8:	f7c58593          	addi	a1,a1,-132 # 80009860 <_ZTV8Consumer+0xe0>
    800068ec:	00006517          	auipc	a0,0x6
    800068f0:	3e450513          	addi	a0,a0,996 # 8000ccd0 <tickslock>
    800068f4:	01010113          	addi	sp,sp,16
    800068f8:	00001317          	auipc	t1,0x1
    800068fc:	5c030067          	jr	1472(t1) # 80007eb8 <initlock>

0000000080006900 <trapinithart>:
    80006900:	ff010113          	addi	sp,sp,-16
    80006904:	00813423          	sd	s0,8(sp)
    80006908:	01010413          	addi	s0,sp,16
    8000690c:	00000797          	auipc	a5,0x0
    80006910:	2f478793          	addi	a5,a5,756 # 80006c00 <kernelvec>
    80006914:	10579073          	csrw	stvec,a5
    80006918:	00813403          	ld	s0,8(sp)
    8000691c:	01010113          	addi	sp,sp,16
    80006920:	00008067          	ret

0000000080006924 <usertrap>:
    80006924:	ff010113          	addi	sp,sp,-16
    80006928:	00813423          	sd	s0,8(sp)
    8000692c:	01010413          	addi	s0,sp,16
    80006930:	00813403          	ld	s0,8(sp)
    80006934:	01010113          	addi	sp,sp,16
    80006938:	00008067          	ret

000000008000693c <usertrapret>:
    8000693c:	ff010113          	addi	sp,sp,-16
    80006940:	00813423          	sd	s0,8(sp)
    80006944:	01010413          	addi	s0,sp,16
    80006948:	00813403          	ld	s0,8(sp)
    8000694c:	01010113          	addi	sp,sp,16
    80006950:	00008067          	ret

0000000080006954 <kerneltrap>:
    80006954:	fe010113          	addi	sp,sp,-32
    80006958:	00813823          	sd	s0,16(sp)
    8000695c:	00113c23          	sd	ra,24(sp)
    80006960:	00913423          	sd	s1,8(sp)
    80006964:	02010413          	addi	s0,sp,32
    80006968:	142025f3          	csrr	a1,scause
    8000696c:	100027f3          	csrr	a5,sstatus
    80006970:	0027f793          	andi	a5,a5,2
    80006974:	10079c63          	bnez	a5,80006a8c <kerneltrap+0x138>
    80006978:	142027f3          	csrr	a5,scause
    8000697c:	0207ce63          	bltz	a5,800069b8 <kerneltrap+0x64>
    80006980:	00003517          	auipc	a0,0x3
    80006984:	f2850513          	addi	a0,a0,-216 # 800098a8 <_ZTV8Consumer+0x128>
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	880080e7          	jalr	-1920(ra) # 80007208 <__printf>
    80006990:	141025f3          	csrr	a1,sepc
    80006994:	14302673          	csrr	a2,stval
    80006998:	00003517          	auipc	a0,0x3
    8000699c:	f2050513          	addi	a0,a0,-224 # 800098b8 <_ZTV8Consumer+0x138>
    800069a0:	00001097          	auipc	ra,0x1
    800069a4:	868080e7          	jalr	-1944(ra) # 80007208 <__printf>
    800069a8:	00003517          	auipc	a0,0x3
    800069ac:	f2850513          	addi	a0,a0,-216 # 800098d0 <_ZTV8Consumer+0x150>
    800069b0:	00000097          	auipc	ra,0x0
    800069b4:	7fc080e7          	jalr	2044(ra) # 800071ac <panic>
    800069b8:	0ff7f713          	andi	a4,a5,255
    800069bc:	00900693          	li	a3,9
    800069c0:	04d70063          	beq	a4,a3,80006a00 <kerneltrap+0xac>
    800069c4:	fff00713          	li	a4,-1
    800069c8:	03f71713          	slli	a4,a4,0x3f
    800069cc:	00170713          	addi	a4,a4,1
    800069d0:	fae798e3          	bne	a5,a4,80006980 <kerneltrap+0x2c>
    800069d4:	00000097          	auipc	ra,0x0
    800069d8:	e00080e7          	jalr	-512(ra) # 800067d4 <cpuid>
    800069dc:	06050663          	beqz	a0,80006a48 <kerneltrap+0xf4>
    800069e0:	144027f3          	csrr	a5,sip
    800069e4:	ffd7f793          	andi	a5,a5,-3
    800069e8:	14479073          	csrw	sip,a5
    800069ec:	01813083          	ld	ra,24(sp)
    800069f0:	01013403          	ld	s0,16(sp)
    800069f4:	00813483          	ld	s1,8(sp)
    800069f8:	02010113          	addi	sp,sp,32
    800069fc:	00008067          	ret
    80006a00:	00000097          	auipc	ra,0x0
    80006a04:	3c4080e7          	jalr	964(ra) # 80006dc4 <plic_claim>
    80006a08:	00a00793          	li	a5,10
    80006a0c:	00050493          	mv	s1,a0
    80006a10:	06f50863          	beq	a0,a5,80006a80 <kerneltrap+0x12c>
    80006a14:	fc050ce3          	beqz	a0,800069ec <kerneltrap+0x98>
    80006a18:	00050593          	mv	a1,a0
    80006a1c:	00003517          	auipc	a0,0x3
    80006a20:	e6c50513          	addi	a0,a0,-404 # 80009888 <_ZTV8Consumer+0x108>
    80006a24:	00000097          	auipc	ra,0x0
    80006a28:	7e4080e7          	jalr	2020(ra) # 80007208 <__printf>
    80006a2c:	01013403          	ld	s0,16(sp)
    80006a30:	01813083          	ld	ra,24(sp)
    80006a34:	00048513          	mv	a0,s1
    80006a38:	00813483          	ld	s1,8(sp)
    80006a3c:	02010113          	addi	sp,sp,32
    80006a40:	00000317          	auipc	t1,0x0
    80006a44:	3bc30067          	jr	956(t1) # 80006dfc <plic_complete>
    80006a48:	00006517          	auipc	a0,0x6
    80006a4c:	28850513          	addi	a0,a0,648 # 8000ccd0 <tickslock>
    80006a50:	00001097          	auipc	ra,0x1
    80006a54:	48c080e7          	jalr	1164(ra) # 80007edc <acquire>
    80006a58:	00005717          	auipc	a4,0x5
    80006a5c:	f3c70713          	addi	a4,a4,-196 # 8000b994 <ticks>
    80006a60:	00072783          	lw	a5,0(a4)
    80006a64:	00006517          	auipc	a0,0x6
    80006a68:	26c50513          	addi	a0,a0,620 # 8000ccd0 <tickslock>
    80006a6c:	0017879b          	addiw	a5,a5,1
    80006a70:	00f72023          	sw	a5,0(a4)
    80006a74:	00001097          	auipc	ra,0x1
    80006a78:	534080e7          	jalr	1332(ra) # 80007fa8 <release>
    80006a7c:	f65ff06f          	j	800069e0 <kerneltrap+0x8c>
    80006a80:	00001097          	auipc	ra,0x1
    80006a84:	090080e7          	jalr	144(ra) # 80007b10 <uartintr>
    80006a88:	fa5ff06f          	j	80006a2c <kerneltrap+0xd8>
    80006a8c:	00003517          	auipc	a0,0x3
    80006a90:	ddc50513          	addi	a0,a0,-548 # 80009868 <_ZTV8Consumer+0xe8>
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	718080e7          	jalr	1816(ra) # 800071ac <panic>

0000000080006a9c <clockintr>:
    80006a9c:	fe010113          	addi	sp,sp,-32
    80006aa0:	00813823          	sd	s0,16(sp)
    80006aa4:	00913423          	sd	s1,8(sp)
    80006aa8:	00113c23          	sd	ra,24(sp)
    80006aac:	02010413          	addi	s0,sp,32
    80006ab0:	00006497          	auipc	s1,0x6
    80006ab4:	22048493          	addi	s1,s1,544 # 8000ccd0 <tickslock>
    80006ab8:	00048513          	mv	a0,s1
    80006abc:	00001097          	auipc	ra,0x1
    80006ac0:	420080e7          	jalr	1056(ra) # 80007edc <acquire>
    80006ac4:	00005717          	auipc	a4,0x5
    80006ac8:	ed070713          	addi	a4,a4,-304 # 8000b994 <ticks>
    80006acc:	00072783          	lw	a5,0(a4)
    80006ad0:	01013403          	ld	s0,16(sp)
    80006ad4:	01813083          	ld	ra,24(sp)
    80006ad8:	00048513          	mv	a0,s1
    80006adc:	0017879b          	addiw	a5,a5,1
    80006ae0:	00813483          	ld	s1,8(sp)
    80006ae4:	00f72023          	sw	a5,0(a4)
    80006ae8:	02010113          	addi	sp,sp,32
    80006aec:	00001317          	auipc	t1,0x1
    80006af0:	4bc30067          	jr	1212(t1) # 80007fa8 <release>

0000000080006af4 <devintr>:
    80006af4:	142027f3          	csrr	a5,scause
    80006af8:	00000513          	li	a0,0
    80006afc:	0007c463          	bltz	a5,80006b04 <devintr+0x10>
    80006b00:	00008067          	ret
    80006b04:	fe010113          	addi	sp,sp,-32
    80006b08:	00813823          	sd	s0,16(sp)
    80006b0c:	00113c23          	sd	ra,24(sp)
    80006b10:	00913423          	sd	s1,8(sp)
    80006b14:	02010413          	addi	s0,sp,32
    80006b18:	0ff7f713          	andi	a4,a5,255
    80006b1c:	00900693          	li	a3,9
    80006b20:	04d70c63          	beq	a4,a3,80006b78 <devintr+0x84>
    80006b24:	fff00713          	li	a4,-1
    80006b28:	03f71713          	slli	a4,a4,0x3f
    80006b2c:	00170713          	addi	a4,a4,1
    80006b30:	00e78c63          	beq	a5,a4,80006b48 <devintr+0x54>
    80006b34:	01813083          	ld	ra,24(sp)
    80006b38:	01013403          	ld	s0,16(sp)
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	02010113          	addi	sp,sp,32
    80006b44:	00008067          	ret
    80006b48:	00000097          	auipc	ra,0x0
    80006b4c:	c8c080e7          	jalr	-884(ra) # 800067d4 <cpuid>
    80006b50:	06050663          	beqz	a0,80006bbc <devintr+0xc8>
    80006b54:	144027f3          	csrr	a5,sip
    80006b58:	ffd7f793          	andi	a5,a5,-3
    80006b5c:	14479073          	csrw	sip,a5
    80006b60:	01813083          	ld	ra,24(sp)
    80006b64:	01013403          	ld	s0,16(sp)
    80006b68:	00813483          	ld	s1,8(sp)
    80006b6c:	00200513          	li	a0,2
    80006b70:	02010113          	addi	sp,sp,32
    80006b74:	00008067          	ret
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	24c080e7          	jalr	588(ra) # 80006dc4 <plic_claim>
    80006b80:	00a00793          	li	a5,10
    80006b84:	00050493          	mv	s1,a0
    80006b88:	06f50663          	beq	a0,a5,80006bf4 <devintr+0x100>
    80006b8c:	00100513          	li	a0,1
    80006b90:	fa0482e3          	beqz	s1,80006b34 <devintr+0x40>
    80006b94:	00048593          	mv	a1,s1
    80006b98:	00003517          	auipc	a0,0x3
    80006b9c:	cf050513          	addi	a0,a0,-784 # 80009888 <_ZTV8Consumer+0x108>
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	668080e7          	jalr	1640(ra) # 80007208 <__printf>
    80006ba8:	00048513          	mv	a0,s1
    80006bac:	00000097          	auipc	ra,0x0
    80006bb0:	250080e7          	jalr	592(ra) # 80006dfc <plic_complete>
    80006bb4:	00100513          	li	a0,1
    80006bb8:	f7dff06f          	j	80006b34 <devintr+0x40>
    80006bbc:	00006517          	auipc	a0,0x6
    80006bc0:	11450513          	addi	a0,a0,276 # 8000ccd0 <tickslock>
    80006bc4:	00001097          	auipc	ra,0x1
    80006bc8:	318080e7          	jalr	792(ra) # 80007edc <acquire>
    80006bcc:	00005717          	auipc	a4,0x5
    80006bd0:	dc870713          	addi	a4,a4,-568 # 8000b994 <ticks>
    80006bd4:	00072783          	lw	a5,0(a4)
    80006bd8:	00006517          	auipc	a0,0x6
    80006bdc:	0f850513          	addi	a0,a0,248 # 8000ccd0 <tickslock>
    80006be0:	0017879b          	addiw	a5,a5,1
    80006be4:	00f72023          	sw	a5,0(a4)
    80006be8:	00001097          	auipc	ra,0x1
    80006bec:	3c0080e7          	jalr	960(ra) # 80007fa8 <release>
    80006bf0:	f65ff06f          	j	80006b54 <devintr+0x60>
    80006bf4:	00001097          	auipc	ra,0x1
    80006bf8:	f1c080e7          	jalr	-228(ra) # 80007b10 <uartintr>
    80006bfc:	fadff06f          	j	80006ba8 <devintr+0xb4>

0000000080006c00 <kernelvec>:
    80006c00:	f0010113          	addi	sp,sp,-256
    80006c04:	00113023          	sd	ra,0(sp)
    80006c08:	00213423          	sd	sp,8(sp)
    80006c0c:	00313823          	sd	gp,16(sp)
    80006c10:	00413c23          	sd	tp,24(sp)
    80006c14:	02513023          	sd	t0,32(sp)
    80006c18:	02613423          	sd	t1,40(sp)
    80006c1c:	02713823          	sd	t2,48(sp)
    80006c20:	02813c23          	sd	s0,56(sp)
    80006c24:	04913023          	sd	s1,64(sp)
    80006c28:	04a13423          	sd	a0,72(sp)
    80006c2c:	04b13823          	sd	a1,80(sp)
    80006c30:	04c13c23          	sd	a2,88(sp)
    80006c34:	06d13023          	sd	a3,96(sp)
    80006c38:	06e13423          	sd	a4,104(sp)
    80006c3c:	06f13823          	sd	a5,112(sp)
    80006c40:	07013c23          	sd	a6,120(sp)
    80006c44:	09113023          	sd	a7,128(sp)
    80006c48:	09213423          	sd	s2,136(sp)
    80006c4c:	09313823          	sd	s3,144(sp)
    80006c50:	09413c23          	sd	s4,152(sp)
    80006c54:	0b513023          	sd	s5,160(sp)
    80006c58:	0b613423          	sd	s6,168(sp)
    80006c5c:	0b713823          	sd	s7,176(sp)
    80006c60:	0b813c23          	sd	s8,184(sp)
    80006c64:	0d913023          	sd	s9,192(sp)
    80006c68:	0da13423          	sd	s10,200(sp)
    80006c6c:	0db13823          	sd	s11,208(sp)
    80006c70:	0dc13c23          	sd	t3,216(sp)
    80006c74:	0fd13023          	sd	t4,224(sp)
    80006c78:	0fe13423          	sd	t5,232(sp)
    80006c7c:	0ff13823          	sd	t6,240(sp)
    80006c80:	cd5ff0ef          	jal	ra,80006954 <kerneltrap>
    80006c84:	00013083          	ld	ra,0(sp)
    80006c88:	00813103          	ld	sp,8(sp)
    80006c8c:	01013183          	ld	gp,16(sp)
    80006c90:	02013283          	ld	t0,32(sp)
    80006c94:	02813303          	ld	t1,40(sp)
    80006c98:	03013383          	ld	t2,48(sp)
    80006c9c:	03813403          	ld	s0,56(sp)
    80006ca0:	04013483          	ld	s1,64(sp)
    80006ca4:	04813503          	ld	a0,72(sp)
    80006ca8:	05013583          	ld	a1,80(sp)
    80006cac:	05813603          	ld	a2,88(sp)
    80006cb0:	06013683          	ld	a3,96(sp)
    80006cb4:	06813703          	ld	a4,104(sp)
    80006cb8:	07013783          	ld	a5,112(sp)
    80006cbc:	07813803          	ld	a6,120(sp)
    80006cc0:	08013883          	ld	a7,128(sp)
    80006cc4:	08813903          	ld	s2,136(sp)
    80006cc8:	09013983          	ld	s3,144(sp)
    80006ccc:	09813a03          	ld	s4,152(sp)
    80006cd0:	0a013a83          	ld	s5,160(sp)
    80006cd4:	0a813b03          	ld	s6,168(sp)
    80006cd8:	0b013b83          	ld	s7,176(sp)
    80006cdc:	0b813c03          	ld	s8,184(sp)
    80006ce0:	0c013c83          	ld	s9,192(sp)
    80006ce4:	0c813d03          	ld	s10,200(sp)
    80006ce8:	0d013d83          	ld	s11,208(sp)
    80006cec:	0d813e03          	ld	t3,216(sp)
    80006cf0:	0e013e83          	ld	t4,224(sp)
    80006cf4:	0e813f03          	ld	t5,232(sp)
    80006cf8:	0f013f83          	ld	t6,240(sp)
    80006cfc:	10010113          	addi	sp,sp,256
    80006d00:	10200073          	sret
    80006d04:	00000013          	nop
    80006d08:	00000013          	nop
    80006d0c:	00000013          	nop

0000000080006d10 <timervec>:
    80006d10:	34051573          	csrrw	a0,mscratch,a0
    80006d14:	00b53023          	sd	a1,0(a0)
    80006d18:	00c53423          	sd	a2,8(a0)
    80006d1c:	00d53823          	sd	a3,16(a0)
    80006d20:	01853583          	ld	a1,24(a0)
    80006d24:	02053603          	ld	a2,32(a0)
    80006d28:	0005b683          	ld	a3,0(a1)
    80006d2c:	00c686b3          	add	a3,a3,a2
    80006d30:	00d5b023          	sd	a3,0(a1)
    80006d34:	00200593          	li	a1,2
    80006d38:	14459073          	csrw	sip,a1
    80006d3c:	01053683          	ld	a3,16(a0)
    80006d40:	00853603          	ld	a2,8(a0)
    80006d44:	00053583          	ld	a1,0(a0)
    80006d48:	34051573          	csrrw	a0,mscratch,a0
    80006d4c:	30200073          	mret

0000000080006d50 <plicinit>:
    80006d50:	ff010113          	addi	sp,sp,-16
    80006d54:	00813423          	sd	s0,8(sp)
    80006d58:	01010413          	addi	s0,sp,16
    80006d5c:	00813403          	ld	s0,8(sp)
    80006d60:	0c0007b7          	lui	a5,0xc000
    80006d64:	00100713          	li	a4,1
    80006d68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d6c:	00e7a223          	sw	a4,4(a5)
    80006d70:	01010113          	addi	sp,sp,16
    80006d74:	00008067          	ret

0000000080006d78 <plicinithart>:
    80006d78:	ff010113          	addi	sp,sp,-16
    80006d7c:	00813023          	sd	s0,0(sp)
    80006d80:	00113423          	sd	ra,8(sp)
    80006d84:	01010413          	addi	s0,sp,16
    80006d88:	00000097          	auipc	ra,0x0
    80006d8c:	a4c080e7          	jalr	-1460(ra) # 800067d4 <cpuid>
    80006d90:	0085171b          	slliw	a4,a0,0x8
    80006d94:	0c0027b7          	lui	a5,0xc002
    80006d98:	00e787b3          	add	a5,a5,a4
    80006d9c:	40200713          	li	a4,1026
    80006da0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006da4:	00813083          	ld	ra,8(sp)
    80006da8:	00013403          	ld	s0,0(sp)
    80006dac:	00d5151b          	slliw	a0,a0,0xd
    80006db0:	0c2017b7          	lui	a5,0xc201
    80006db4:	00a78533          	add	a0,a5,a0
    80006db8:	00052023          	sw	zero,0(a0)
    80006dbc:	01010113          	addi	sp,sp,16
    80006dc0:	00008067          	ret

0000000080006dc4 <plic_claim>:
    80006dc4:	ff010113          	addi	sp,sp,-16
    80006dc8:	00813023          	sd	s0,0(sp)
    80006dcc:	00113423          	sd	ra,8(sp)
    80006dd0:	01010413          	addi	s0,sp,16
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	a00080e7          	jalr	-1536(ra) # 800067d4 <cpuid>
    80006ddc:	00813083          	ld	ra,8(sp)
    80006de0:	00013403          	ld	s0,0(sp)
    80006de4:	00d5151b          	slliw	a0,a0,0xd
    80006de8:	0c2017b7          	lui	a5,0xc201
    80006dec:	00a78533          	add	a0,a5,a0
    80006df0:	00452503          	lw	a0,4(a0)
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00008067          	ret

0000000080006dfc <plic_complete>:
    80006dfc:	fe010113          	addi	sp,sp,-32
    80006e00:	00813823          	sd	s0,16(sp)
    80006e04:	00913423          	sd	s1,8(sp)
    80006e08:	00113c23          	sd	ra,24(sp)
    80006e0c:	02010413          	addi	s0,sp,32
    80006e10:	00050493          	mv	s1,a0
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	9c0080e7          	jalr	-1600(ra) # 800067d4 <cpuid>
    80006e1c:	01813083          	ld	ra,24(sp)
    80006e20:	01013403          	ld	s0,16(sp)
    80006e24:	00d5179b          	slliw	a5,a0,0xd
    80006e28:	0c201737          	lui	a4,0xc201
    80006e2c:	00f707b3          	add	a5,a4,a5
    80006e30:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	02010113          	addi	sp,sp,32
    80006e3c:	00008067          	ret

0000000080006e40 <consolewrite>:
    80006e40:	fb010113          	addi	sp,sp,-80
    80006e44:	04813023          	sd	s0,64(sp)
    80006e48:	04113423          	sd	ra,72(sp)
    80006e4c:	02913c23          	sd	s1,56(sp)
    80006e50:	03213823          	sd	s2,48(sp)
    80006e54:	03313423          	sd	s3,40(sp)
    80006e58:	03413023          	sd	s4,32(sp)
    80006e5c:	01513c23          	sd	s5,24(sp)
    80006e60:	05010413          	addi	s0,sp,80
    80006e64:	06c05c63          	blez	a2,80006edc <consolewrite+0x9c>
    80006e68:	00060993          	mv	s3,a2
    80006e6c:	00050a13          	mv	s4,a0
    80006e70:	00058493          	mv	s1,a1
    80006e74:	00000913          	li	s2,0
    80006e78:	fff00a93          	li	s5,-1
    80006e7c:	01c0006f          	j	80006e98 <consolewrite+0x58>
    80006e80:	fbf44503          	lbu	a0,-65(s0)
    80006e84:	0019091b          	addiw	s2,s2,1
    80006e88:	00148493          	addi	s1,s1,1
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	a9c080e7          	jalr	-1380(ra) # 80007928 <uartputc>
    80006e94:	03298063          	beq	s3,s2,80006eb4 <consolewrite+0x74>
    80006e98:	00048613          	mv	a2,s1
    80006e9c:	00100693          	li	a3,1
    80006ea0:	000a0593          	mv	a1,s4
    80006ea4:	fbf40513          	addi	a0,s0,-65
    80006ea8:	00000097          	auipc	ra,0x0
    80006eac:	9e4080e7          	jalr	-1564(ra) # 8000688c <either_copyin>
    80006eb0:	fd5518e3          	bne	a0,s5,80006e80 <consolewrite+0x40>
    80006eb4:	04813083          	ld	ra,72(sp)
    80006eb8:	04013403          	ld	s0,64(sp)
    80006ebc:	03813483          	ld	s1,56(sp)
    80006ec0:	02813983          	ld	s3,40(sp)
    80006ec4:	02013a03          	ld	s4,32(sp)
    80006ec8:	01813a83          	ld	s5,24(sp)
    80006ecc:	00090513          	mv	a0,s2
    80006ed0:	03013903          	ld	s2,48(sp)
    80006ed4:	05010113          	addi	sp,sp,80
    80006ed8:	00008067          	ret
    80006edc:	00000913          	li	s2,0
    80006ee0:	fd5ff06f          	j	80006eb4 <consolewrite+0x74>

0000000080006ee4 <consoleread>:
    80006ee4:	f9010113          	addi	sp,sp,-112
    80006ee8:	06813023          	sd	s0,96(sp)
    80006eec:	04913c23          	sd	s1,88(sp)
    80006ef0:	05213823          	sd	s2,80(sp)
    80006ef4:	05313423          	sd	s3,72(sp)
    80006ef8:	05413023          	sd	s4,64(sp)
    80006efc:	03513c23          	sd	s5,56(sp)
    80006f00:	03613823          	sd	s6,48(sp)
    80006f04:	03713423          	sd	s7,40(sp)
    80006f08:	03813023          	sd	s8,32(sp)
    80006f0c:	06113423          	sd	ra,104(sp)
    80006f10:	01913c23          	sd	s9,24(sp)
    80006f14:	07010413          	addi	s0,sp,112
    80006f18:	00060b93          	mv	s7,a2
    80006f1c:	00050913          	mv	s2,a0
    80006f20:	00058c13          	mv	s8,a1
    80006f24:	00060b1b          	sext.w	s6,a2
    80006f28:	00006497          	auipc	s1,0x6
    80006f2c:	dd048493          	addi	s1,s1,-560 # 8000ccf8 <cons>
    80006f30:	00400993          	li	s3,4
    80006f34:	fff00a13          	li	s4,-1
    80006f38:	00a00a93          	li	s5,10
    80006f3c:	05705e63          	blez	s7,80006f98 <consoleread+0xb4>
    80006f40:	09c4a703          	lw	a4,156(s1)
    80006f44:	0984a783          	lw	a5,152(s1)
    80006f48:	0007071b          	sext.w	a4,a4
    80006f4c:	08e78463          	beq	a5,a4,80006fd4 <consoleread+0xf0>
    80006f50:	07f7f713          	andi	a4,a5,127
    80006f54:	00e48733          	add	a4,s1,a4
    80006f58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f5c:	0017869b          	addiw	a3,a5,1
    80006f60:	08d4ac23          	sw	a3,152(s1)
    80006f64:	00070c9b          	sext.w	s9,a4
    80006f68:	0b370663          	beq	a4,s3,80007014 <consoleread+0x130>
    80006f6c:	00100693          	li	a3,1
    80006f70:	f9f40613          	addi	a2,s0,-97
    80006f74:	000c0593          	mv	a1,s8
    80006f78:	00090513          	mv	a0,s2
    80006f7c:	f8e40fa3          	sb	a4,-97(s0)
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	8c0080e7          	jalr	-1856(ra) # 80006840 <either_copyout>
    80006f88:	01450863          	beq	a0,s4,80006f98 <consoleread+0xb4>
    80006f8c:	001c0c13          	addi	s8,s8,1
    80006f90:	fffb8b9b          	addiw	s7,s7,-1
    80006f94:	fb5c94e3          	bne	s9,s5,80006f3c <consoleread+0x58>
    80006f98:	000b851b          	sext.w	a0,s7
    80006f9c:	06813083          	ld	ra,104(sp)
    80006fa0:	06013403          	ld	s0,96(sp)
    80006fa4:	05813483          	ld	s1,88(sp)
    80006fa8:	05013903          	ld	s2,80(sp)
    80006fac:	04813983          	ld	s3,72(sp)
    80006fb0:	04013a03          	ld	s4,64(sp)
    80006fb4:	03813a83          	ld	s5,56(sp)
    80006fb8:	02813b83          	ld	s7,40(sp)
    80006fbc:	02013c03          	ld	s8,32(sp)
    80006fc0:	01813c83          	ld	s9,24(sp)
    80006fc4:	40ab053b          	subw	a0,s6,a0
    80006fc8:	03013b03          	ld	s6,48(sp)
    80006fcc:	07010113          	addi	sp,sp,112
    80006fd0:	00008067          	ret
    80006fd4:	00001097          	auipc	ra,0x1
    80006fd8:	1d8080e7          	jalr	472(ra) # 800081ac <push_on>
    80006fdc:	0984a703          	lw	a4,152(s1)
    80006fe0:	09c4a783          	lw	a5,156(s1)
    80006fe4:	0007879b          	sext.w	a5,a5
    80006fe8:	fef70ce3          	beq	a4,a5,80006fe0 <consoleread+0xfc>
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	234080e7          	jalr	564(ra) # 80008220 <pop_on>
    80006ff4:	0984a783          	lw	a5,152(s1)
    80006ff8:	07f7f713          	andi	a4,a5,127
    80006ffc:	00e48733          	add	a4,s1,a4
    80007000:	01874703          	lbu	a4,24(a4)
    80007004:	0017869b          	addiw	a3,a5,1
    80007008:	08d4ac23          	sw	a3,152(s1)
    8000700c:	00070c9b          	sext.w	s9,a4
    80007010:	f5371ee3          	bne	a4,s3,80006f6c <consoleread+0x88>
    80007014:	000b851b          	sext.w	a0,s7
    80007018:	f96bf2e3          	bgeu	s7,s6,80006f9c <consoleread+0xb8>
    8000701c:	08f4ac23          	sw	a5,152(s1)
    80007020:	f7dff06f          	j	80006f9c <consoleread+0xb8>

0000000080007024 <consputc>:
    80007024:	10000793          	li	a5,256
    80007028:	00f50663          	beq	a0,a5,80007034 <consputc+0x10>
    8000702c:	00001317          	auipc	t1,0x1
    80007030:	9f430067          	jr	-1548(t1) # 80007a20 <uartputc_sync>
    80007034:	ff010113          	addi	sp,sp,-16
    80007038:	00113423          	sd	ra,8(sp)
    8000703c:	00813023          	sd	s0,0(sp)
    80007040:	01010413          	addi	s0,sp,16
    80007044:	00800513          	li	a0,8
    80007048:	00001097          	auipc	ra,0x1
    8000704c:	9d8080e7          	jalr	-1576(ra) # 80007a20 <uartputc_sync>
    80007050:	02000513          	li	a0,32
    80007054:	00001097          	auipc	ra,0x1
    80007058:	9cc080e7          	jalr	-1588(ra) # 80007a20 <uartputc_sync>
    8000705c:	00013403          	ld	s0,0(sp)
    80007060:	00813083          	ld	ra,8(sp)
    80007064:	00800513          	li	a0,8
    80007068:	01010113          	addi	sp,sp,16
    8000706c:	00001317          	auipc	t1,0x1
    80007070:	9b430067          	jr	-1612(t1) # 80007a20 <uartputc_sync>

0000000080007074 <consoleintr>:
    80007074:	fe010113          	addi	sp,sp,-32
    80007078:	00813823          	sd	s0,16(sp)
    8000707c:	00913423          	sd	s1,8(sp)
    80007080:	01213023          	sd	s2,0(sp)
    80007084:	00113c23          	sd	ra,24(sp)
    80007088:	02010413          	addi	s0,sp,32
    8000708c:	00006917          	auipc	s2,0x6
    80007090:	c6c90913          	addi	s2,s2,-916 # 8000ccf8 <cons>
    80007094:	00050493          	mv	s1,a0
    80007098:	00090513          	mv	a0,s2
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	e40080e7          	jalr	-448(ra) # 80007edc <acquire>
    800070a4:	02048c63          	beqz	s1,800070dc <consoleintr+0x68>
    800070a8:	0a092783          	lw	a5,160(s2)
    800070ac:	09892703          	lw	a4,152(s2)
    800070b0:	07f00693          	li	a3,127
    800070b4:	40e7873b          	subw	a4,a5,a4
    800070b8:	02e6e263          	bltu	a3,a4,800070dc <consoleintr+0x68>
    800070bc:	00d00713          	li	a4,13
    800070c0:	04e48063          	beq	s1,a4,80007100 <consoleintr+0x8c>
    800070c4:	07f7f713          	andi	a4,a5,127
    800070c8:	00e90733          	add	a4,s2,a4
    800070cc:	0017879b          	addiw	a5,a5,1
    800070d0:	0af92023          	sw	a5,160(s2)
    800070d4:	00970c23          	sb	s1,24(a4)
    800070d8:	08f92e23          	sw	a5,156(s2)
    800070dc:	01013403          	ld	s0,16(sp)
    800070e0:	01813083          	ld	ra,24(sp)
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	00013903          	ld	s2,0(sp)
    800070ec:	00006517          	auipc	a0,0x6
    800070f0:	c0c50513          	addi	a0,a0,-1012 # 8000ccf8 <cons>
    800070f4:	02010113          	addi	sp,sp,32
    800070f8:	00001317          	auipc	t1,0x1
    800070fc:	eb030067          	jr	-336(t1) # 80007fa8 <release>
    80007100:	00a00493          	li	s1,10
    80007104:	fc1ff06f          	j	800070c4 <consoleintr+0x50>

0000000080007108 <consoleinit>:
    80007108:	fe010113          	addi	sp,sp,-32
    8000710c:	00113c23          	sd	ra,24(sp)
    80007110:	00813823          	sd	s0,16(sp)
    80007114:	00913423          	sd	s1,8(sp)
    80007118:	02010413          	addi	s0,sp,32
    8000711c:	00006497          	auipc	s1,0x6
    80007120:	bdc48493          	addi	s1,s1,-1060 # 8000ccf8 <cons>
    80007124:	00048513          	mv	a0,s1
    80007128:	00002597          	auipc	a1,0x2
    8000712c:	7b858593          	addi	a1,a1,1976 # 800098e0 <_ZTV8Consumer+0x160>
    80007130:	00001097          	auipc	ra,0x1
    80007134:	d88080e7          	jalr	-632(ra) # 80007eb8 <initlock>
    80007138:	00000097          	auipc	ra,0x0
    8000713c:	7ac080e7          	jalr	1964(ra) # 800078e4 <uartinit>
    80007140:	01813083          	ld	ra,24(sp)
    80007144:	01013403          	ld	s0,16(sp)
    80007148:	00000797          	auipc	a5,0x0
    8000714c:	d9c78793          	addi	a5,a5,-612 # 80006ee4 <consoleread>
    80007150:	0af4bc23          	sd	a5,184(s1)
    80007154:	00000797          	auipc	a5,0x0
    80007158:	cec78793          	addi	a5,a5,-788 # 80006e40 <consolewrite>
    8000715c:	0cf4b023          	sd	a5,192(s1)
    80007160:	00813483          	ld	s1,8(sp)
    80007164:	02010113          	addi	sp,sp,32
    80007168:	00008067          	ret

000000008000716c <console_read>:
    8000716c:	ff010113          	addi	sp,sp,-16
    80007170:	00813423          	sd	s0,8(sp)
    80007174:	01010413          	addi	s0,sp,16
    80007178:	00813403          	ld	s0,8(sp)
    8000717c:	00006317          	auipc	t1,0x6
    80007180:	c3433303          	ld	t1,-972(t1) # 8000cdb0 <devsw+0x10>
    80007184:	01010113          	addi	sp,sp,16
    80007188:	00030067          	jr	t1

000000008000718c <console_write>:
    8000718c:	ff010113          	addi	sp,sp,-16
    80007190:	00813423          	sd	s0,8(sp)
    80007194:	01010413          	addi	s0,sp,16
    80007198:	00813403          	ld	s0,8(sp)
    8000719c:	00006317          	auipc	t1,0x6
    800071a0:	c1c33303          	ld	t1,-996(t1) # 8000cdb8 <devsw+0x18>
    800071a4:	01010113          	addi	sp,sp,16
    800071a8:	00030067          	jr	t1

00000000800071ac <panic>:
    800071ac:	fe010113          	addi	sp,sp,-32
    800071b0:	00113c23          	sd	ra,24(sp)
    800071b4:	00813823          	sd	s0,16(sp)
    800071b8:	00913423          	sd	s1,8(sp)
    800071bc:	02010413          	addi	s0,sp,32
    800071c0:	00050493          	mv	s1,a0
    800071c4:	00002517          	auipc	a0,0x2
    800071c8:	72450513          	addi	a0,a0,1828 # 800098e8 <_ZTV8Consumer+0x168>
    800071cc:	00006797          	auipc	a5,0x6
    800071d0:	c807a623          	sw	zero,-884(a5) # 8000ce58 <pr+0x18>
    800071d4:	00000097          	auipc	ra,0x0
    800071d8:	034080e7          	jalr	52(ra) # 80007208 <__printf>
    800071dc:	00048513          	mv	a0,s1
    800071e0:	00000097          	auipc	ra,0x0
    800071e4:	028080e7          	jalr	40(ra) # 80007208 <__printf>
    800071e8:	00002517          	auipc	a0,0x2
    800071ec:	3f850513          	addi	a0,a0,1016 # 800095e0 <_ZTV12ConsumerSync+0x168>
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	018080e7          	jalr	24(ra) # 80007208 <__printf>
    800071f8:	00100793          	li	a5,1
    800071fc:	00004717          	auipc	a4,0x4
    80007200:	78f72e23          	sw	a5,1948(a4) # 8000b998 <panicked>
    80007204:	0000006f          	j	80007204 <panic+0x58>

0000000080007208 <__printf>:
    80007208:	f3010113          	addi	sp,sp,-208
    8000720c:	08813023          	sd	s0,128(sp)
    80007210:	07313423          	sd	s3,104(sp)
    80007214:	09010413          	addi	s0,sp,144
    80007218:	05813023          	sd	s8,64(sp)
    8000721c:	08113423          	sd	ra,136(sp)
    80007220:	06913c23          	sd	s1,120(sp)
    80007224:	07213823          	sd	s2,112(sp)
    80007228:	07413023          	sd	s4,96(sp)
    8000722c:	05513c23          	sd	s5,88(sp)
    80007230:	05613823          	sd	s6,80(sp)
    80007234:	05713423          	sd	s7,72(sp)
    80007238:	03913c23          	sd	s9,56(sp)
    8000723c:	03a13823          	sd	s10,48(sp)
    80007240:	03b13423          	sd	s11,40(sp)
    80007244:	00006317          	auipc	t1,0x6
    80007248:	bfc30313          	addi	t1,t1,-1028 # 8000ce40 <pr>
    8000724c:	01832c03          	lw	s8,24(t1)
    80007250:	00b43423          	sd	a1,8(s0)
    80007254:	00c43823          	sd	a2,16(s0)
    80007258:	00d43c23          	sd	a3,24(s0)
    8000725c:	02e43023          	sd	a4,32(s0)
    80007260:	02f43423          	sd	a5,40(s0)
    80007264:	03043823          	sd	a6,48(s0)
    80007268:	03143c23          	sd	a7,56(s0)
    8000726c:	00050993          	mv	s3,a0
    80007270:	4a0c1663          	bnez	s8,8000771c <__printf+0x514>
    80007274:	60098c63          	beqz	s3,8000788c <__printf+0x684>
    80007278:	0009c503          	lbu	a0,0(s3)
    8000727c:	00840793          	addi	a5,s0,8
    80007280:	f6f43c23          	sd	a5,-136(s0)
    80007284:	00000493          	li	s1,0
    80007288:	22050063          	beqz	a0,800074a8 <__printf+0x2a0>
    8000728c:	00002a37          	lui	s4,0x2
    80007290:	00018ab7          	lui	s5,0x18
    80007294:	000f4b37          	lui	s6,0xf4
    80007298:	00989bb7          	lui	s7,0x989
    8000729c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800072a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800072a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800072a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800072ac:	00148c9b          	addiw	s9,s1,1
    800072b0:	02500793          	li	a5,37
    800072b4:	01998933          	add	s2,s3,s9
    800072b8:	38f51263          	bne	a0,a5,8000763c <__printf+0x434>
    800072bc:	00094783          	lbu	a5,0(s2)
    800072c0:	00078c9b          	sext.w	s9,a5
    800072c4:	1e078263          	beqz	a5,800074a8 <__printf+0x2a0>
    800072c8:	0024849b          	addiw	s1,s1,2
    800072cc:	07000713          	li	a4,112
    800072d0:	00998933          	add	s2,s3,s1
    800072d4:	38e78a63          	beq	a5,a4,80007668 <__printf+0x460>
    800072d8:	20f76863          	bltu	a4,a5,800074e8 <__printf+0x2e0>
    800072dc:	42a78863          	beq	a5,a0,8000770c <__printf+0x504>
    800072e0:	06400713          	li	a4,100
    800072e4:	40e79663          	bne	a5,a4,800076f0 <__printf+0x4e8>
    800072e8:	f7843783          	ld	a5,-136(s0)
    800072ec:	0007a603          	lw	a2,0(a5)
    800072f0:	00878793          	addi	a5,a5,8
    800072f4:	f6f43c23          	sd	a5,-136(s0)
    800072f8:	42064a63          	bltz	a2,8000772c <__printf+0x524>
    800072fc:	00a00713          	li	a4,10
    80007300:	02e677bb          	remuw	a5,a2,a4
    80007304:	00002d97          	auipc	s11,0x2
    80007308:	60cd8d93          	addi	s11,s11,1548 # 80009910 <digits>
    8000730c:	00900593          	li	a1,9
    80007310:	0006051b          	sext.w	a0,a2
    80007314:	00000c93          	li	s9,0
    80007318:	02079793          	slli	a5,a5,0x20
    8000731c:	0207d793          	srli	a5,a5,0x20
    80007320:	00fd87b3          	add	a5,s11,a5
    80007324:	0007c783          	lbu	a5,0(a5)
    80007328:	02e656bb          	divuw	a3,a2,a4
    8000732c:	f8f40023          	sb	a5,-128(s0)
    80007330:	14c5d863          	bge	a1,a2,80007480 <__printf+0x278>
    80007334:	06300593          	li	a1,99
    80007338:	00100c93          	li	s9,1
    8000733c:	02e6f7bb          	remuw	a5,a3,a4
    80007340:	02079793          	slli	a5,a5,0x20
    80007344:	0207d793          	srli	a5,a5,0x20
    80007348:	00fd87b3          	add	a5,s11,a5
    8000734c:	0007c783          	lbu	a5,0(a5)
    80007350:	02e6d73b          	divuw	a4,a3,a4
    80007354:	f8f400a3          	sb	a5,-127(s0)
    80007358:	12a5f463          	bgeu	a1,a0,80007480 <__printf+0x278>
    8000735c:	00a00693          	li	a3,10
    80007360:	00900593          	li	a1,9
    80007364:	02d777bb          	remuw	a5,a4,a3
    80007368:	02079793          	slli	a5,a5,0x20
    8000736c:	0207d793          	srli	a5,a5,0x20
    80007370:	00fd87b3          	add	a5,s11,a5
    80007374:	0007c503          	lbu	a0,0(a5)
    80007378:	02d757bb          	divuw	a5,a4,a3
    8000737c:	f8a40123          	sb	a0,-126(s0)
    80007380:	48e5f263          	bgeu	a1,a4,80007804 <__printf+0x5fc>
    80007384:	06300513          	li	a0,99
    80007388:	02d7f5bb          	remuw	a1,a5,a3
    8000738c:	02059593          	slli	a1,a1,0x20
    80007390:	0205d593          	srli	a1,a1,0x20
    80007394:	00bd85b3          	add	a1,s11,a1
    80007398:	0005c583          	lbu	a1,0(a1)
    8000739c:	02d7d7bb          	divuw	a5,a5,a3
    800073a0:	f8b401a3          	sb	a1,-125(s0)
    800073a4:	48e57263          	bgeu	a0,a4,80007828 <__printf+0x620>
    800073a8:	3e700513          	li	a0,999
    800073ac:	02d7f5bb          	remuw	a1,a5,a3
    800073b0:	02059593          	slli	a1,a1,0x20
    800073b4:	0205d593          	srli	a1,a1,0x20
    800073b8:	00bd85b3          	add	a1,s11,a1
    800073bc:	0005c583          	lbu	a1,0(a1)
    800073c0:	02d7d7bb          	divuw	a5,a5,a3
    800073c4:	f8b40223          	sb	a1,-124(s0)
    800073c8:	46e57663          	bgeu	a0,a4,80007834 <__printf+0x62c>
    800073cc:	02d7f5bb          	remuw	a1,a5,a3
    800073d0:	02059593          	slli	a1,a1,0x20
    800073d4:	0205d593          	srli	a1,a1,0x20
    800073d8:	00bd85b3          	add	a1,s11,a1
    800073dc:	0005c583          	lbu	a1,0(a1)
    800073e0:	02d7d7bb          	divuw	a5,a5,a3
    800073e4:	f8b402a3          	sb	a1,-123(s0)
    800073e8:	46ea7863          	bgeu	s4,a4,80007858 <__printf+0x650>
    800073ec:	02d7f5bb          	remuw	a1,a5,a3
    800073f0:	02059593          	slli	a1,a1,0x20
    800073f4:	0205d593          	srli	a1,a1,0x20
    800073f8:	00bd85b3          	add	a1,s11,a1
    800073fc:	0005c583          	lbu	a1,0(a1)
    80007400:	02d7d7bb          	divuw	a5,a5,a3
    80007404:	f8b40323          	sb	a1,-122(s0)
    80007408:	3eeaf863          	bgeu	s5,a4,800077f8 <__printf+0x5f0>
    8000740c:	02d7f5bb          	remuw	a1,a5,a3
    80007410:	02059593          	slli	a1,a1,0x20
    80007414:	0205d593          	srli	a1,a1,0x20
    80007418:	00bd85b3          	add	a1,s11,a1
    8000741c:	0005c583          	lbu	a1,0(a1)
    80007420:	02d7d7bb          	divuw	a5,a5,a3
    80007424:	f8b403a3          	sb	a1,-121(s0)
    80007428:	42eb7e63          	bgeu	s6,a4,80007864 <__printf+0x65c>
    8000742c:	02d7f5bb          	remuw	a1,a5,a3
    80007430:	02059593          	slli	a1,a1,0x20
    80007434:	0205d593          	srli	a1,a1,0x20
    80007438:	00bd85b3          	add	a1,s11,a1
    8000743c:	0005c583          	lbu	a1,0(a1)
    80007440:	02d7d7bb          	divuw	a5,a5,a3
    80007444:	f8b40423          	sb	a1,-120(s0)
    80007448:	42ebfc63          	bgeu	s7,a4,80007880 <__printf+0x678>
    8000744c:	02079793          	slli	a5,a5,0x20
    80007450:	0207d793          	srli	a5,a5,0x20
    80007454:	00fd8db3          	add	s11,s11,a5
    80007458:	000dc703          	lbu	a4,0(s11)
    8000745c:	00a00793          	li	a5,10
    80007460:	00900c93          	li	s9,9
    80007464:	f8e404a3          	sb	a4,-119(s0)
    80007468:	00065c63          	bgez	a2,80007480 <__printf+0x278>
    8000746c:	f9040713          	addi	a4,s0,-112
    80007470:	00f70733          	add	a4,a4,a5
    80007474:	02d00693          	li	a3,45
    80007478:	fed70823          	sb	a3,-16(a4)
    8000747c:	00078c93          	mv	s9,a5
    80007480:	f8040793          	addi	a5,s0,-128
    80007484:	01978cb3          	add	s9,a5,s9
    80007488:	f7f40d13          	addi	s10,s0,-129
    8000748c:	000cc503          	lbu	a0,0(s9)
    80007490:	fffc8c93          	addi	s9,s9,-1
    80007494:	00000097          	auipc	ra,0x0
    80007498:	b90080e7          	jalr	-1136(ra) # 80007024 <consputc>
    8000749c:	ffac98e3          	bne	s9,s10,8000748c <__printf+0x284>
    800074a0:	00094503          	lbu	a0,0(s2)
    800074a4:	e00514e3          	bnez	a0,800072ac <__printf+0xa4>
    800074a8:	1a0c1663          	bnez	s8,80007654 <__printf+0x44c>
    800074ac:	08813083          	ld	ra,136(sp)
    800074b0:	08013403          	ld	s0,128(sp)
    800074b4:	07813483          	ld	s1,120(sp)
    800074b8:	07013903          	ld	s2,112(sp)
    800074bc:	06813983          	ld	s3,104(sp)
    800074c0:	06013a03          	ld	s4,96(sp)
    800074c4:	05813a83          	ld	s5,88(sp)
    800074c8:	05013b03          	ld	s6,80(sp)
    800074cc:	04813b83          	ld	s7,72(sp)
    800074d0:	04013c03          	ld	s8,64(sp)
    800074d4:	03813c83          	ld	s9,56(sp)
    800074d8:	03013d03          	ld	s10,48(sp)
    800074dc:	02813d83          	ld	s11,40(sp)
    800074e0:	0d010113          	addi	sp,sp,208
    800074e4:	00008067          	ret
    800074e8:	07300713          	li	a4,115
    800074ec:	1ce78a63          	beq	a5,a4,800076c0 <__printf+0x4b8>
    800074f0:	07800713          	li	a4,120
    800074f4:	1ee79e63          	bne	a5,a4,800076f0 <__printf+0x4e8>
    800074f8:	f7843783          	ld	a5,-136(s0)
    800074fc:	0007a703          	lw	a4,0(a5)
    80007500:	00878793          	addi	a5,a5,8
    80007504:	f6f43c23          	sd	a5,-136(s0)
    80007508:	28074263          	bltz	a4,8000778c <__printf+0x584>
    8000750c:	00002d97          	auipc	s11,0x2
    80007510:	404d8d93          	addi	s11,s11,1028 # 80009910 <digits>
    80007514:	00f77793          	andi	a5,a4,15
    80007518:	00fd87b3          	add	a5,s11,a5
    8000751c:	0007c683          	lbu	a3,0(a5)
    80007520:	00f00613          	li	a2,15
    80007524:	0007079b          	sext.w	a5,a4
    80007528:	f8d40023          	sb	a3,-128(s0)
    8000752c:	0047559b          	srliw	a1,a4,0x4
    80007530:	0047569b          	srliw	a3,a4,0x4
    80007534:	00000c93          	li	s9,0
    80007538:	0ee65063          	bge	a2,a4,80007618 <__printf+0x410>
    8000753c:	00f6f693          	andi	a3,a3,15
    80007540:	00dd86b3          	add	a3,s11,a3
    80007544:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007548:	0087d79b          	srliw	a5,a5,0x8
    8000754c:	00100c93          	li	s9,1
    80007550:	f8d400a3          	sb	a3,-127(s0)
    80007554:	0cb67263          	bgeu	a2,a1,80007618 <__printf+0x410>
    80007558:	00f7f693          	andi	a3,a5,15
    8000755c:	00dd86b3          	add	a3,s11,a3
    80007560:	0006c583          	lbu	a1,0(a3)
    80007564:	00f00613          	li	a2,15
    80007568:	0047d69b          	srliw	a3,a5,0x4
    8000756c:	f8b40123          	sb	a1,-126(s0)
    80007570:	0047d593          	srli	a1,a5,0x4
    80007574:	28f67e63          	bgeu	a2,a5,80007810 <__printf+0x608>
    80007578:	00f6f693          	andi	a3,a3,15
    8000757c:	00dd86b3          	add	a3,s11,a3
    80007580:	0006c503          	lbu	a0,0(a3)
    80007584:	0087d813          	srli	a6,a5,0x8
    80007588:	0087d69b          	srliw	a3,a5,0x8
    8000758c:	f8a401a3          	sb	a0,-125(s0)
    80007590:	28b67663          	bgeu	a2,a1,8000781c <__printf+0x614>
    80007594:	00f6f693          	andi	a3,a3,15
    80007598:	00dd86b3          	add	a3,s11,a3
    8000759c:	0006c583          	lbu	a1,0(a3)
    800075a0:	00c7d513          	srli	a0,a5,0xc
    800075a4:	00c7d69b          	srliw	a3,a5,0xc
    800075a8:	f8b40223          	sb	a1,-124(s0)
    800075ac:	29067a63          	bgeu	a2,a6,80007840 <__printf+0x638>
    800075b0:	00f6f693          	andi	a3,a3,15
    800075b4:	00dd86b3          	add	a3,s11,a3
    800075b8:	0006c583          	lbu	a1,0(a3)
    800075bc:	0107d813          	srli	a6,a5,0x10
    800075c0:	0107d69b          	srliw	a3,a5,0x10
    800075c4:	f8b402a3          	sb	a1,-123(s0)
    800075c8:	28a67263          	bgeu	a2,a0,8000784c <__printf+0x644>
    800075cc:	00f6f693          	andi	a3,a3,15
    800075d0:	00dd86b3          	add	a3,s11,a3
    800075d4:	0006c683          	lbu	a3,0(a3)
    800075d8:	0147d79b          	srliw	a5,a5,0x14
    800075dc:	f8d40323          	sb	a3,-122(s0)
    800075e0:	21067663          	bgeu	a2,a6,800077ec <__printf+0x5e4>
    800075e4:	02079793          	slli	a5,a5,0x20
    800075e8:	0207d793          	srli	a5,a5,0x20
    800075ec:	00fd8db3          	add	s11,s11,a5
    800075f0:	000dc683          	lbu	a3,0(s11)
    800075f4:	00800793          	li	a5,8
    800075f8:	00700c93          	li	s9,7
    800075fc:	f8d403a3          	sb	a3,-121(s0)
    80007600:	00075c63          	bgez	a4,80007618 <__printf+0x410>
    80007604:	f9040713          	addi	a4,s0,-112
    80007608:	00f70733          	add	a4,a4,a5
    8000760c:	02d00693          	li	a3,45
    80007610:	fed70823          	sb	a3,-16(a4)
    80007614:	00078c93          	mv	s9,a5
    80007618:	f8040793          	addi	a5,s0,-128
    8000761c:	01978cb3          	add	s9,a5,s9
    80007620:	f7f40d13          	addi	s10,s0,-129
    80007624:	000cc503          	lbu	a0,0(s9)
    80007628:	fffc8c93          	addi	s9,s9,-1
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	9f8080e7          	jalr	-1544(ra) # 80007024 <consputc>
    80007634:	ff9d18e3          	bne	s10,s9,80007624 <__printf+0x41c>
    80007638:	0100006f          	j	80007648 <__printf+0x440>
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	9e8080e7          	jalr	-1560(ra) # 80007024 <consputc>
    80007644:	000c8493          	mv	s1,s9
    80007648:	00094503          	lbu	a0,0(s2)
    8000764c:	c60510e3          	bnez	a0,800072ac <__printf+0xa4>
    80007650:	e40c0ee3          	beqz	s8,800074ac <__printf+0x2a4>
    80007654:	00005517          	auipc	a0,0x5
    80007658:	7ec50513          	addi	a0,a0,2028 # 8000ce40 <pr>
    8000765c:	00001097          	auipc	ra,0x1
    80007660:	94c080e7          	jalr	-1716(ra) # 80007fa8 <release>
    80007664:	e49ff06f          	j	800074ac <__printf+0x2a4>
    80007668:	f7843783          	ld	a5,-136(s0)
    8000766c:	03000513          	li	a0,48
    80007670:	01000d13          	li	s10,16
    80007674:	00878713          	addi	a4,a5,8
    80007678:	0007bc83          	ld	s9,0(a5)
    8000767c:	f6e43c23          	sd	a4,-136(s0)
    80007680:	00000097          	auipc	ra,0x0
    80007684:	9a4080e7          	jalr	-1628(ra) # 80007024 <consputc>
    80007688:	07800513          	li	a0,120
    8000768c:	00000097          	auipc	ra,0x0
    80007690:	998080e7          	jalr	-1640(ra) # 80007024 <consputc>
    80007694:	00002d97          	auipc	s11,0x2
    80007698:	27cd8d93          	addi	s11,s11,636 # 80009910 <digits>
    8000769c:	03ccd793          	srli	a5,s9,0x3c
    800076a0:	00fd87b3          	add	a5,s11,a5
    800076a4:	0007c503          	lbu	a0,0(a5)
    800076a8:	fffd0d1b          	addiw	s10,s10,-1
    800076ac:	004c9c93          	slli	s9,s9,0x4
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	974080e7          	jalr	-1676(ra) # 80007024 <consputc>
    800076b8:	fe0d12e3          	bnez	s10,8000769c <__printf+0x494>
    800076bc:	f8dff06f          	j	80007648 <__printf+0x440>
    800076c0:	f7843783          	ld	a5,-136(s0)
    800076c4:	0007bc83          	ld	s9,0(a5)
    800076c8:	00878793          	addi	a5,a5,8
    800076cc:	f6f43c23          	sd	a5,-136(s0)
    800076d0:	000c9a63          	bnez	s9,800076e4 <__printf+0x4dc>
    800076d4:	1080006f          	j	800077dc <__printf+0x5d4>
    800076d8:	001c8c93          	addi	s9,s9,1
    800076dc:	00000097          	auipc	ra,0x0
    800076e0:	948080e7          	jalr	-1720(ra) # 80007024 <consputc>
    800076e4:	000cc503          	lbu	a0,0(s9)
    800076e8:	fe0518e3          	bnez	a0,800076d8 <__printf+0x4d0>
    800076ec:	f5dff06f          	j	80007648 <__printf+0x440>
    800076f0:	02500513          	li	a0,37
    800076f4:	00000097          	auipc	ra,0x0
    800076f8:	930080e7          	jalr	-1744(ra) # 80007024 <consputc>
    800076fc:	000c8513          	mv	a0,s9
    80007700:	00000097          	auipc	ra,0x0
    80007704:	924080e7          	jalr	-1756(ra) # 80007024 <consputc>
    80007708:	f41ff06f          	j	80007648 <__printf+0x440>
    8000770c:	02500513          	li	a0,37
    80007710:	00000097          	auipc	ra,0x0
    80007714:	914080e7          	jalr	-1772(ra) # 80007024 <consputc>
    80007718:	f31ff06f          	j	80007648 <__printf+0x440>
    8000771c:	00030513          	mv	a0,t1
    80007720:	00000097          	auipc	ra,0x0
    80007724:	7bc080e7          	jalr	1980(ra) # 80007edc <acquire>
    80007728:	b4dff06f          	j	80007274 <__printf+0x6c>
    8000772c:	40c0053b          	negw	a0,a2
    80007730:	00a00713          	li	a4,10
    80007734:	02e576bb          	remuw	a3,a0,a4
    80007738:	00002d97          	auipc	s11,0x2
    8000773c:	1d8d8d93          	addi	s11,s11,472 # 80009910 <digits>
    80007740:	ff700593          	li	a1,-9
    80007744:	02069693          	slli	a3,a3,0x20
    80007748:	0206d693          	srli	a3,a3,0x20
    8000774c:	00dd86b3          	add	a3,s11,a3
    80007750:	0006c683          	lbu	a3,0(a3)
    80007754:	02e557bb          	divuw	a5,a0,a4
    80007758:	f8d40023          	sb	a3,-128(s0)
    8000775c:	10b65e63          	bge	a2,a1,80007878 <__printf+0x670>
    80007760:	06300593          	li	a1,99
    80007764:	02e7f6bb          	remuw	a3,a5,a4
    80007768:	02069693          	slli	a3,a3,0x20
    8000776c:	0206d693          	srli	a3,a3,0x20
    80007770:	00dd86b3          	add	a3,s11,a3
    80007774:	0006c683          	lbu	a3,0(a3)
    80007778:	02e7d73b          	divuw	a4,a5,a4
    8000777c:	00200793          	li	a5,2
    80007780:	f8d400a3          	sb	a3,-127(s0)
    80007784:	bca5ece3          	bltu	a1,a0,8000735c <__printf+0x154>
    80007788:	ce5ff06f          	j	8000746c <__printf+0x264>
    8000778c:	40e007bb          	negw	a5,a4
    80007790:	00002d97          	auipc	s11,0x2
    80007794:	180d8d93          	addi	s11,s11,384 # 80009910 <digits>
    80007798:	00f7f693          	andi	a3,a5,15
    8000779c:	00dd86b3          	add	a3,s11,a3
    800077a0:	0006c583          	lbu	a1,0(a3)
    800077a4:	ff100613          	li	a2,-15
    800077a8:	0047d69b          	srliw	a3,a5,0x4
    800077ac:	f8b40023          	sb	a1,-128(s0)
    800077b0:	0047d59b          	srliw	a1,a5,0x4
    800077b4:	0ac75e63          	bge	a4,a2,80007870 <__printf+0x668>
    800077b8:	00f6f693          	andi	a3,a3,15
    800077bc:	00dd86b3          	add	a3,s11,a3
    800077c0:	0006c603          	lbu	a2,0(a3)
    800077c4:	00f00693          	li	a3,15
    800077c8:	0087d79b          	srliw	a5,a5,0x8
    800077cc:	f8c400a3          	sb	a2,-127(s0)
    800077d0:	d8b6e4e3          	bltu	a3,a1,80007558 <__printf+0x350>
    800077d4:	00200793          	li	a5,2
    800077d8:	e2dff06f          	j	80007604 <__printf+0x3fc>
    800077dc:	00002c97          	auipc	s9,0x2
    800077e0:	114c8c93          	addi	s9,s9,276 # 800098f0 <_ZTV8Consumer+0x170>
    800077e4:	02800513          	li	a0,40
    800077e8:	ef1ff06f          	j	800076d8 <__printf+0x4d0>
    800077ec:	00700793          	li	a5,7
    800077f0:	00600c93          	li	s9,6
    800077f4:	e0dff06f          	j	80007600 <__printf+0x3f8>
    800077f8:	00700793          	li	a5,7
    800077fc:	00600c93          	li	s9,6
    80007800:	c69ff06f          	j	80007468 <__printf+0x260>
    80007804:	00300793          	li	a5,3
    80007808:	00200c93          	li	s9,2
    8000780c:	c5dff06f          	j	80007468 <__printf+0x260>
    80007810:	00300793          	li	a5,3
    80007814:	00200c93          	li	s9,2
    80007818:	de9ff06f          	j	80007600 <__printf+0x3f8>
    8000781c:	00400793          	li	a5,4
    80007820:	00300c93          	li	s9,3
    80007824:	dddff06f          	j	80007600 <__printf+0x3f8>
    80007828:	00400793          	li	a5,4
    8000782c:	00300c93          	li	s9,3
    80007830:	c39ff06f          	j	80007468 <__printf+0x260>
    80007834:	00500793          	li	a5,5
    80007838:	00400c93          	li	s9,4
    8000783c:	c2dff06f          	j	80007468 <__printf+0x260>
    80007840:	00500793          	li	a5,5
    80007844:	00400c93          	li	s9,4
    80007848:	db9ff06f          	j	80007600 <__printf+0x3f8>
    8000784c:	00600793          	li	a5,6
    80007850:	00500c93          	li	s9,5
    80007854:	dadff06f          	j	80007600 <__printf+0x3f8>
    80007858:	00600793          	li	a5,6
    8000785c:	00500c93          	li	s9,5
    80007860:	c09ff06f          	j	80007468 <__printf+0x260>
    80007864:	00800793          	li	a5,8
    80007868:	00700c93          	li	s9,7
    8000786c:	bfdff06f          	j	80007468 <__printf+0x260>
    80007870:	00100793          	li	a5,1
    80007874:	d91ff06f          	j	80007604 <__printf+0x3fc>
    80007878:	00100793          	li	a5,1
    8000787c:	bf1ff06f          	j	8000746c <__printf+0x264>
    80007880:	00900793          	li	a5,9
    80007884:	00800c93          	li	s9,8
    80007888:	be1ff06f          	j	80007468 <__printf+0x260>
    8000788c:	00002517          	auipc	a0,0x2
    80007890:	06c50513          	addi	a0,a0,108 # 800098f8 <_ZTV8Consumer+0x178>
    80007894:	00000097          	auipc	ra,0x0
    80007898:	918080e7          	jalr	-1768(ra) # 800071ac <panic>

000000008000789c <printfinit>:
    8000789c:	fe010113          	addi	sp,sp,-32
    800078a0:	00813823          	sd	s0,16(sp)
    800078a4:	00913423          	sd	s1,8(sp)
    800078a8:	00113c23          	sd	ra,24(sp)
    800078ac:	02010413          	addi	s0,sp,32
    800078b0:	00005497          	auipc	s1,0x5
    800078b4:	59048493          	addi	s1,s1,1424 # 8000ce40 <pr>
    800078b8:	00048513          	mv	a0,s1
    800078bc:	00002597          	auipc	a1,0x2
    800078c0:	04c58593          	addi	a1,a1,76 # 80009908 <_ZTV8Consumer+0x188>
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	5f4080e7          	jalr	1524(ra) # 80007eb8 <initlock>
    800078cc:	01813083          	ld	ra,24(sp)
    800078d0:	01013403          	ld	s0,16(sp)
    800078d4:	0004ac23          	sw	zero,24(s1)
    800078d8:	00813483          	ld	s1,8(sp)
    800078dc:	02010113          	addi	sp,sp,32
    800078e0:	00008067          	ret

00000000800078e4 <uartinit>:
    800078e4:	ff010113          	addi	sp,sp,-16
    800078e8:	00813423          	sd	s0,8(sp)
    800078ec:	01010413          	addi	s0,sp,16
    800078f0:	100007b7          	lui	a5,0x10000
    800078f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800078f8:	f8000713          	li	a4,-128
    800078fc:	00e781a3          	sb	a4,3(a5)
    80007900:	00300713          	li	a4,3
    80007904:	00e78023          	sb	a4,0(a5)
    80007908:	000780a3          	sb	zero,1(a5)
    8000790c:	00e781a3          	sb	a4,3(a5)
    80007910:	00700693          	li	a3,7
    80007914:	00d78123          	sb	a3,2(a5)
    80007918:	00e780a3          	sb	a4,1(a5)
    8000791c:	00813403          	ld	s0,8(sp)
    80007920:	01010113          	addi	sp,sp,16
    80007924:	00008067          	ret

0000000080007928 <uartputc>:
    80007928:	00004797          	auipc	a5,0x4
    8000792c:	0707a783          	lw	a5,112(a5) # 8000b998 <panicked>
    80007930:	00078463          	beqz	a5,80007938 <uartputc+0x10>
    80007934:	0000006f          	j	80007934 <uartputc+0xc>
    80007938:	fd010113          	addi	sp,sp,-48
    8000793c:	02813023          	sd	s0,32(sp)
    80007940:	00913c23          	sd	s1,24(sp)
    80007944:	01213823          	sd	s2,16(sp)
    80007948:	01313423          	sd	s3,8(sp)
    8000794c:	02113423          	sd	ra,40(sp)
    80007950:	03010413          	addi	s0,sp,48
    80007954:	00004917          	auipc	s2,0x4
    80007958:	04c90913          	addi	s2,s2,76 # 8000b9a0 <uart_tx_r>
    8000795c:	00093783          	ld	a5,0(s2)
    80007960:	00004497          	auipc	s1,0x4
    80007964:	04848493          	addi	s1,s1,72 # 8000b9a8 <uart_tx_w>
    80007968:	0004b703          	ld	a4,0(s1)
    8000796c:	02078693          	addi	a3,a5,32
    80007970:	00050993          	mv	s3,a0
    80007974:	02e69c63          	bne	a3,a4,800079ac <uartputc+0x84>
    80007978:	00001097          	auipc	ra,0x1
    8000797c:	834080e7          	jalr	-1996(ra) # 800081ac <push_on>
    80007980:	00093783          	ld	a5,0(s2)
    80007984:	0004b703          	ld	a4,0(s1)
    80007988:	02078793          	addi	a5,a5,32
    8000798c:	00e79463          	bne	a5,a4,80007994 <uartputc+0x6c>
    80007990:	0000006f          	j	80007990 <uartputc+0x68>
    80007994:	00001097          	auipc	ra,0x1
    80007998:	88c080e7          	jalr	-1908(ra) # 80008220 <pop_on>
    8000799c:	00093783          	ld	a5,0(s2)
    800079a0:	0004b703          	ld	a4,0(s1)
    800079a4:	02078693          	addi	a3,a5,32
    800079a8:	fce688e3          	beq	a3,a4,80007978 <uartputc+0x50>
    800079ac:	01f77693          	andi	a3,a4,31
    800079b0:	00005597          	auipc	a1,0x5
    800079b4:	4b058593          	addi	a1,a1,1200 # 8000ce60 <uart_tx_buf>
    800079b8:	00d586b3          	add	a3,a1,a3
    800079bc:	00170713          	addi	a4,a4,1
    800079c0:	01368023          	sb	s3,0(a3)
    800079c4:	00e4b023          	sd	a4,0(s1)
    800079c8:	10000637          	lui	a2,0x10000
    800079cc:	02f71063          	bne	a4,a5,800079ec <uartputc+0xc4>
    800079d0:	0340006f          	j	80007a04 <uartputc+0xdc>
    800079d4:	00074703          	lbu	a4,0(a4)
    800079d8:	00f93023          	sd	a5,0(s2)
    800079dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800079e0:	00093783          	ld	a5,0(s2)
    800079e4:	0004b703          	ld	a4,0(s1)
    800079e8:	00f70e63          	beq	a4,a5,80007a04 <uartputc+0xdc>
    800079ec:	00564683          	lbu	a3,5(a2)
    800079f0:	01f7f713          	andi	a4,a5,31
    800079f4:	00e58733          	add	a4,a1,a4
    800079f8:	0206f693          	andi	a3,a3,32
    800079fc:	00178793          	addi	a5,a5,1
    80007a00:	fc069ae3          	bnez	a3,800079d4 <uartputc+0xac>
    80007a04:	02813083          	ld	ra,40(sp)
    80007a08:	02013403          	ld	s0,32(sp)
    80007a0c:	01813483          	ld	s1,24(sp)
    80007a10:	01013903          	ld	s2,16(sp)
    80007a14:	00813983          	ld	s3,8(sp)
    80007a18:	03010113          	addi	sp,sp,48
    80007a1c:	00008067          	ret

0000000080007a20 <uartputc_sync>:
    80007a20:	ff010113          	addi	sp,sp,-16
    80007a24:	00813423          	sd	s0,8(sp)
    80007a28:	01010413          	addi	s0,sp,16
    80007a2c:	00004717          	auipc	a4,0x4
    80007a30:	f6c72703          	lw	a4,-148(a4) # 8000b998 <panicked>
    80007a34:	02071663          	bnez	a4,80007a60 <uartputc_sync+0x40>
    80007a38:	00050793          	mv	a5,a0
    80007a3c:	100006b7          	lui	a3,0x10000
    80007a40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a44:	02077713          	andi	a4,a4,32
    80007a48:	fe070ce3          	beqz	a4,80007a40 <uartputc_sync+0x20>
    80007a4c:	0ff7f793          	andi	a5,a5,255
    80007a50:	00f68023          	sb	a5,0(a3)
    80007a54:	00813403          	ld	s0,8(sp)
    80007a58:	01010113          	addi	sp,sp,16
    80007a5c:	00008067          	ret
    80007a60:	0000006f          	j	80007a60 <uartputc_sync+0x40>

0000000080007a64 <uartstart>:
    80007a64:	ff010113          	addi	sp,sp,-16
    80007a68:	00813423          	sd	s0,8(sp)
    80007a6c:	01010413          	addi	s0,sp,16
    80007a70:	00004617          	auipc	a2,0x4
    80007a74:	f3060613          	addi	a2,a2,-208 # 8000b9a0 <uart_tx_r>
    80007a78:	00004517          	auipc	a0,0x4
    80007a7c:	f3050513          	addi	a0,a0,-208 # 8000b9a8 <uart_tx_w>
    80007a80:	00063783          	ld	a5,0(a2)
    80007a84:	00053703          	ld	a4,0(a0)
    80007a88:	04f70263          	beq	a4,a5,80007acc <uartstart+0x68>
    80007a8c:	100005b7          	lui	a1,0x10000
    80007a90:	00005817          	auipc	a6,0x5
    80007a94:	3d080813          	addi	a6,a6,976 # 8000ce60 <uart_tx_buf>
    80007a98:	01c0006f          	j	80007ab4 <uartstart+0x50>
    80007a9c:	0006c703          	lbu	a4,0(a3)
    80007aa0:	00f63023          	sd	a5,0(a2)
    80007aa4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007aa8:	00063783          	ld	a5,0(a2)
    80007aac:	00053703          	ld	a4,0(a0)
    80007ab0:	00f70e63          	beq	a4,a5,80007acc <uartstart+0x68>
    80007ab4:	01f7f713          	andi	a4,a5,31
    80007ab8:	00e806b3          	add	a3,a6,a4
    80007abc:	0055c703          	lbu	a4,5(a1)
    80007ac0:	00178793          	addi	a5,a5,1
    80007ac4:	02077713          	andi	a4,a4,32
    80007ac8:	fc071ae3          	bnez	a4,80007a9c <uartstart+0x38>
    80007acc:	00813403          	ld	s0,8(sp)
    80007ad0:	01010113          	addi	sp,sp,16
    80007ad4:	00008067          	ret

0000000080007ad8 <uartgetc>:
    80007ad8:	ff010113          	addi	sp,sp,-16
    80007adc:	00813423          	sd	s0,8(sp)
    80007ae0:	01010413          	addi	s0,sp,16
    80007ae4:	10000737          	lui	a4,0x10000
    80007ae8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007aec:	0017f793          	andi	a5,a5,1
    80007af0:	00078c63          	beqz	a5,80007b08 <uartgetc+0x30>
    80007af4:	00074503          	lbu	a0,0(a4)
    80007af8:	0ff57513          	andi	a0,a0,255
    80007afc:	00813403          	ld	s0,8(sp)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret
    80007b08:	fff00513          	li	a0,-1
    80007b0c:	ff1ff06f          	j	80007afc <uartgetc+0x24>

0000000080007b10 <uartintr>:
    80007b10:	100007b7          	lui	a5,0x10000
    80007b14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b18:	0017f793          	andi	a5,a5,1
    80007b1c:	0a078463          	beqz	a5,80007bc4 <uartintr+0xb4>
    80007b20:	fe010113          	addi	sp,sp,-32
    80007b24:	00813823          	sd	s0,16(sp)
    80007b28:	00913423          	sd	s1,8(sp)
    80007b2c:	00113c23          	sd	ra,24(sp)
    80007b30:	02010413          	addi	s0,sp,32
    80007b34:	100004b7          	lui	s1,0x10000
    80007b38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b3c:	0ff57513          	andi	a0,a0,255
    80007b40:	fffff097          	auipc	ra,0xfffff
    80007b44:	534080e7          	jalr	1332(ra) # 80007074 <consoleintr>
    80007b48:	0054c783          	lbu	a5,5(s1)
    80007b4c:	0017f793          	andi	a5,a5,1
    80007b50:	fe0794e3          	bnez	a5,80007b38 <uartintr+0x28>
    80007b54:	00004617          	auipc	a2,0x4
    80007b58:	e4c60613          	addi	a2,a2,-436 # 8000b9a0 <uart_tx_r>
    80007b5c:	00004517          	auipc	a0,0x4
    80007b60:	e4c50513          	addi	a0,a0,-436 # 8000b9a8 <uart_tx_w>
    80007b64:	00063783          	ld	a5,0(a2)
    80007b68:	00053703          	ld	a4,0(a0)
    80007b6c:	04f70263          	beq	a4,a5,80007bb0 <uartintr+0xa0>
    80007b70:	100005b7          	lui	a1,0x10000
    80007b74:	00005817          	auipc	a6,0x5
    80007b78:	2ec80813          	addi	a6,a6,748 # 8000ce60 <uart_tx_buf>
    80007b7c:	01c0006f          	j	80007b98 <uartintr+0x88>
    80007b80:	0006c703          	lbu	a4,0(a3)
    80007b84:	00f63023          	sd	a5,0(a2)
    80007b88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b8c:	00063783          	ld	a5,0(a2)
    80007b90:	00053703          	ld	a4,0(a0)
    80007b94:	00f70e63          	beq	a4,a5,80007bb0 <uartintr+0xa0>
    80007b98:	01f7f713          	andi	a4,a5,31
    80007b9c:	00e806b3          	add	a3,a6,a4
    80007ba0:	0055c703          	lbu	a4,5(a1)
    80007ba4:	00178793          	addi	a5,a5,1
    80007ba8:	02077713          	andi	a4,a4,32
    80007bac:	fc071ae3          	bnez	a4,80007b80 <uartintr+0x70>
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	01013403          	ld	s0,16(sp)
    80007bb8:	00813483          	ld	s1,8(sp)
    80007bbc:	02010113          	addi	sp,sp,32
    80007bc0:	00008067          	ret
    80007bc4:	00004617          	auipc	a2,0x4
    80007bc8:	ddc60613          	addi	a2,a2,-548 # 8000b9a0 <uart_tx_r>
    80007bcc:	00004517          	auipc	a0,0x4
    80007bd0:	ddc50513          	addi	a0,a0,-548 # 8000b9a8 <uart_tx_w>
    80007bd4:	00063783          	ld	a5,0(a2)
    80007bd8:	00053703          	ld	a4,0(a0)
    80007bdc:	04f70263          	beq	a4,a5,80007c20 <uartintr+0x110>
    80007be0:	100005b7          	lui	a1,0x10000
    80007be4:	00005817          	auipc	a6,0x5
    80007be8:	27c80813          	addi	a6,a6,636 # 8000ce60 <uart_tx_buf>
    80007bec:	01c0006f          	j	80007c08 <uartintr+0xf8>
    80007bf0:	0006c703          	lbu	a4,0(a3)
    80007bf4:	00f63023          	sd	a5,0(a2)
    80007bf8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bfc:	00063783          	ld	a5,0(a2)
    80007c00:	00053703          	ld	a4,0(a0)
    80007c04:	02f70063          	beq	a4,a5,80007c24 <uartintr+0x114>
    80007c08:	01f7f713          	andi	a4,a5,31
    80007c0c:	00e806b3          	add	a3,a6,a4
    80007c10:	0055c703          	lbu	a4,5(a1)
    80007c14:	00178793          	addi	a5,a5,1
    80007c18:	02077713          	andi	a4,a4,32
    80007c1c:	fc071ae3          	bnez	a4,80007bf0 <uartintr+0xe0>
    80007c20:	00008067          	ret
    80007c24:	00008067          	ret

0000000080007c28 <kinit>:
    80007c28:	fc010113          	addi	sp,sp,-64
    80007c2c:	02913423          	sd	s1,40(sp)
    80007c30:	fffff7b7          	lui	a5,0xfffff
    80007c34:	00006497          	auipc	s1,0x6
    80007c38:	24b48493          	addi	s1,s1,587 # 8000de7f <end+0xfff>
    80007c3c:	02813823          	sd	s0,48(sp)
    80007c40:	01313c23          	sd	s3,24(sp)
    80007c44:	00f4f4b3          	and	s1,s1,a5
    80007c48:	02113c23          	sd	ra,56(sp)
    80007c4c:	03213023          	sd	s2,32(sp)
    80007c50:	01413823          	sd	s4,16(sp)
    80007c54:	01513423          	sd	s5,8(sp)
    80007c58:	04010413          	addi	s0,sp,64
    80007c5c:	000017b7          	lui	a5,0x1
    80007c60:	01100993          	li	s3,17
    80007c64:	00f487b3          	add	a5,s1,a5
    80007c68:	01b99993          	slli	s3,s3,0x1b
    80007c6c:	06f9e063          	bltu	s3,a5,80007ccc <kinit+0xa4>
    80007c70:	00005a97          	auipc	s5,0x5
    80007c74:	210a8a93          	addi	s5,s5,528 # 8000ce80 <end>
    80007c78:	0754ec63          	bltu	s1,s5,80007cf0 <kinit+0xc8>
    80007c7c:	0734fa63          	bgeu	s1,s3,80007cf0 <kinit+0xc8>
    80007c80:	00088a37          	lui	s4,0x88
    80007c84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c88:	00004917          	auipc	s2,0x4
    80007c8c:	d2890913          	addi	s2,s2,-728 # 8000b9b0 <kmem>
    80007c90:	00ca1a13          	slli	s4,s4,0xc
    80007c94:	0140006f          	j	80007ca8 <kinit+0x80>
    80007c98:	000017b7          	lui	a5,0x1
    80007c9c:	00f484b3          	add	s1,s1,a5
    80007ca0:	0554e863          	bltu	s1,s5,80007cf0 <kinit+0xc8>
    80007ca4:	0534f663          	bgeu	s1,s3,80007cf0 <kinit+0xc8>
    80007ca8:	00001637          	lui	a2,0x1
    80007cac:	00100593          	li	a1,1
    80007cb0:	00048513          	mv	a0,s1
    80007cb4:	00000097          	auipc	ra,0x0
    80007cb8:	5e4080e7          	jalr	1508(ra) # 80008298 <__memset>
    80007cbc:	00093783          	ld	a5,0(s2)
    80007cc0:	00f4b023          	sd	a5,0(s1)
    80007cc4:	00993023          	sd	s1,0(s2)
    80007cc8:	fd4498e3          	bne	s1,s4,80007c98 <kinit+0x70>
    80007ccc:	03813083          	ld	ra,56(sp)
    80007cd0:	03013403          	ld	s0,48(sp)
    80007cd4:	02813483          	ld	s1,40(sp)
    80007cd8:	02013903          	ld	s2,32(sp)
    80007cdc:	01813983          	ld	s3,24(sp)
    80007ce0:	01013a03          	ld	s4,16(sp)
    80007ce4:	00813a83          	ld	s5,8(sp)
    80007ce8:	04010113          	addi	sp,sp,64
    80007cec:	00008067          	ret
    80007cf0:	00002517          	auipc	a0,0x2
    80007cf4:	c3850513          	addi	a0,a0,-968 # 80009928 <digits+0x18>
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	4b4080e7          	jalr	1204(ra) # 800071ac <panic>

0000000080007d00 <freerange>:
    80007d00:	fc010113          	addi	sp,sp,-64
    80007d04:	000017b7          	lui	a5,0x1
    80007d08:	02913423          	sd	s1,40(sp)
    80007d0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d10:	009504b3          	add	s1,a0,s1
    80007d14:	fffff537          	lui	a0,0xfffff
    80007d18:	02813823          	sd	s0,48(sp)
    80007d1c:	02113c23          	sd	ra,56(sp)
    80007d20:	03213023          	sd	s2,32(sp)
    80007d24:	01313c23          	sd	s3,24(sp)
    80007d28:	01413823          	sd	s4,16(sp)
    80007d2c:	01513423          	sd	s5,8(sp)
    80007d30:	01613023          	sd	s6,0(sp)
    80007d34:	04010413          	addi	s0,sp,64
    80007d38:	00a4f4b3          	and	s1,s1,a0
    80007d3c:	00f487b3          	add	a5,s1,a5
    80007d40:	06f5e463          	bltu	a1,a5,80007da8 <freerange+0xa8>
    80007d44:	00005a97          	auipc	s5,0x5
    80007d48:	13ca8a93          	addi	s5,s5,316 # 8000ce80 <end>
    80007d4c:	0954e263          	bltu	s1,s5,80007dd0 <freerange+0xd0>
    80007d50:	01100993          	li	s3,17
    80007d54:	01b99993          	slli	s3,s3,0x1b
    80007d58:	0734fc63          	bgeu	s1,s3,80007dd0 <freerange+0xd0>
    80007d5c:	00058a13          	mv	s4,a1
    80007d60:	00004917          	auipc	s2,0x4
    80007d64:	c5090913          	addi	s2,s2,-944 # 8000b9b0 <kmem>
    80007d68:	00002b37          	lui	s6,0x2
    80007d6c:	0140006f          	j	80007d80 <freerange+0x80>
    80007d70:	000017b7          	lui	a5,0x1
    80007d74:	00f484b3          	add	s1,s1,a5
    80007d78:	0554ec63          	bltu	s1,s5,80007dd0 <freerange+0xd0>
    80007d7c:	0534fa63          	bgeu	s1,s3,80007dd0 <freerange+0xd0>
    80007d80:	00001637          	lui	a2,0x1
    80007d84:	00100593          	li	a1,1
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00000097          	auipc	ra,0x0
    80007d90:	50c080e7          	jalr	1292(ra) # 80008298 <__memset>
    80007d94:	00093703          	ld	a4,0(s2)
    80007d98:	016487b3          	add	a5,s1,s6
    80007d9c:	00e4b023          	sd	a4,0(s1)
    80007da0:	00993023          	sd	s1,0(s2)
    80007da4:	fcfa76e3          	bgeu	s4,a5,80007d70 <freerange+0x70>
    80007da8:	03813083          	ld	ra,56(sp)
    80007dac:	03013403          	ld	s0,48(sp)
    80007db0:	02813483          	ld	s1,40(sp)
    80007db4:	02013903          	ld	s2,32(sp)
    80007db8:	01813983          	ld	s3,24(sp)
    80007dbc:	01013a03          	ld	s4,16(sp)
    80007dc0:	00813a83          	ld	s5,8(sp)
    80007dc4:	00013b03          	ld	s6,0(sp)
    80007dc8:	04010113          	addi	sp,sp,64
    80007dcc:	00008067          	ret
    80007dd0:	00002517          	auipc	a0,0x2
    80007dd4:	b5850513          	addi	a0,a0,-1192 # 80009928 <digits+0x18>
    80007dd8:	fffff097          	auipc	ra,0xfffff
    80007ddc:	3d4080e7          	jalr	980(ra) # 800071ac <panic>

0000000080007de0 <kfree>:
    80007de0:	fe010113          	addi	sp,sp,-32
    80007de4:	00813823          	sd	s0,16(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	00913423          	sd	s1,8(sp)
    80007df0:	02010413          	addi	s0,sp,32
    80007df4:	03451793          	slli	a5,a0,0x34
    80007df8:	04079c63          	bnez	a5,80007e50 <kfree+0x70>
    80007dfc:	00005797          	auipc	a5,0x5
    80007e00:	08478793          	addi	a5,a5,132 # 8000ce80 <end>
    80007e04:	00050493          	mv	s1,a0
    80007e08:	04f56463          	bltu	a0,a5,80007e50 <kfree+0x70>
    80007e0c:	01100793          	li	a5,17
    80007e10:	01b79793          	slli	a5,a5,0x1b
    80007e14:	02f57e63          	bgeu	a0,a5,80007e50 <kfree+0x70>
    80007e18:	00001637          	lui	a2,0x1
    80007e1c:	00100593          	li	a1,1
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	478080e7          	jalr	1144(ra) # 80008298 <__memset>
    80007e28:	00004797          	auipc	a5,0x4
    80007e2c:	b8878793          	addi	a5,a5,-1144 # 8000b9b0 <kmem>
    80007e30:	0007b703          	ld	a4,0(a5)
    80007e34:	01813083          	ld	ra,24(sp)
    80007e38:	01013403          	ld	s0,16(sp)
    80007e3c:	00e4b023          	sd	a4,0(s1)
    80007e40:	0097b023          	sd	s1,0(a5)
    80007e44:	00813483          	ld	s1,8(sp)
    80007e48:	02010113          	addi	sp,sp,32
    80007e4c:	00008067          	ret
    80007e50:	00002517          	auipc	a0,0x2
    80007e54:	ad850513          	addi	a0,a0,-1320 # 80009928 <digits+0x18>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	354080e7          	jalr	852(ra) # 800071ac <panic>

0000000080007e60 <kalloc>:
    80007e60:	fe010113          	addi	sp,sp,-32
    80007e64:	00813823          	sd	s0,16(sp)
    80007e68:	00913423          	sd	s1,8(sp)
    80007e6c:	00113c23          	sd	ra,24(sp)
    80007e70:	02010413          	addi	s0,sp,32
    80007e74:	00004797          	auipc	a5,0x4
    80007e78:	b3c78793          	addi	a5,a5,-1220 # 8000b9b0 <kmem>
    80007e7c:	0007b483          	ld	s1,0(a5)
    80007e80:	02048063          	beqz	s1,80007ea0 <kalloc+0x40>
    80007e84:	0004b703          	ld	a4,0(s1)
    80007e88:	00001637          	lui	a2,0x1
    80007e8c:	00500593          	li	a1,5
    80007e90:	00048513          	mv	a0,s1
    80007e94:	00e7b023          	sd	a4,0(a5)
    80007e98:	00000097          	auipc	ra,0x0
    80007e9c:	400080e7          	jalr	1024(ra) # 80008298 <__memset>
    80007ea0:	01813083          	ld	ra,24(sp)
    80007ea4:	01013403          	ld	s0,16(sp)
    80007ea8:	00048513          	mv	a0,s1
    80007eac:	00813483          	ld	s1,8(sp)
    80007eb0:	02010113          	addi	sp,sp,32
    80007eb4:	00008067          	ret

0000000080007eb8 <initlock>:
    80007eb8:	ff010113          	addi	sp,sp,-16
    80007ebc:	00813423          	sd	s0,8(sp)
    80007ec0:	01010413          	addi	s0,sp,16
    80007ec4:	00813403          	ld	s0,8(sp)
    80007ec8:	00b53423          	sd	a1,8(a0)
    80007ecc:	00052023          	sw	zero,0(a0)
    80007ed0:	00053823          	sd	zero,16(a0)
    80007ed4:	01010113          	addi	sp,sp,16
    80007ed8:	00008067          	ret

0000000080007edc <acquire>:
    80007edc:	fe010113          	addi	sp,sp,-32
    80007ee0:	00813823          	sd	s0,16(sp)
    80007ee4:	00913423          	sd	s1,8(sp)
    80007ee8:	00113c23          	sd	ra,24(sp)
    80007eec:	01213023          	sd	s2,0(sp)
    80007ef0:	02010413          	addi	s0,sp,32
    80007ef4:	00050493          	mv	s1,a0
    80007ef8:	10002973          	csrr	s2,sstatus
    80007efc:	100027f3          	csrr	a5,sstatus
    80007f00:	ffd7f793          	andi	a5,a5,-3
    80007f04:	10079073          	csrw	sstatus,a5
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	8ec080e7          	jalr	-1812(ra) # 800067f4 <mycpu>
    80007f10:	07852783          	lw	a5,120(a0)
    80007f14:	06078e63          	beqz	a5,80007f90 <acquire+0xb4>
    80007f18:	fffff097          	auipc	ra,0xfffff
    80007f1c:	8dc080e7          	jalr	-1828(ra) # 800067f4 <mycpu>
    80007f20:	07852783          	lw	a5,120(a0)
    80007f24:	0004a703          	lw	a4,0(s1)
    80007f28:	0017879b          	addiw	a5,a5,1
    80007f2c:	06f52c23          	sw	a5,120(a0)
    80007f30:	04071063          	bnez	a4,80007f70 <acquire+0x94>
    80007f34:	00100713          	li	a4,1
    80007f38:	00070793          	mv	a5,a4
    80007f3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f40:	0007879b          	sext.w	a5,a5
    80007f44:	fe079ae3          	bnez	a5,80007f38 <acquire+0x5c>
    80007f48:	0ff0000f          	fence
    80007f4c:	fffff097          	auipc	ra,0xfffff
    80007f50:	8a8080e7          	jalr	-1880(ra) # 800067f4 <mycpu>
    80007f54:	01813083          	ld	ra,24(sp)
    80007f58:	01013403          	ld	s0,16(sp)
    80007f5c:	00a4b823          	sd	a0,16(s1)
    80007f60:	00013903          	ld	s2,0(sp)
    80007f64:	00813483          	ld	s1,8(sp)
    80007f68:	02010113          	addi	sp,sp,32
    80007f6c:	00008067          	ret
    80007f70:	0104b903          	ld	s2,16(s1)
    80007f74:	fffff097          	auipc	ra,0xfffff
    80007f78:	880080e7          	jalr	-1920(ra) # 800067f4 <mycpu>
    80007f7c:	faa91ce3          	bne	s2,a0,80007f34 <acquire+0x58>
    80007f80:	00002517          	auipc	a0,0x2
    80007f84:	9b050513          	addi	a0,a0,-1616 # 80009930 <digits+0x20>
    80007f88:	fffff097          	auipc	ra,0xfffff
    80007f8c:	224080e7          	jalr	548(ra) # 800071ac <panic>
    80007f90:	00195913          	srli	s2,s2,0x1
    80007f94:	fffff097          	auipc	ra,0xfffff
    80007f98:	860080e7          	jalr	-1952(ra) # 800067f4 <mycpu>
    80007f9c:	00197913          	andi	s2,s2,1
    80007fa0:	07252e23          	sw	s2,124(a0)
    80007fa4:	f75ff06f          	j	80007f18 <acquire+0x3c>

0000000080007fa8 <release>:
    80007fa8:	fe010113          	addi	sp,sp,-32
    80007fac:	00813823          	sd	s0,16(sp)
    80007fb0:	00113c23          	sd	ra,24(sp)
    80007fb4:	00913423          	sd	s1,8(sp)
    80007fb8:	01213023          	sd	s2,0(sp)
    80007fbc:	02010413          	addi	s0,sp,32
    80007fc0:	00052783          	lw	a5,0(a0)
    80007fc4:	00079a63          	bnez	a5,80007fd8 <release+0x30>
    80007fc8:	00002517          	auipc	a0,0x2
    80007fcc:	97050513          	addi	a0,a0,-1680 # 80009938 <digits+0x28>
    80007fd0:	fffff097          	auipc	ra,0xfffff
    80007fd4:	1dc080e7          	jalr	476(ra) # 800071ac <panic>
    80007fd8:	01053903          	ld	s2,16(a0)
    80007fdc:	00050493          	mv	s1,a0
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	814080e7          	jalr	-2028(ra) # 800067f4 <mycpu>
    80007fe8:	fea910e3          	bne	s2,a0,80007fc8 <release+0x20>
    80007fec:	0004b823          	sd	zero,16(s1)
    80007ff0:	0ff0000f          	fence
    80007ff4:	0f50000f          	fence	iorw,ow
    80007ff8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007ffc:	ffffe097          	auipc	ra,0xffffe
    80008000:	7f8080e7          	jalr	2040(ra) # 800067f4 <mycpu>
    80008004:	100027f3          	csrr	a5,sstatus
    80008008:	0027f793          	andi	a5,a5,2
    8000800c:	04079a63          	bnez	a5,80008060 <release+0xb8>
    80008010:	07852783          	lw	a5,120(a0)
    80008014:	02f05e63          	blez	a5,80008050 <release+0xa8>
    80008018:	fff7871b          	addiw	a4,a5,-1
    8000801c:	06e52c23          	sw	a4,120(a0)
    80008020:	00071c63          	bnez	a4,80008038 <release+0x90>
    80008024:	07c52783          	lw	a5,124(a0)
    80008028:	00078863          	beqz	a5,80008038 <release+0x90>
    8000802c:	100027f3          	csrr	a5,sstatus
    80008030:	0027e793          	ori	a5,a5,2
    80008034:	10079073          	csrw	sstatus,a5
    80008038:	01813083          	ld	ra,24(sp)
    8000803c:	01013403          	ld	s0,16(sp)
    80008040:	00813483          	ld	s1,8(sp)
    80008044:	00013903          	ld	s2,0(sp)
    80008048:	02010113          	addi	sp,sp,32
    8000804c:	00008067          	ret
    80008050:	00002517          	auipc	a0,0x2
    80008054:	90850513          	addi	a0,a0,-1784 # 80009958 <digits+0x48>
    80008058:	fffff097          	auipc	ra,0xfffff
    8000805c:	154080e7          	jalr	340(ra) # 800071ac <panic>
    80008060:	00002517          	auipc	a0,0x2
    80008064:	8e050513          	addi	a0,a0,-1824 # 80009940 <digits+0x30>
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	144080e7          	jalr	324(ra) # 800071ac <panic>

0000000080008070 <holding>:
    80008070:	00052783          	lw	a5,0(a0)
    80008074:	00079663          	bnez	a5,80008080 <holding+0x10>
    80008078:	00000513          	li	a0,0
    8000807c:	00008067          	ret
    80008080:	fe010113          	addi	sp,sp,-32
    80008084:	00813823          	sd	s0,16(sp)
    80008088:	00913423          	sd	s1,8(sp)
    8000808c:	00113c23          	sd	ra,24(sp)
    80008090:	02010413          	addi	s0,sp,32
    80008094:	01053483          	ld	s1,16(a0)
    80008098:	ffffe097          	auipc	ra,0xffffe
    8000809c:	75c080e7          	jalr	1884(ra) # 800067f4 <mycpu>
    800080a0:	01813083          	ld	ra,24(sp)
    800080a4:	01013403          	ld	s0,16(sp)
    800080a8:	40a48533          	sub	a0,s1,a0
    800080ac:	00153513          	seqz	a0,a0
    800080b0:	00813483          	ld	s1,8(sp)
    800080b4:	02010113          	addi	sp,sp,32
    800080b8:	00008067          	ret

00000000800080bc <push_off>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00113c23          	sd	ra,24(sp)
    800080c8:	00913423          	sd	s1,8(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	100024f3          	csrr	s1,sstatus
    800080d4:	100027f3          	csrr	a5,sstatus
    800080d8:	ffd7f793          	andi	a5,a5,-3
    800080dc:	10079073          	csrw	sstatus,a5
    800080e0:	ffffe097          	auipc	ra,0xffffe
    800080e4:	714080e7          	jalr	1812(ra) # 800067f4 <mycpu>
    800080e8:	07852783          	lw	a5,120(a0)
    800080ec:	02078663          	beqz	a5,80008118 <push_off+0x5c>
    800080f0:	ffffe097          	auipc	ra,0xffffe
    800080f4:	704080e7          	jalr	1796(ra) # 800067f4 <mycpu>
    800080f8:	07852783          	lw	a5,120(a0)
    800080fc:	01813083          	ld	ra,24(sp)
    80008100:	01013403          	ld	s0,16(sp)
    80008104:	0017879b          	addiw	a5,a5,1
    80008108:	06f52c23          	sw	a5,120(a0)
    8000810c:	00813483          	ld	s1,8(sp)
    80008110:	02010113          	addi	sp,sp,32
    80008114:	00008067          	ret
    80008118:	0014d493          	srli	s1,s1,0x1
    8000811c:	ffffe097          	auipc	ra,0xffffe
    80008120:	6d8080e7          	jalr	1752(ra) # 800067f4 <mycpu>
    80008124:	0014f493          	andi	s1,s1,1
    80008128:	06952e23          	sw	s1,124(a0)
    8000812c:	fc5ff06f          	j	800080f0 <push_off+0x34>

0000000080008130 <pop_off>:
    80008130:	ff010113          	addi	sp,sp,-16
    80008134:	00813023          	sd	s0,0(sp)
    80008138:	00113423          	sd	ra,8(sp)
    8000813c:	01010413          	addi	s0,sp,16
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	6b4080e7          	jalr	1716(ra) # 800067f4 <mycpu>
    80008148:	100027f3          	csrr	a5,sstatus
    8000814c:	0027f793          	andi	a5,a5,2
    80008150:	04079663          	bnez	a5,8000819c <pop_off+0x6c>
    80008154:	07852783          	lw	a5,120(a0)
    80008158:	02f05a63          	blez	a5,8000818c <pop_off+0x5c>
    8000815c:	fff7871b          	addiw	a4,a5,-1
    80008160:	06e52c23          	sw	a4,120(a0)
    80008164:	00071c63          	bnez	a4,8000817c <pop_off+0x4c>
    80008168:	07c52783          	lw	a5,124(a0)
    8000816c:	00078863          	beqz	a5,8000817c <pop_off+0x4c>
    80008170:	100027f3          	csrr	a5,sstatus
    80008174:	0027e793          	ori	a5,a5,2
    80008178:	10079073          	csrw	sstatus,a5
    8000817c:	00813083          	ld	ra,8(sp)
    80008180:	00013403          	ld	s0,0(sp)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret
    8000818c:	00001517          	auipc	a0,0x1
    80008190:	7cc50513          	addi	a0,a0,1996 # 80009958 <digits+0x48>
    80008194:	fffff097          	auipc	ra,0xfffff
    80008198:	018080e7          	jalr	24(ra) # 800071ac <panic>
    8000819c:	00001517          	auipc	a0,0x1
    800081a0:	7a450513          	addi	a0,a0,1956 # 80009940 <digits+0x30>
    800081a4:	fffff097          	auipc	ra,0xfffff
    800081a8:	008080e7          	jalr	8(ra) # 800071ac <panic>

00000000800081ac <push_on>:
    800081ac:	fe010113          	addi	sp,sp,-32
    800081b0:	00813823          	sd	s0,16(sp)
    800081b4:	00113c23          	sd	ra,24(sp)
    800081b8:	00913423          	sd	s1,8(sp)
    800081bc:	02010413          	addi	s0,sp,32
    800081c0:	100024f3          	csrr	s1,sstatus
    800081c4:	100027f3          	csrr	a5,sstatus
    800081c8:	0027e793          	ori	a5,a5,2
    800081cc:	10079073          	csrw	sstatus,a5
    800081d0:	ffffe097          	auipc	ra,0xffffe
    800081d4:	624080e7          	jalr	1572(ra) # 800067f4 <mycpu>
    800081d8:	07852783          	lw	a5,120(a0)
    800081dc:	02078663          	beqz	a5,80008208 <push_on+0x5c>
    800081e0:	ffffe097          	auipc	ra,0xffffe
    800081e4:	614080e7          	jalr	1556(ra) # 800067f4 <mycpu>
    800081e8:	07852783          	lw	a5,120(a0)
    800081ec:	01813083          	ld	ra,24(sp)
    800081f0:	01013403          	ld	s0,16(sp)
    800081f4:	0017879b          	addiw	a5,a5,1
    800081f8:	06f52c23          	sw	a5,120(a0)
    800081fc:	00813483          	ld	s1,8(sp)
    80008200:	02010113          	addi	sp,sp,32
    80008204:	00008067          	ret
    80008208:	0014d493          	srli	s1,s1,0x1
    8000820c:	ffffe097          	auipc	ra,0xffffe
    80008210:	5e8080e7          	jalr	1512(ra) # 800067f4 <mycpu>
    80008214:	0014f493          	andi	s1,s1,1
    80008218:	06952e23          	sw	s1,124(a0)
    8000821c:	fc5ff06f          	j	800081e0 <push_on+0x34>

0000000080008220 <pop_on>:
    80008220:	ff010113          	addi	sp,sp,-16
    80008224:	00813023          	sd	s0,0(sp)
    80008228:	00113423          	sd	ra,8(sp)
    8000822c:	01010413          	addi	s0,sp,16
    80008230:	ffffe097          	auipc	ra,0xffffe
    80008234:	5c4080e7          	jalr	1476(ra) # 800067f4 <mycpu>
    80008238:	100027f3          	csrr	a5,sstatus
    8000823c:	0027f793          	andi	a5,a5,2
    80008240:	04078463          	beqz	a5,80008288 <pop_on+0x68>
    80008244:	07852783          	lw	a5,120(a0)
    80008248:	02f05863          	blez	a5,80008278 <pop_on+0x58>
    8000824c:	fff7879b          	addiw	a5,a5,-1
    80008250:	06f52c23          	sw	a5,120(a0)
    80008254:	07853783          	ld	a5,120(a0)
    80008258:	00079863          	bnez	a5,80008268 <pop_on+0x48>
    8000825c:	100027f3          	csrr	a5,sstatus
    80008260:	ffd7f793          	andi	a5,a5,-3
    80008264:	10079073          	csrw	sstatus,a5
    80008268:	00813083          	ld	ra,8(sp)
    8000826c:	00013403          	ld	s0,0(sp)
    80008270:	01010113          	addi	sp,sp,16
    80008274:	00008067          	ret
    80008278:	00001517          	auipc	a0,0x1
    8000827c:	70850513          	addi	a0,a0,1800 # 80009980 <digits+0x70>
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	f2c080e7          	jalr	-212(ra) # 800071ac <panic>
    80008288:	00001517          	auipc	a0,0x1
    8000828c:	6d850513          	addi	a0,a0,1752 # 80009960 <digits+0x50>
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	f1c080e7          	jalr	-228(ra) # 800071ac <panic>

0000000080008298 <__memset>:
    80008298:	ff010113          	addi	sp,sp,-16
    8000829c:	00813423          	sd	s0,8(sp)
    800082a0:	01010413          	addi	s0,sp,16
    800082a4:	1a060e63          	beqz	a2,80008460 <__memset+0x1c8>
    800082a8:	40a007b3          	neg	a5,a0
    800082ac:	0077f793          	andi	a5,a5,7
    800082b0:	00778693          	addi	a3,a5,7
    800082b4:	00b00813          	li	a6,11
    800082b8:	0ff5f593          	andi	a1,a1,255
    800082bc:	fff6071b          	addiw	a4,a2,-1
    800082c0:	1b06e663          	bltu	a3,a6,8000846c <__memset+0x1d4>
    800082c4:	1cd76463          	bltu	a4,a3,8000848c <__memset+0x1f4>
    800082c8:	1a078e63          	beqz	a5,80008484 <__memset+0x1ec>
    800082cc:	00b50023          	sb	a1,0(a0)
    800082d0:	00100713          	li	a4,1
    800082d4:	1ae78463          	beq	a5,a4,8000847c <__memset+0x1e4>
    800082d8:	00b500a3          	sb	a1,1(a0)
    800082dc:	00200713          	li	a4,2
    800082e0:	1ae78a63          	beq	a5,a4,80008494 <__memset+0x1fc>
    800082e4:	00b50123          	sb	a1,2(a0)
    800082e8:	00300713          	li	a4,3
    800082ec:	18e78463          	beq	a5,a4,80008474 <__memset+0x1dc>
    800082f0:	00b501a3          	sb	a1,3(a0)
    800082f4:	00400713          	li	a4,4
    800082f8:	1ae78263          	beq	a5,a4,8000849c <__memset+0x204>
    800082fc:	00b50223          	sb	a1,4(a0)
    80008300:	00500713          	li	a4,5
    80008304:	1ae78063          	beq	a5,a4,800084a4 <__memset+0x20c>
    80008308:	00b502a3          	sb	a1,5(a0)
    8000830c:	00700713          	li	a4,7
    80008310:	18e79e63          	bne	a5,a4,800084ac <__memset+0x214>
    80008314:	00b50323          	sb	a1,6(a0)
    80008318:	00700e93          	li	t4,7
    8000831c:	00859713          	slli	a4,a1,0x8
    80008320:	00e5e733          	or	a4,a1,a4
    80008324:	01059e13          	slli	t3,a1,0x10
    80008328:	01c76e33          	or	t3,a4,t3
    8000832c:	01859313          	slli	t1,a1,0x18
    80008330:	006e6333          	or	t1,t3,t1
    80008334:	02059893          	slli	a7,a1,0x20
    80008338:	40f60e3b          	subw	t3,a2,a5
    8000833c:	011368b3          	or	a7,t1,a7
    80008340:	02859813          	slli	a6,a1,0x28
    80008344:	0108e833          	or	a6,a7,a6
    80008348:	03059693          	slli	a3,a1,0x30
    8000834c:	003e589b          	srliw	a7,t3,0x3
    80008350:	00d866b3          	or	a3,a6,a3
    80008354:	03859713          	slli	a4,a1,0x38
    80008358:	00389813          	slli	a6,a7,0x3
    8000835c:	00f507b3          	add	a5,a0,a5
    80008360:	00e6e733          	or	a4,a3,a4
    80008364:	000e089b          	sext.w	a7,t3
    80008368:	00f806b3          	add	a3,a6,a5
    8000836c:	00e7b023          	sd	a4,0(a5)
    80008370:	00878793          	addi	a5,a5,8
    80008374:	fed79ce3          	bne	a5,a3,8000836c <__memset+0xd4>
    80008378:	ff8e7793          	andi	a5,t3,-8
    8000837c:	0007871b          	sext.w	a4,a5
    80008380:	01d787bb          	addw	a5,a5,t4
    80008384:	0ce88e63          	beq	a7,a4,80008460 <__memset+0x1c8>
    80008388:	00f50733          	add	a4,a0,a5
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	0017871b          	addiw	a4,a5,1
    80008394:	0cc77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008398:	00e50733          	add	a4,a0,a4
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	0027871b          	addiw	a4,a5,2
    800083a4:	0ac77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	0037871b          	addiw	a4,a5,3
    800083b4:	0ac77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0047871b          	addiw	a4,a5,4
    800083c4:	08c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0057871b          	addiw	a4,a5,5
    800083d4:	08c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0067871b          	addiw	a4,a5,6
    800083e4:	06c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0077871b          	addiw	a4,a5,7
    800083f4:	06c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0087871b          	addiw	a4,a5,8
    80008404:	04c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0097871b          	addiw	a4,a5,9
    80008414:	04c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	00a7871b          	addiw	a4,a5,10
    80008424:	02c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	00b7871b          	addiw	a4,a5,11
    80008434:	02c77663          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	00c7871b          	addiw	a4,a5,12
    80008444:	00c77e63          	bgeu	a4,a2,80008460 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	00d7879b          	addiw	a5,a5,13
    80008454:	00c7f663          	bgeu	a5,a2,80008460 <__memset+0x1c8>
    80008458:	00f507b3          	add	a5,a0,a5
    8000845c:	00b78023          	sb	a1,0(a5)
    80008460:	00813403          	ld	s0,8(sp)
    80008464:	01010113          	addi	sp,sp,16
    80008468:	00008067          	ret
    8000846c:	00b00693          	li	a3,11
    80008470:	e55ff06f          	j	800082c4 <__memset+0x2c>
    80008474:	00300e93          	li	t4,3
    80008478:	ea5ff06f          	j	8000831c <__memset+0x84>
    8000847c:	00100e93          	li	t4,1
    80008480:	e9dff06f          	j	8000831c <__memset+0x84>
    80008484:	00000e93          	li	t4,0
    80008488:	e95ff06f          	j	8000831c <__memset+0x84>
    8000848c:	00000793          	li	a5,0
    80008490:	ef9ff06f          	j	80008388 <__memset+0xf0>
    80008494:	00200e93          	li	t4,2
    80008498:	e85ff06f          	j	8000831c <__memset+0x84>
    8000849c:	00400e93          	li	t4,4
    800084a0:	e7dff06f          	j	8000831c <__memset+0x84>
    800084a4:	00500e93          	li	t4,5
    800084a8:	e75ff06f          	j	8000831c <__memset+0x84>
    800084ac:	00600e93          	li	t4,6
    800084b0:	e6dff06f          	j	8000831c <__memset+0x84>

00000000800084b4 <__memmove>:
    800084b4:	ff010113          	addi	sp,sp,-16
    800084b8:	00813423          	sd	s0,8(sp)
    800084bc:	01010413          	addi	s0,sp,16
    800084c0:	0e060863          	beqz	a2,800085b0 <__memmove+0xfc>
    800084c4:	fff6069b          	addiw	a3,a2,-1
    800084c8:	0006881b          	sext.w	a6,a3
    800084cc:	0ea5e863          	bltu	a1,a0,800085bc <__memmove+0x108>
    800084d0:	00758713          	addi	a4,a1,7
    800084d4:	00a5e7b3          	or	a5,a1,a0
    800084d8:	40a70733          	sub	a4,a4,a0
    800084dc:	0077f793          	andi	a5,a5,7
    800084e0:	00f73713          	sltiu	a4,a4,15
    800084e4:	00174713          	xori	a4,a4,1
    800084e8:	0017b793          	seqz	a5,a5
    800084ec:	00e7f7b3          	and	a5,a5,a4
    800084f0:	10078863          	beqz	a5,80008600 <__memmove+0x14c>
    800084f4:	00900793          	li	a5,9
    800084f8:	1107f463          	bgeu	a5,a6,80008600 <__memmove+0x14c>
    800084fc:	0036581b          	srliw	a6,a2,0x3
    80008500:	fff8081b          	addiw	a6,a6,-1
    80008504:	02081813          	slli	a6,a6,0x20
    80008508:	01d85893          	srli	a7,a6,0x1d
    8000850c:	00858813          	addi	a6,a1,8
    80008510:	00058793          	mv	a5,a1
    80008514:	00050713          	mv	a4,a0
    80008518:	01088833          	add	a6,a7,a6
    8000851c:	0007b883          	ld	a7,0(a5)
    80008520:	00878793          	addi	a5,a5,8
    80008524:	00870713          	addi	a4,a4,8
    80008528:	ff173c23          	sd	a7,-8(a4)
    8000852c:	ff0798e3          	bne	a5,a6,8000851c <__memmove+0x68>
    80008530:	ff867713          	andi	a4,a2,-8
    80008534:	02071793          	slli	a5,a4,0x20
    80008538:	0207d793          	srli	a5,a5,0x20
    8000853c:	00f585b3          	add	a1,a1,a5
    80008540:	40e686bb          	subw	a3,a3,a4
    80008544:	00f507b3          	add	a5,a0,a5
    80008548:	06e60463          	beq	a2,a4,800085b0 <__memmove+0xfc>
    8000854c:	0005c703          	lbu	a4,0(a1)
    80008550:	00e78023          	sb	a4,0(a5)
    80008554:	04068e63          	beqz	a3,800085b0 <__memmove+0xfc>
    80008558:	0015c603          	lbu	a2,1(a1)
    8000855c:	00100713          	li	a4,1
    80008560:	00c780a3          	sb	a2,1(a5)
    80008564:	04e68663          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008568:	0025c603          	lbu	a2,2(a1)
    8000856c:	00200713          	li	a4,2
    80008570:	00c78123          	sb	a2,2(a5)
    80008574:	02e68e63          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008578:	0035c603          	lbu	a2,3(a1)
    8000857c:	00300713          	li	a4,3
    80008580:	00c781a3          	sb	a2,3(a5)
    80008584:	02e68663          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008588:	0045c603          	lbu	a2,4(a1)
    8000858c:	00400713          	li	a4,4
    80008590:	00c78223          	sb	a2,4(a5)
    80008594:	00e68e63          	beq	a3,a4,800085b0 <__memmove+0xfc>
    80008598:	0055c603          	lbu	a2,5(a1)
    8000859c:	00500713          	li	a4,5
    800085a0:	00c782a3          	sb	a2,5(a5)
    800085a4:	00e68663          	beq	a3,a4,800085b0 <__memmove+0xfc>
    800085a8:	0065c703          	lbu	a4,6(a1)
    800085ac:	00e78323          	sb	a4,6(a5)
    800085b0:	00813403          	ld	s0,8(sp)
    800085b4:	01010113          	addi	sp,sp,16
    800085b8:	00008067          	ret
    800085bc:	02061713          	slli	a4,a2,0x20
    800085c0:	02075713          	srli	a4,a4,0x20
    800085c4:	00e587b3          	add	a5,a1,a4
    800085c8:	f0f574e3          	bgeu	a0,a5,800084d0 <__memmove+0x1c>
    800085cc:	02069613          	slli	a2,a3,0x20
    800085d0:	02065613          	srli	a2,a2,0x20
    800085d4:	fff64613          	not	a2,a2
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00c78633          	add	a2,a5,a2
    800085e0:	fff7c683          	lbu	a3,-1(a5)
    800085e4:	fff78793          	addi	a5,a5,-1
    800085e8:	fff70713          	addi	a4,a4,-1
    800085ec:	00d70023          	sb	a3,0(a4)
    800085f0:	fec798e3          	bne	a5,a2,800085e0 <__memmove+0x12c>
    800085f4:	00813403          	ld	s0,8(sp)
    800085f8:	01010113          	addi	sp,sp,16
    800085fc:	00008067          	ret
    80008600:	02069713          	slli	a4,a3,0x20
    80008604:	02075713          	srli	a4,a4,0x20
    80008608:	00170713          	addi	a4,a4,1
    8000860c:	00e50733          	add	a4,a0,a4
    80008610:	00050793          	mv	a5,a0
    80008614:	0005c683          	lbu	a3,0(a1)
    80008618:	00178793          	addi	a5,a5,1
    8000861c:	00158593          	addi	a1,a1,1
    80008620:	fed78fa3          	sb	a3,-1(a5)
    80008624:	fee798e3          	bne	a5,a4,80008614 <__memmove+0x160>
    80008628:	f89ff06f          	j	800085b0 <__memmove+0xfc>
	...
