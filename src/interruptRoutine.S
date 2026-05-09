.global interruptHandler

.global interrupt
.align 4

interrupt:
    addi sp,sp,-256
    sd x0,0x00(sp)
    sd x1,0x08(sp)
    sd x2,0x10(sp)
    sd x3,0x18(sp)
    sd x4,0x20(sp)
    sd x5,0x28(sp)
    sd x6,0x30(sp)
    sd x7,0x38(sp)
    sd x8,0x40(sp)
    sd x9,0x48(sp)
    sd x10,0x50(sp)
    sd x11,0x58(sp)
    sd x12,0x60(sp)
    sd x13,0x68(sp)
    sd x14,0x70(sp)
    sd x15,0x78(sp)
    sd x16,0x80(sp)
    sd x17,0x88(sp)
    sd x18,0x90(sp)
    sd x19,0x98(sp)
    sd x20,0xA0(sp)
    sd x21,0xA8(sp)
    sd x22,0xB0(sp)
    sd x23,0xB8(sp)
    sd x24,0xC0(sp)
    sd x25,0xC8(sp)
    sd x26,0xD0(sp)
    sd x27,0xD8(sp)
    sd x28,0xE0(sp)
    sd x29,0xE8(sp)
    sd x30,0xF0(sp)
    sd x31,0xF8(sp)

    call interruptHandler

    addi sp,sp,-256
    sd x0,0x00(sp)
    sd x1,0x08(sp)
    sd x2,0x10(sp)
    sd x3,0x18(sp)
    ld x4,0x20(sp)
    sd x5,0x28(sp)
    sd x6,0x30(sp)
    sd x7,0x38(sp)
    sd x8,0x40(sp)
    sd x9,0x48(sp)
    sd x10,0x50(sp)
    sd x11,0x58(sp)
    sd x12,0x60(sp)
    sd x13,0x68(sp)
    sd x14,0x70(sp)
    sd x15,0x78(sp)
    sd x16,0x80(sp)
    sd x17,0x88(sp)
    sd x18,0x90(sp)
    sd x19,0x98(sp)
    sd x20,0xA0(sp)
    sd x21,0xA8(sp)
    sd x22,0xB0(sp)
    sd x23,0xB8(sp)
    sd x24,0xC0(sp)
    sd x25,0xC8(sp)
    sd x26,0xD0(sp)
    sd x27,0xD8(sp)
    sd x28,0xE0(sp)
    sd x29,0xE8(sp)
    sd x30,0xF0(sp)
    sd x31,0xF8(sp)

    sret




