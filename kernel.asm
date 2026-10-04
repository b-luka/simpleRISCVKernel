
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	3b813103          	ld	sp,952(sp) # 800073b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6e9020ef          	jal	ra,80002f04 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	3b1000ef          	jal	ra,80001c34 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    8000110c:	10200073          	sret

0000000080001110 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001110:	f0010113          	addi	sp,sp,-256
    .irp index, 0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001114:	00013023          	sd	zero,0(sp)
    80001118:	00213823          	sd	sp,16(sp)
    8000111c:	00313c23          	sd	gp,24(sp)
    80001120:	02413023          	sd	tp,32(sp)
    80001124:	02513423          	sd	t0,40(sp)
    80001128:	02613823          	sd	t1,48(sp)
    8000112c:	02713c23          	sd	t2,56(sp)
    80001130:	04813023          	sd	s0,64(sp)
    80001134:	04913423          	sd	s1,72(sp)
    80001138:	04a13823          	sd	a0,80(sp)
    8000113c:	04b13c23          	sd	a1,88(sp)
    80001140:	06c13023          	sd	a2,96(sp)
    80001144:	06d13423          	sd	a3,104(sp)
    80001148:	06e13823          	sd	a4,112(sp)
    8000114c:	06f13c23          	sd	a5,120(sp)
    80001150:	09013023          	sd	a6,128(sp)
    80001154:	09113423          	sd	a7,136(sp)
    80001158:	09213823          	sd	s2,144(sp)
    8000115c:	09313c23          	sd	s3,152(sp)
    80001160:	0b413023          	sd	s4,160(sp)
    80001164:	0b513423          	sd	s5,168(sp)
    80001168:	0b613823          	sd	s6,176(sp)
    8000116c:	0b713c23          	sd	s7,184(sp)
    80001170:	0d813023          	sd	s8,192(sp)
    80001174:	0d913423          	sd	s9,200(sp)
    80001178:	0da13823          	sd	s10,208(sp)
    8000117c:	0db13c23          	sd	s11,216(sp)
    80001180:	0fc13023          	sd	t3,224(sp)
    80001184:	0fd13423          	sd	t4,232(sp)
    80001188:	0fe13823          	sd	t5,240(sp)
    8000118c:	0ff13c23          	sd	t6,248(sp)
    ret
    80001190:	00008067          	ret

0000000080001194 <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001194:	00013003          	ld	zero,0(sp)
    80001198:	01013103          	ld	sp,16(sp)
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    80001214:	00008067          	ret

0000000080001218 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>:
.global _ZN7_thread13contextSwitchEPNS_7ContextES1_
.type _ZN7_thread13contextSwitchEPNS_7ContextES1_, @function

_ZN7_thread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0(a0)
    80001218:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    8000121c:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1)
    80001220:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    80001224:	0085b103          	ld	sp,8(a1)

    80001228:	00008067          	ret

000000008000122c <_Z9mem_allocm>:

#include "../h/syscall_c.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void* mem_alloc(size_t size) {
    8000122c:	ff010113          	addi	sp,sp,-16
    80001230:	00813423          	sd	s0,8(sp)
    80001234:	01010413          	addi	s0,sp,16
    80001238:	00050593          	mv	a1,a0
    register uint64 arg0 asm("a0") = (uint64) MEM_ALLOC;
    8000123c:	00100513          	li	a0,1
    register uint64 arg1 asm("a1") = (uint64) size;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
    80001240:	00000073          	ecall

    return (void*) arg0;
}
    80001244:	00813403          	ld	s0,8(sp)
    80001248:	01010113          	addi	sp,sp,16
    8000124c:	00008067          	ret

0000000080001250 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001250:	ff010113          	addi	sp,sp,-16
    80001254:	00813423          	sd	s0,8(sp)
    80001258:	01010413          	addi	s0,sp,16
    8000125c:	00050593          	mv	a1,a0
    register uint64 arg0 asm("a0") = (uint64) MEM_FREE;
    80001260:	00200513          	li	a0,2
    register uint64 arg1 asm("a1") = (uint64) ptr;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
    80001264:	00000073          	ecall

    return (int) arg0;
}
    80001268:	0005051b          	sext.w	a0,a0
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_Z13thread_createPP7_threadPFvPvES2_14ThreadPriority>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg, ThreadPriority priority) {
    80001278:	fd010113          	addi	sp,sp,-48
    8000127c:	02113423          	sd	ra,40(sp)
    80001280:	02813023          	sd	s0,32(sp)
    80001284:	00913c23          	sd	s1,24(sp)
    80001288:	01213823          	sd	s2,16(sp)
    8000128c:	01313423          	sd	s3,8(sp)
    80001290:	01413023          	sd	s4,0(sp)
    80001294:	03010413          	addi	s0,sp,48
    80001298:	00050a13          	mv	s4,a0
    8000129c:	00058993          	mv	s3,a1
    800012a0:	00060913          	mv	s2,a2
    800012a4:	00068493          	mv	s1,a3
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012a8:	00001537          	lui	a0,0x1
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	f80080e7          	jalr	-128(ra) # 8000122c <_Z9mem_allocm>
    if (!stack_space) return NO_MEMORY_AVAILABLE;
    800012b4:	04050463          	beqz	a0,800012fc <_Z13thread_createPP7_threadPFvPvES2_14ThreadPriority+0x84>
    800012b8:	00050713          	mv	a4,a0

    register uint64 arg0 asm("a0") = (uint64) THREAD_CREATE;
    800012bc:	01100513          	li	a0,17
    register uint64 arg1 asm("a1") = (uint64) handle;
    800012c0:	000a0593          	mv	a1,s4
    register uint64 arg2 asm("a2") = (uint64) start_routine;
    800012c4:	00098613          	mv	a2,s3
    register uint64 arg3 asm("a3") = (uint64) arg;
    800012c8:	00090693          	mv	a3,s2
    register uint64 arg4 asm("a4") = (uint64) stack_space;
    register uint64 arg5 asm("a5") = (uint64) priority;
    800012cc:	02049793          	slli	a5,s1,0x20
    800012d0:	0207d793          	srli	a5,a5,0x20
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2), "r" (arg3), "r" (arg4), "r" (arg5) : "memory");
    800012d4:	00000073          	ecall

    return (int) arg0;
    800012d8:	0005051b          	sext.w	a0,a0
}
    800012dc:	02813083          	ld	ra,40(sp)
    800012e0:	02013403          	ld	s0,32(sp)
    800012e4:	01813483          	ld	s1,24(sp)
    800012e8:	01013903          	ld	s2,16(sp)
    800012ec:	00813983          	ld	s3,8(sp)
    800012f0:	00013a03          	ld	s4,0(sp)
    800012f4:	03010113          	addi	sp,sp,48
    800012f8:	00008067          	ret
    if (!stack_space) return NO_MEMORY_AVAILABLE;
    800012fc:	ffe00513          	li	a0,-2
    80001300:	fddff06f          	j	800012dc <_Z13thread_createPP7_threadPFvPvES2_14ThreadPriority+0x64>

0000000080001304 <_Z11thread_exitv>:

int thread_exit() {
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    register uint64 arg0 asm("a0") = (uint64) THREAD_EXIT;
    80001310:	01200513          	li	a0,18
    __asm__ volatile ("ecall" : "+r" (arg0) : : "memory");
    80001314:	00000073          	ecall

    return (int) arg0;
}
    80001318:	0005051b          	sext.w	a0,a0
    8000131c:	00813403          	ld	s0,8(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    register uint64 arg0 asm("a0") = (uint64) THREAD_DISPATCH;
    80001334:	01300513          	li	a0,19
    __asm__ volatile ("ecall" : "+r" (arg0) : : "memory");
    80001338:	00000073          	ecall
}
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00813423          	sd	s0,8(sp)
    80001350:	01010413          	addi	s0,sp,16
    80001354:	00050793          	mv	a5,a0
    80001358:	00058613          	mv	a2,a1
    register uint64 arg0 asm("a0") = (uint64) SEM_OPEN;
    8000135c:	02100513          	li	a0,33
    register uint64 arg1 asm("a1") = (uint64) handle;
    80001360:	00078593          	mv	a1,a5
    register uint64 arg2 asm("a2") = (uint64) init;
    80001364:	02061613          	slli	a2,a2,0x20
    80001368:	02065613          	srli	a2,a2,0x20
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2) : "memory");
    8000136c:	00000073          	ecall

    return (int) arg0;
}
    80001370:	0005051b          	sext.w	a0,a0
    80001374:	00813403          	ld	s0,8(sp)
    80001378:	01010113          	addi	sp,sp,16
    8000137c:	00008067          	ret

0000000080001380 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00813423          	sd	s0,8(sp)
    80001388:	01010413          	addi	s0,sp,16
    8000138c:	00050593          	mv	a1,a0
    register uint64 arg0 asm("a0") = (uint64) SEM_CLOSE;
    80001390:	02200513          	li	a0,34
    register uint64 arg1 asm("a1") = (uint64) handle;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
    80001394:	00000073          	ecall

    return (int) arg0;
}
    80001398:	0005051b          	sext.w	a0,a0
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    800013b4:	00050593          	mv	a1,a0
    register uint64 arg0 asm("a0") = (uint64) SEM_WAIT;
    800013b8:	02300513          	li	a0,35
    register uint64 arg1 asm("a1") = (uint64) id;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
    800013bc:	00000073          	ecall

    return (int) arg0;
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    800013dc:	00050593          	mv	a1,a0
    register uint64 arg0 asm("a0") = (uint64) SEM_SIGNAL;
    800013e0:	02400513          	li	a0,36
    register uint64 arg1 asm("a1") = (uint64) id;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
    800013e4:	00000073          	ecall

    return (int) arg0;
}
    800013e8:	0005051b          	sext.w	a0,a0
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    800013f8:	ff010113          	addi	sp,sp,-16
    800013fc:	00813423          	sd	s0,8(sp)
    80001400:	01010413          	addi	s0,sp,16
    80001404:	00050793          	mv	a5,a0
    80001408:	00058613          	mv	a2,a1
    register uint64 arg0 asm("a0") = (uint64) SEM_WAIT_N;
    8000140c:	02500513          	li	a0,37
    register uint64 arg1 asm("a1") = (uint64) id;
    80001410:	00078593          	mv	a1,a5
    register uint64 arg2 asm("a2") = (uint64) n;
    80001414:	02061613          	slli	a2,a2,0x20
    80001418:	02065613          	srli	a2,a2,0x20
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2) : "memory");
    8000141c:	00000073          	ecall

    return (int) arg0;
}
    80001420:	0005051b          	sext.w	a0,a0
    80001424:	00813403          	ld	s0,8(sp)
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret

0000000080001430 <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    8000143c:	00050793          	mv	a5,a0
    80001440:	00058613          	mv	a2,a1
    register uint64 arg0 asm("a0") = (uint64) SEM_SIGNAL_N;
    80001444:	02600513          	li	a0,38
    register uint64 arg1 asm("a1") = (uint64) id;
    80001448:	00078593          	mv	a1,a5
    register uint64 arg2 asm("a2") = (uint64) n;
    8000144c:	02061613          	slli	a2,a2,0x20
    80001450:	02065613          	srli	a2,a2,0x20
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2) : "memory");
    80001454:	00000073          	ecall

    return (int) arg0;
}
    80001458:	0005051b          	sext.w	a0,a0
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_Z4putcc>:

void putc(char c) {
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00813423          	sd	s0,8(sp)
    80001470:	01010413          	addi	s0,sp,16
    80001474:	00050593          	mv	a1,a0
    register uint64 arg0 asm("a0") = (uint64) PUTC;
    80001478:	04200513          	li	a0,66
    register uint64 arg1 asm("a1") = (uint64) c;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
    8000147c:	00000073          	ecall
}
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_Z4getcv>:

char getc() {
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16
    register uint64 arg0 asm("a0") = (uint64) GETC;
    80001498:	04100513          	li	a0,65
    __asm__ volatile ("ecall" : "+r" (arg0) : : "memory");
    8000149c:	00000073          	ecall

    return (char) arg0;
}
    800014a0:	0ff57513          	andi	a0,a0,255
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    return 0;
    800014bc:	00000513          	li	a0,0
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_ZN4_semC1Ej>:
//

#include "../h/semaphore.hpp"
#include "../h/scheduler.hpp"

_sem::_sem(unsigned int init) : value(init), head(nullptr), tail(nullptr) {}
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00813423          	sd	s0,8(sp)
    800014d4:	01010413          	addi	s0,sp,16
    800014d8:	00b52023          	sw	a1,0(a0) # 1000 <_entry-0x7ffff000>
    800014dc:	00053423          	sd	zero,8(a0)
    800014e0:	00053823          	sd	zero,16(a0)
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_ZN4_semD1Ev>:

_sem::~_sem() {
    800014f0:	fe010113          	addi	sp,sp,-32
    800014f4:	00113c23          	sd	ra,24(sp)
    800014f8:	00813823          	sd	s0,16(sp)
    800014fc:	00913423          	sd	s1,8(sp)
    80001500:	01213023          	sd	s2,0(sp)
    80001504:	02010413          	addi	s0,sp,32
    80001508:	00050913          	mv	s2,a0
    8000150c:	0100006f          	j	8000151c <_ZN4_semD1Ev+0x2c>
    while (head) {
        QueueElem* old = head;
        head = head->next;
        old->thread->setSemError(true);
        old->thread->setBlocked(false);
        if (!old->thread->isFinished()) Scheduler::put(old->thread);
    80001510:	00001097          	auipc	ra,0x1
    80001514:	b14080e7          	jalr	-1260(ra) # 80002024 <_ZN9Scheduler3putEP7_thread>
        delete old;
    80001518:	02049c63          	bnez	s1,80001550 <_ZN4_semD1Ev+0x60>
    while (head) {
    8000151c:	00893483          	ld	s1,8(s2)
    80001520:	04048063          	beqz	s1,80001560 <_ZN4_semD1Ev+0x70>
        head = head->next;
    80001524:	0084b783          	ld	a5,8(s1)
    80001528:	00f93423          	sd	a5,8(s2)
        old->thread->setSemError(true);
    8000152c:	0004b783          	ld	a5,0(s1)

    bool isBlocked() { return blocked; }
    void setBlocked(bool value) { blocked = value; }

    bool isSemError() { return semError; }
    void setSemError(bool value) { semError = value; }
    80001530:	00100713          	li	a4,1
    80001534:	02e78923          	sb	a4,50(a5)
        old->thread->setBlocked(false);
    80001538:	0004b783          	ld	a5,0(s1)
    void setBlocked(bool value) { blocked = value; }
    8000153c:	020788a3          	sb	zero,49(a5)
        if (!old->thread->isFinished()) Scheduler::put(old->thread);
    80001540:	0004b503          	ld	a0,0(s1)
    bool isFinished() { return finished; }
    80001544:	03054783          	lbu	a5,48(a0)
    80001548:	fc0798e3          	bnez	a5,80001518 <_ZN4_semD1Ev+0x28>
    8000154c:	fc5ff06f          	j	80001510 <_ZN4_semD1Ev+0x20>
        delete old;
    80001550:	00048513          	mv	a0,s1
    80001554:	00000097          	auipc	ra,0x0
    80001558:	428080e7          	jalr	1064(ra) # 8000197c <_ZdlPv>
    8000155c:	fc1ff06f          	j	8000151c <_ZN4_semD1Ev+0x2c>
    }
}
    80001560:	01813083          	ld	ra,24(sp)
    80001564:	01013403          	ld	s0,16(sp)
    80001568:	00813483          	ld	s1,8(sp)
    8000156c:	00013903          	ld	s2,0(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret

0000000080001578 <_ZN4_sem6wait_nEi>:

int _sem::wait_n(int n) {
    80001578:	fd010113          	addi	sp,sp,-48
    8000157c:	02113423          	sd	ra,40(sp)
    80001580:	02813023          	sd	s0,32(sp)
    80001584:	00913c23          	sd	s1,24(sp)
    80001588:	01213823          	sd	s2,16(sp)
    8000158c:	01313423          	sd	s3,8(sp)
    80001590:	03010413          	addi	s0,sp,48
    80001594:	00050493          	mv	s1,a0
    80001598:	00058913          	mv	s2,a1
    if (value >= n) {
    8000159c:	00052583          	lw	a1,0(a0)
    800015a0:	0325c663          	blt	a1,s2,800015cc <_ZN4_sem6wait_nEi+0x54>
        value -= n;
    800015a4:	412585bb          	subw	a1,a1,s2
    800015a8:	00b52023          	sw	a1,0(a0)
        return 0;
    800015ac:	00000513          	li	a0,0
    if (oldThread->isSemError()) {
        oldThread->setSemError(false);
        return -1;
    }
    return 0;
}
    800015b0:	02813083          	ld	ra,40(sp)
    800015b4:	02013403          	ld	s0,32(sp)
    800015b8:	01813483          	ld	s1,24(sp)
    800015bc:	01013903          	ld	s2,16(sp)
    800015c0:	00813983          	ld	s3,8(sp)
    800015c4:	03010113          	addi	sp,sp,48
    800015c8:	00008067          	ret
    _thread* oldThread = _thread::runningThread;
    800015cc:	00006797          	auipc	a5,0x6
    800015d0:	de47b783          	ld	a5,-540(a5) # 800073b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800015d4:	0007b983          	ld	s3,0(a5)
    void setBlocked(bool value) { blocked = value; }
    800015d8:	00100793          	li	a5,1
    800015dc:	02f988a3          	sb	a5,49(s3)
    QueueElem* elem = new QueueElem(oldThread, nullptr, n);
    800015e0:	01800513          	li	a0,24
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	348080e7          	jalr	840(ra) # 8000192c <_Znwm>

    struct QueueElem {
        _thread* thread;
        QueueElem* next;
        int tickets;
        QueueElem(_thread* thread, QueueElem* next, int tickets) : thread(thread), next(next), tickets(tickets) {}
    800015ec:	01353023          	sd	s3,0(a0)
    800015f0:	00053423          	sd	zero,8(a0)
    800015f4:	01252823          	sw	s2,16(a0)
    if (tail) tail->next = elem;
    800015f8:	0104b783          	ld	a5,16(s1)
    800015fc:	02078263          	beqz	a5,80001620 <_ZN4_sem6wait_nEi+0xa8>
    80001600:	00a7b423          	sd	a0,8(a5)
    tail = elem;
    80001604:	00a4b823          	sd	a0,16(s1)
    _thread::yield();
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	fe0080e7          	jalr	-32(ra) # 800025e8 <_ZN7_thread5yieldEv>
    bool isSemError() { return semError; }
    80001610:	0329c783          	lbu	a5,50(s3)
    if (oldThread->isSemError()) {
    80001614:	00079a63          	bnez	a5,80001628 <_ZN4_sem6wait_nEi+0xb0>
    return 0;
    80001618:	00000513          	li	a0,0
    8000161c:	f95ff06f          	j	800015b0 <_ZN4_sem6wait_nEi+0x38>
    else head = elem;
    80001620:	00a4b423          	sd	a0,8(s1)
    80001624:	fe1ff06f          	j	80001604 <_ZN4_sem6wait_nEi+0x8c>
    void setSemError(bool value) { semError = value; }
    80001628:	02098923          	sb	zero,50(s3)
        return -1;
    8000162c:	fff00513          	li	a0,-1
    80001630:	f81ff06f          	j	800015b0 <_ZN4_sem6wait_nEi+0x38>

0000000080001634 <_ZN4_sem8signal_nEi>:

int _sem::signal_n(int n) {
    80001634:	fe010113          	addi	sp,sp,-32
    80001638:	00113c23          	sd	ra,24(sp)
    8000163c:	00813823          	sd	s0,16(sp)
    80001640:	00913423          	sd	s1,8(sp)
    80001644:	01213023          	sd	s2,0(sp)
    80001648:	02010413          	addi	s0,sp,32
    8000164c:	00050913          	mv	s2,a0
    value += n;
    80001650:	00052783          	lw	a5,0(a0)
    80001654:	00b787bb          	addw	a5,a5,a1
    80001658:	00f52023          	sw	a5,0(a0)
    8000165c:	0200006f          	j	8000167c <_ZN4_sem8signal_nEi+0x48>
    while (head != nullptr && value >= head->tickets) {
        value -= head->tickets;

        QueueElem* old = head;
        head = head->next;
        if (!head) tail = nullptr;
    80001660:	00093823          	sd	zero,16(s2)

        old->thread->setBlocked(false);
    80001664:	0004b783          	ld	a5,0(s1)
    void setBlocked(bool value) { blocked = value; }
    80001668:	020788a3          	sb	zero,49(a5)
        Scheduler::put(old->thread);
    8000166c:	0004b503          	ld	a0,0(s1)
    80001670:	00001097          	auipc	ra,0x1
    80001674:	9b4080e7          	jalr	-1612(ra) # 80002024 <_ZN9Scheduler3putEP7_thread>
        delete old;
    80001678:	02049863          	bnez	s1,800016a8 <_ZN4_sem8signal_nEi+0x74>
    while (head != nullptr && value >= head->tickets) {
    8000167c:	00893483          	ld	s1,8(s2)
    80001680:	02048c63          	beqz	s1,800016b8 <_ZN4_sem8signal_nEi+0x84>
    80001684:	00092783          	lw	a5,0(s2)
    80001688:	0104a703          	lw	a4,16(s1)
    8000168c:	02e7c663          	blt	a5,a4,800016b8 <_ZN4_sem8signal_nEi+0x84>
        value -= head->tickets;
    80001690:	40e787bb          	subw	a5,a5,a4
    80001694:	00f92023          	sw	a5,0(s2)
        head = head->next;
    80001698:	0084b783          	ld	a5,8(s1)
    8000169c:	00f93423          	sd	a5,8(s2)
        if (!head) tail = nullptr;
    800016a0:	fc0792e3          	bnez	a5,80001664 <_ZN4_sem8signal_nEi+0x30>
    800016a4:	fbdff06f          	j	80001660 <_ZN4_sem8signal_nEi+0x2c>
        delete old;
    800016a8:	00048513          	mv	a0,s1
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	2d0080e7          	jalr	720(ra) # 8000197c <_ZdlPv>
    800016b4:	fc9ff06f          	j	8000167c <_ZN4_sem8signal_nEi+0x48>
    }

    return 0;
}
    800016b8:	00000513          	li	a0,0
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	00813483          	ld	s1,8(sp)
    800016c8:	00013903          	ld	s2,0(sp)
    800016cc:	02010113          	addi	sp,sp,32
    800016d0:	00008067          	ret

00000000800016d4 <_ZN4_sem4waitEv>:

int _sem::wait() {
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00113423          	sd	ra,8(sp)
    800016dc:	00813023          	sd	s0,0(sp)
    800016e0:	01010413          	addi	s0,sp,16
    return wait_n(1);
    800016e4:	00100593          	li	a1,1
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	e90080e7          	jalr	-368(ra) # 80001578 <_ZN4_sem6wait_nEi>
}
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN4_sem6signalEv>:

int _sem::signal() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00113423          	sd	ra,8(sp)
    80001708:	00813023          	sd	s0,0(sp)
    8000170c:	01010413          	addi	s0,sp,16
    return signal_n(1);
    80001710:	00100593          	li	a1,1
    80001714:	00000097          	auipc	ra,0x0
    80001718:	f20080e7          	jalr	-224(ra) # 80001634 <_ZN4_sem8signal_nEi>
}
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret

000000008000172c <_Z15userMainWrapperPv>:
#include "../h/semaphore.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

void userMainWrapper(void* arg) {
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050493          	mv	s1,a0
    userMain();
    80001744:	00001097          	auipc	ra,0x1
    80001748:	1c4080e7          	jalr	452(ra) # 80002908 <_Z8userMainv>
    sem_t userSem = (sem_t) arg;
    userSem->signal();
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	fb0080e7          	jalr	-80(ra) # 80001700 <_ZN4_sem6signalEv>
}
    80001758:	01813083          	ld	ra,24(sp)
    8000175c:	01013403          	ld	s0,16(sp)
    80001760:	00813483          	ld	s1,8(sp)
    80001764:	02010113          	addi	sp,sp,32
    80001768:	00008067          	ret

000000008000176c <main>:

int main() {
    8000176c:	fd010113          	addi	sp,sp,-48
    80001770:	02113423          	sd	ra,40(sp)
    80001774:	02813023          	sd	s0,32(sp)
    80001778:	00913c23          	sd	s1,24(sp)
    8000177c:	01213823          	sd	s2,16(sp)
    80001780:	03010413          	addi	s0,sp,48
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001784:	00006797          	auipc	a5,0x6
    80001788:	c247b783          	ld	a5,-988(a5) # 800073a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000178c:	10579073          	csrw	stvec,a5

    thread_t mainThread = new _thread();
    80001790:	04000513          	li	a0,64
    80001794:	00000097          	auipc	ra,0x0
    80001798:	198080e7          	jalr	408(ra) # 8000192c <_Znwm>
    8000179c:	00050493          	mv	s1,a0
    800017a0:	00001097          	auipc	ra,0x1
    800017a4:	c94080e7          	jalr	-876(ra) # 80002434 <_ZN7_threadC1Ev>
    _thread::runningThread = mainThread;
    800017a8:	00006797          	auipc	a5,0x6
    800017ac:	c087b783          	ld	a5,-1016(a5) # 800073b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017b0:	0097b023          	sd	s1,0(a5)

    _printString("Main thread created!\n");
    800017b4:	00005517          	auipc	a0,0x5
    800017b8:	86c50513          	addi	a0,a0,-1940 # 80006020 <CONSOLE_STATUS+0x10>
    800017bc:	00001097          	auipc	ra,0x1
    800017c0:	a9c080e7          	jalr	-1380(ra) # 80002258 <_Z12_printStringPKc>

    _printString("Creating userMain thread...\n");
    800017c4:	00005517          	auipc	a0,0x5
    800017c8:	87450513          	addi	a0,a0,-1932 # 80006038 <CONSOLE_STATUS+0x28>
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	a8c080e7          	jalr	-1396(ra) # 80002258 <_Z12_printStringPKc>
    thread_t user = nullptr;
    800017d4:	fc043c23          	sd	zero,-40(s0)
    sem_t userSem = new _sem(0);
    800017d8:	01800513          	li	a0,24
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	150080e7          	jalr	336(ra) # 8000192c <_Znwm>
    800017e4:	00050493          	mv	s1,a0
    800017e8:	00000593          	li	a1,0
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	ce0080e7          	jalr	-800(ra) # 800014cc <_ZN4_semC1Ej>
    800017f4:	03c0006f          	j	80001830 <main+0xc4>
    800017f8:	00050913          	mv	s2,a0
    thread_t mainThread = new _thread();
    800017fc:	00048513          	mv	a0,s1
    80001800:	00000097          	auipc	ra,0x0
    80001804:	17c080e7          	jalr	380(ra) # 8000197c <_ZdlPv>
    80001808:	00090513          	mv	a0,s2
    8000180c:	00007097          	auipc	ra,0x7
    80001810:	d2c080e7          	jalr	-724(ra) # 80008538 <_Unwind_Resume>
    80001814:	00050913          	mv	s2,a0
    sem_t userSem = new _sem(0);
    80001818:	00048513          	mv	a0,s1
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	160080e7          	jalr	352(ra) # 8000197c <_ZdlPv>
    80001824:	00090513          	mv	a0,s2
    80001828:	00007097          	auipc	ra,0x7
    8000182c:	d10080e7          	jalr	-752(ra) # 80008538 <_Unwind_Resume>
    thread_create(&user, userMainWrapper, (void*) userSem);
    80001830:	00200693          	li	a3,2
    80001834:	00048613          	mv	a2,s1
    80001838:	00000597          	auipc	a1,0x0
    8000183c:	ef458593          	addi	a1,a1,-268 # 8000172c <_Z15userMainWrapperPv>
    80001840:	fd840513          	addi	a0,s0,-40
    80001844:	00000097          	auipc	ra,0x0
    80001848:	a34080e7          	jalr	-1484(ra) # 80001278 <_Z13thread_createPP7_threadPFvPvES2_14ThreadPriority>
    _printString("userMain created! Sleeping...\n");
    8000184c:	00005517          	auipc	a0,0x5
    80001850:	80c50513          	addi	a0,a0,-2036 # 80006058 <CONSOLE_STATUS+0x48>
    80001854:	00001097          	auipc	ra,0x1
    80001858:	a04080e7          	jalr	-1532(ra) # 80002258 <_Z12_printStringPKc>
    userSem->wait();
    8000185c:	00048513          	mv	a0,s1
    80001860:	00000097          	auipc	ra,0x0
    80001864:	e74080e7          	jalr	-396(ra) # 800016d4 <_ZN4_sem4waitEv>

    _printString("userMain done! Shutting down...\n");
    80001868:	00005517          	auipc	a0,0x5
    8000186c:	81050513          	addi	a0,a0,-2032 # 80006078 <CONSOLE_STATUS+0x68>
    80001870:	00001097          	auipc	ra,0x1
    80001874:	9e8080e7          	jalr	-1560(ra) # 80002258 <_Z12_printStringPKc>
    return 0;
    80001878:	00000513          	li	a0,0
    8000187c:	02813083          	ld	ra,40(sp)
    80001880:	02013403          	ld	s0,32(sp)
    80001884:	01813483          	ld	s1,24(sp)
    80001888:	01013903          	ld	s2,16(sp)
    8000188c:	03010113          	addi	sp,sp,48
    80001890:	00008067          	ret

0000000080001894 <_ZN6ThreadD1Ev>:
    this->body = body;
    this->arg = arg;
    this->myPriority = priority;
}

Thread::~Thread() {}
    80001894:	ff010113          	addi	sp,sp,-16
    80001898:	00813423          	sd	s0,8(sp)
    8000189c:	01010413          	addi	s0,sp,16
    800018a0:	00813403          	ld	s0,8(sp)
    800018a4:	01010113          	addi	sp,sp,16
    800018a8:	00008067          	ret

00000000800018ac <_ZN6Thread7wrapperEPv>:
    this->body = nullptr;
    this->arg = nullptr;
    this->myPriority = priority;
}

void Thread::wrapper(void *arg) {
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00113423          	sd	ra,8(sp)
    800018b4:	00813023          	sd	s0,0(sp)
    800018b8:	01010413          	addi	s0,sp,16
    Thread* thread = (Thread*) arg;
    if (thread->body) thread->body(thread->arg);
    800018bc:	01853783          	ld	a5,24(a0)
    800018c0:	00078e63          	beqz	a5,800018dc <_ZN6Thread7wrapperEPv+0x30>
    800018c4:	02053503          	ld	a0,32(a0)
    800018c8:	000780e7          	jalr	a5
    else thread->run();
}
    800018cc:	00813083          	ld	ra,8(sp)
    800018d0:	00013403          	ld	s0,0(sp)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret
    else thread->run();
    800018dc:	00053783          	ld	a5,0(a0)
    800018e0:	0107b783          	ld	a5,16(a5)
    800018e4:	000780e7          	jalr	a5
}
    800018e8:	fe5ff06f          	j	800018cc <_ZN6Thread7wrapperEPv+0x20>

00000000800018ec <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800018ec:	00006797          	auipc	a5,0x6
    800018f0:	a2478793          	addi	a5,a5,-1500 # 80007310 <_ZTV9Semaphore+0x10>
    800018f4:	00f53023          	sd	a5,0(a0)
    if (!myHandle) return;
    800018f8:	00853503          	ld	a0,8(a0)
    800018fc:	02050663          	beqz	a0,80001928 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00113423          	sd	ra,8(sp)
    80001908:	00813023          	sd	s0,0(sp)
    8000190c:	01010413          	addi	s0,sp,16
    sem_close(myHandle);
    80001910:	00000097          	auipc	ra,0x0
    80001914:	a70080e7          	jalr	-1424(ra) # 80001380 <_Z9sem_closeP4_sem>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret
    80001928:	00008067          	ret

000000008000192c <_Znwm>:
void* operator new (size_t size) {
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	8f0080e7          	jalr	-1808(ra) # 8000122c <_Z9mem_allocm>
}
    80001944:	00813083          	ld	ra,8(sp)
    80001948:	00013403          	ld	s0,0(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_Znam>:
void* operator new[] (size_t size) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001964:	00000097          	auipc	ra,0x0
    80001968:	8c8080e7          	jalr	-1848(ra) # 8000122c <_Z9mem_allocm>
}
    8000196c:	00813083          	ld	ra,8(sp)
    80001970:	00013403          	ld	s0,0(sp)
    80001974:	01010113          	addi	sp,sp,16
    80001978:	00008067          	ret

000000008000197c <_ZdlPv>:
void operator delete (void* ptr) {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00113423          	sd	ra,8(sp)
    80001984:	00813023          	sd	s0,0(sp)
    80001988:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	8c4080e7          	jalr	-1852(ra) # 80001250 <_Z8mem_freePv>
}
    80001994:	00813083          	ld	ra,8(sp)
    80001998:	00013403          	ld	s0,0(sp)
    8000199c:	01010113          	addi	sp,sp,16
    800019a0:	00008067          	ret

00000000800019a4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00113423          	sd	ra,8(sp)
    800019ac:	00813023          	sd	s0,0(sp)
    800019b0:	01010413          	addi	s0,sp,16
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	fc8080e7          	jalr	-56(ra) # 8000197c <_ZdlPv>
    800019bc:	00813083          	ld	ra,8(sp)
    800019c0:	00013403          	ld	s0,0(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret

00000000800019cc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800019cc:	fe010113          	addi	sp,sp,-32
    800019d0:	00113c23          	sd	ra,24(sp)
    800019d4:	00813823          	sd	s0,16(sp)
    800019d8:	00913423          	sd	s1,8(sp)
    800019dc:	02010413          	addi	s0,sp,32
    800019e0:	00050493          	mv	s1,a0
}
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	f08080e7          	jalr	-248(ra) # 800018ec <_ZN9SemaphoreD1Ev>
    800019ec:	00048513          	mv	a0,s1
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	f8c080e7          	jalr	-116(ra) # 8000197c <_ZdlPv>
    800019f8:	01813083          	ld	ra,24(sp)
    800019fc:	01013403          	ld	s0,16(sp)
    80001a00:	00813483          	ld	s1,8(sp)
    80001a04:	02010113          	addi	sp,sp,32
    80001a08:	00008067          	ret

0000000080001a0c <_ZdaPv>:
void operator delete[] (void* ptr) {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00113423          	sd	ra,8(sp)
    80001a14:	00813023          	sd	s0,0(sp)
    80001a18:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	834080e7          	jalr	-1996(ra) # 80001250 <_Z8mem_freePv>
}
    80001a24:	00813083          	ld	ra,8(sp)
    80001a28:	00013403          	ld	s0,0(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <_ZN6ThreadC1EPFvPvES0_14ThreadPriority>:
Thread::Thread(void (*body)(void *), void *arg, ThreadPriority priority) {
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00813423          	sd	s0,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	00006797          	auipc	a5,0x6
    80001a44:	8a878793          	addi	a5,a5,-1880 # 800072e8 <_ZTV6Thread+0x10>
    80001a48:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80001a4c:	00053423          	sd	zero,8(a0)
    this->body = body;
    80001a50:	00b53c23          	sd	a1,24(a0)
    this->arg = arg;
    80001a54:	02c53023          	sd	a2,32(a0)
    this->myPriority = priority;
    80001a58:	00d52823          	sw	a3,16(a0)
}
    80001a5c:	00813403          	ld	s0,8(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <_ZN6ThreadC1E14ThreadPriority>:
Thread::Thread(ThreadPriority priority) {
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00813423          	sd	s0,8(sp)
    80001a70:	01010413          	addi	s0,sp,16
    80001a74:	00006797          	auipc	a5,0x6
    80001a78:	87478793          	addi	a5,a5,-1932 # 800072e8 <_ZTV6Thread+0x10>
    80001a7c:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80001a80:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80001a84:	00053c23          	sd	zero,24(a0)
    this->arg = nullptr;
    80001a88:	02053023          	sd	zero,32(a0)
    this->myPriority = priority;
    80001a8c:	00b52823          	sw	a1,16(a0)
}
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <_ZN6Thread5startEv>:
int Thread::start() {
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00113423          	sd	ra,8(sp)
    80001aa4:	00813023          	sd	s0,0(sp)
    80001aa8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, wrapper, this, myPriority);
    80001aac:	01052683          	lw	a3,16(a0)
    80001ab0:	00050613          	mv	a2,a0
    80001ab4:	00000597          	auipc	a1,0x0
    80001ab8:	df858593          	addi	a1,a1,-520 # 800018ac <_ZN6Thread7wrapperEPv>
    80001abc:	00850513          	addi	a0,a0,8
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	7b8080e7          	jalr	1976(ra) # 80001278 <_Z13thread_createPP7_threadPFvPvES2_14ThreadPriority>
}
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	840080e7          	jalr	-1984(ra) # 80001328 <_Z15thread_dispatchv>
}
    80001af0:	00813083          	ld	ra,8(sp)
    80001af4:	00013403          	ld	s0,0(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00813423          	sd	s0,8(sp)
    80001b08:	01010413          	addi	s0,sp,16
}
    80001b0c:	00000513          	li	a0,0
    80001b10:	00813403          	ld	s0,8(sp)
    80001b14:	01010113          	addi	sp,sp,16
    80001b18:	00008067          	ret

0000000080001b1c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
    80001b2c:	00005797          	auipc	a5,0x5
    80001b30:	7e478793          	addi	a5,a5,2020 # 80007310 <_ZTV9Semaphore+0x10>
    80001b34:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001b38:	00850513          	addi	a0,a0,8
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	80c080e7          	jalr	-2036(ra) # 80001348 <_Z8sem_openPP4_semj>
}
    80001b44:	00813083          	ld	ra,8(sp)
    80001b48:	00013403          	ld	s0,0(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret

0000000080001b54 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00113423          	sd	ra,8(sp)
    80001b5c:	00813023          	sd	s0,0(sp)
    80001b60:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001b64:	00853503          	ld	a0,8(a0)
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	840080e7          	jalr	-1984(ra) # 800013a8 <_Z8sem_waitP4_sem>
}
    80001b70:	00813083          	ld	ra,8(sp)
    80001b74:	00013403          	ld	s0,0(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00113423          	sd	ra,8(sp)
    80001b88:	00813023          	sd	s0,0(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001b90:	00853503          	ld	a0,8(a0)
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	83c080e7          	jalr	-1988(ra) # 800013d0 <_Z10sem_signalP4_sem>
}
    80001b9c:	00813083          	ld	ra,8(sp)
    80001ba0:	00013403          	ld	s0,0(sp)
    80001ba4:	01010113          	addi	sp,sp,16
    80001ba8:	00008067          	ret

0000000080001bac <_ZN7Console4getcEv>:

char Console::getc() {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00113423          	sd	ra,8(sp)
    80001bb4:	00813023          	sd	s0,0(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    return ::getc();
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	8d0080e7          	jalr	-1840(ra) # 8000148c <_Z4getcv>
}
    80001bc4:	00813083          	ld	ra,8(sp)
    80001bc8:	00013403          	ld	s0,0(sp)
    80001bcc:	01010113          	addi	sp,sp,16
    80001bd0:	00008067          	ret

0000000080001bd4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00113423          	sd	ra,8(sp)
    80001bdc:	00813023          	sd	s0,0(sp)
    80001be0:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	884080e7          	jalr	-1916(ra) # 80001468 <_Z4putcc>
}
    80001bec:	00813083          	ld	ra,8(sp)
    80001bf0:	00013403          	ld	s0,0(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread (ThreadPriority priority = LOW_PRIORITY);
    virtual void run () {}
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00813423          	sd	s0,8(sp)
    80001c04:	01010413          	addi	s0,sp,16
    80001c08:	00813403          	ld	s0,8(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/semaphore.hpp"
#include "../h/print.hpp"
#include "../h/threadPriority.hpp"

void Riscv::popSppSpie() {
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00813423          	sd	s0,8(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001c20:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001c24:	10200073          	sret
}
    80001c28:	00813403          	ld	s0,8(sp)
    80001c2c:	01010113          	addi	sp,sp,16
    80001c30:	00008067          	ret

0000000080001c34 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001c34:	f3010113          	addi	sp,sp,-208
    80001c38:	0c113423          	sd	ra,200(sp)
    80001c3c:	0c813023          	sd	s0,192(sp)
    80001c40:	0a913c23          	sd	s1,184(sp)
    80001c44:	0b213823          	sd	s2,176(sp)
    80001c48:	0b313423          	sd	s3,168(sp)
    80001c4c:	0d010413          	addi	s0,sp,208
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c50:	142027f3          	csrr	a5,scause
    80001c54:	f4f43c23          	sd	a5,-168(s0)
    return scause;
    80001c58:	f5843483          	ld	s1,-168(s0)
    uint64 scause = r_scause();

    if (scause == ECALL_USER_MODE || scause == ECALL_SYSTEM_MODE) {
    80001c5c:	ff848713          	addi	a4,s1,-8
    80001c60:	00100793          	li	a5,1
    80001c64:	04e7fa63          	bgeu	a5,a4,80001cb8 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
        }
        w_gpr(A0, ret);
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == SOFTWARE_INTERRUPT) {
    80001c68:	fff00793          	li	a5,-1
    80001c6c:	03f79793          	slli	a5,a5,0x3f
    80001c70:	00178793          	addi	a5,a5,1
    80001c74:	32f48663          	beq	s1,a5,80001fa0 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXTERNAL_INTERRUPT) {
    80001c78:	fff00793          	li	a5,-1
    80001c7c:	03f79793          	slli	a5,a5,0x3f
    80001c80:	00978793          	addi	a5,a5,9
    80001c84:	32f48463          	beq	s1,a5,80001fac <_ZN5Riscv20handleSupervisorTrapEv+0x378>
        console_handler();
    }
    else {
        _printString("Error: Unknown interrupt! scause: ");
    80001c88:	00004517          	auipc	a0,0x4
    80001c8c:	41850513          	addi	a0,a0,1048 # 800060a0 <CONSOLE_STATUS+0x90>
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	5c8080e7          	jalr	1480(ra) # 80002258 <_Z12_printStringPKc>
        _printHex(scause);
    80001c98:	00048513          	mv	a0,s1
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	6ac080e7          	jalr	1708(ra) # 80002348 <_Z9_printHexm>
        _printString("\n");
    80001ca4:	00004517          	auipc	a0,0x4
    80001ca8:	5fc50513          	addi	a0,a0,1532 # 800062a0 <CONSOLE_STATUS+0x290>
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	5ac080e7          	jalr	1452(ra) # 80002258 <_Z12_printStringPKc>
        while (1) {}
    80001cb4:	0000006f          	j	80001cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cb8:	141027f3          	csrr	a5,sepc
    80001cbc:	f6f43423          	sd	a5,-152(s0)
    return sepc;
    80001cc0:	f6843783          	ld	a5,-152(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001cc4:	00478793          	addi	a5,a5,4
    80001cc8:	f4f43423          	sd	a5,-184(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ccc:	100027f3          	csrr	a5,sstatus
    80001cd0:	f6f43023          	sd	a5,-160(s0)
    return sstatus;
    80001cd4:	f6043783          	ld	a5,-160(s0)
        uint64 volatile sstatus = r_sstatus();
    80001cd8:	f4f43823          	sd	a5,-176(s0)

template <typename T>
inline T Riscv::r_gpr(uint64 reg)
{
    T volatile ret;
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001cdc:	05043783          	ld	a5,80(s0)
    80001ce0:	f2f42a23          	sw	a5,-204(s0)
    return ret;
    80001ce4:	f3442783          	lw	a5,-204(s0)
    80001ce8:	0007879b          	sext.w	a5,a5
        switch (syscall) {
    80001cec:	04200713          	li	a4,66
    80001cf0:	22f76a63          	bltu	a4,a5,80001f24 <_ZN5Riscv20handleSupervisorTrapEv+0x2f0>
    80001cf4:	00279793          	slli	a5,a5,0x2
    80001cf8:	00004717          	auipc	a4,0x4
    80001cfc:	3cc70713          	addi	a4,a4,972 # 800060c4 <CONSOLE_STATUS+0xb4>
    80001d00:	00e787b3          	add	a5,a5,a4
    80001d04:	0007a783          	lw	a5,0(a5)
    80001d08:	00e787b3          	add	a5,a5,a4
    80001d0c:	00078067          	jr	a5
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d10:	05843783          	ld	a5,88(s0)
    80001d14:	f6f43823          	sd	a5,-144(s0)
    return ret;
    80001d18:	f7043503          	ld	a0,-144(s0)
                void* ptr = MemoryAllocator::mem_alloc(size);
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	964080e7          	jalr	-1692(ra) # 80002680 <_ZN15MemoryAllocator9mem_allocEm>
    80001d24:	00050793          	mv	a5,a0
                break;
    80001d28:	2000006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d2c:	05843783          	ld	a5,88(s0)
    80001d30:	f6f43c23          	sd	a5,-136(s0)
    return ret;
    80001d34:	f7843503          	ld	a0,-136(s0)
                ret = MemoryAllocator::mem_free(ptr);
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	a1c080e7          	jalr	-1508(ra) # 80002754 <_ZN15MemoryAllocator8mem_freeEPv>
    80001d40:	00050793          	mv	a5,a0
                break;
    80001d44:	1e40006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d48:	05843783          	ld	a5,88(s0)
    80001d4c:	f8f43c23          	sd	a5,-104(s0)
    return ret;
    80001d50:	f9843483          	ld	s1,-104(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d54:	06043783          	ld	a5,96(s0)
    80001d58:	f8f43823          	sd	a5,-112(s0)
    return ret;
    80001d5c:	f9043503          	ld	a0,-112(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d60:	06843783          	ld	a5,104(s0)
    80001d64:	f8f43423          	sd	a5,-120(s0)
    return ret;
    80001d68:	f8843583          	ld	a1,-120(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d6c:	07043783          	ld	a5,112(s0)
    80001d70:	f8f43023          	sd	a5,-128(s0)
    return ret;
    80001d74:	f8043603          	ld	a2,-128(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001d78:	07843783          	ld	a5,120(s0)
    80001d7c:	f2f42c23          	sw	a5,-200(s0)
    return ret;
    80001d80:	f3842683          	lw	a3,-200(s0)
                thread_t newThread = _thread::createThread(start_routine, arg, stack_space, priority);
    80001d84:	0006869b          	sext.w	a3,a3
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	760080e7          	jalr	1888(ra) # 800024e8 <_ZN7_thread12createThreadEPFvPvES0_S0_14ThreadPriority>
                if (!newThread) {
    80001d90:	1c050463          	beqz	a0,80001f58 <_ZN5Riscv20handleSupervisorTrapEv+0x324>
                if (handle) *handle = newThread;
    80001d94:	1c048663          	beqz	s1,80001f60 <_ZN5Riscv20handleSupervisorTrapEv+0x32c>
    80001d98:	00a4b023          	sd	a0,0(s1)
        uint64 ret = OK;
    80001d9c:	00000793          	li	a5,0
    80001da0:	1880006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                _thread::runningThread->setFinished(true);
    80001da4:	00005797          	auipc	a5,0x5
    80001da8:	60c7b783          	ld	a5,1548(a5) # 800073b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001dac:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001db0:	00100713          	li	a4,1
    80001db4:	02e78823          	sb	a4,48(a5)
                _thread::yield();
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	830080e7          	jalr	-2000(ra) # 800025e8 <_ZN7_thread5yieldEv>
        uint64 ret = OK;
    80001dc0:	00000793          	li	a5,0
                break;
    80001dc4:	1640006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                _thread::dispatch();
    80001dc8:	00000097          	auipc	ra,0x0
    80001dcc:	7b0080e7          	jalr	1968(ra) # 80002578 <_ZN7_thread8dispatchEv>
        uint64 ret = OK;
    80001dd0:	00000793          	li	a5,0
                break;
    80001dd4:	1540006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001dd8:	05843783          	ld	a5,88(s0)
    80001ddc:	faf43023          	sd	a5,-96(s0)
    return ret;
    80001de0:	fa043903          	ld	s2,-96(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001de4:	06043783          	ld	a5,96(s0)
    80001de8:	f2f42e23          	sw	a5,-196(s0)
    return ret;
    80001dec:	f3c42783          	lw	a5,-196(s0)
    80001df0:	0007899b          	sext.w	s3,a5
                _sem* newSem = new _sem(init);
    80001df4:	01800513          	li	a0,24
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	b34080e7          	jalr	-1228(ra) # 8000192c <_Znwm>
    80001e00:	00050493          	mv	s1,a0
    80001e04:	00098593          	mv	a1,s3
    80001e08:	fffff097          	auipc	ra,0xfffff
    80001e0c:	6c4080e7          	jalr	1732(ra) # 800014cc <_ZN4_semC1Ej>
                if (!newSem) {
    80001e10:	14048c63          	beqz	s1,80001f68 <_ZN5Riscv20handleSupervisorTrapEv+0x334>
                if (handle) *handle = newSem;
    80001e14:	14090e63          	beqz	s2,80001f70 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
    80001e18:	00993023          	sd	s1,0(s2)
        uint64 ret = OK;
    80001e1c:	00000793          	li	a5,0
    80001e20:	1080006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001e24:	05843783          	ld	a5,88(s0)
    80001e28:	faf43423          	sd	a5,-88(s0)
    return ret;
    80001e2c:	fa843483          	ld	s1,-88(s0)
                if (handle) delete handle;
    80001e30:	14048463          	beqz	s1,80001f78 <_ZN5Riscv20handleSupervisorTrapEv+0x344>
    80001e34:	00048513          	mv	a0,s1
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	6b8080e7          	jalr	1720(ra) # 800014f0 <_ZN4_semD1Ev>
    80001e40:	00048513          	mv	a0,s1
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	b38080e7          	jalr	-1224(ra) # 8000197c <_ZdlPv>
        uint64 ret = OK;
    80001e4c:	00000793          	li	a5,0
    80001e50:	0d80006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001e54:	05843783          	ld	a5,88(s0)
    80001e58:	faf43823          	sd	a5,-80(s0)
    return ret;
    80001e5c:	fb043503          	ld	a0,-80(s0)
                if (handle) ret = handle->wait();
    80001e60:	12050063          	beqz	a0,80001f80 <_ZN5Riscv20handleSupervisorTrapEv+0x34c>
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	870080e7          	jalr	-1936(ra) # 800016d4 <_ZN4_sem4waitEv>
    80001e6c:	00050793          	mv	a5,a0
    80001e70:	0b80006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001e74:	05843783          	ld	a5,88(s0)
    80001e78:	faf43c23          	sd	a5,-72(s0)
    return ret;
    80001e7c:	fb843503          	ld	a0,-72(s0)
                if (handle) ret = handle->signal();
    80001e80:	10050463          	beqz	a0,80001f88 <_ZN5Riscv20handleSupervisorTrapEv+0x354>
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	87c080e7          	jalr	-1924(ra) # 80001700 <_ZN4_sem6signalEv>
    80001e8c:	00050793          	mv	a5,a0
    80001e90:	0980006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001e94:	05843783          	ld	a5,88(s0)
    80001e98:	fcf43023          	sd	a5,-64(s0)
    return ret;
    80001e9c:	fc043503          	ld	a0,-64(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001ea0:	06043783          	ld	a5,96(s0)
    80001ea4:	f4f42023          	sw	a5,-192(s0)
    return ret;
    80001ea8:	f4042583          	lw	a1,-192(s0)
    80001eac:	0005859b          	sext.w	a1,a1
                if (handle) ret = handle->wait_n(n);
    80001eb0:	0e050063          	beqz	a0,80001f90 <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	6c4080e7          	jalr	1732(ra) # 80001578 <_ZN4_sem6wait_nEi>
    80001ebc:	00050793          	mv	a5,a0
    80001ec0:	0680006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001ec4:	05843783          	ld	a5,88(s0)
    80001ec8:	fcf43423          	sd	a5,-56(s0)
    return ret;
    80001ecc:	fc843503          	ld	a0,-56(s0)
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001ed0:	06043783          	ld	a5,96(s0)
    80001ed4:	f4f42223          	sw	a5,-188(s0)
    return ret;
    80001ed8:	f4442583          	lw	a1,-188(s0)
    80001edc:	0005859b          	sext.w	a1,a1
                if (handle) ret = handle->signal_n(n);
    80001ee0:	0a050c63          	beqz	a0,80001f98 <_ZN5Riscv20handleSupervisorTrapEv+0x364>
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	750080e7          	jalr	1872(ra) # 80001634 <_ZN4_sem8signal_nEi>
    80001eec:	00050793          	mv	a5,a0
    80001ef0:	0380006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                ret = __getc();
    80001ef4:	00003097          	auipc	ra,0x3
    80001ef8:	114080e7          	jalr	276(ra) # 80005008 <__getc>
    80001efc:	00050793          	mv	a5,a0
                break;
    80001f00:	0280006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("ld %[ret], %[reg]*8(fp)" : [ret] "=r"(ret) : [reg] "i"(reg));
    80001f04:	05843783          	ld	a5,88(s0)
    80001f08:	f2f409a3          	sb	a5,-205(s0)
    return ret;
    80001f0c:	f3344503          	lbu	a0,-205(s0)
                __putc(c);
    80001f10:	0ff57513          	andi	a0,a0,255
    80001f14:	00003097          	auipc	ra,0x3
    80001f18:	0b8080e7          	jalr	184(ra) # 80004fcc <__putc>
        uint64 ret = OK;
    80001f1c:	00000793          	li	a5,0
                break;
    80001f20:	0080006f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    80001f24:	00000793          	li	a5,0
}

template <typename T>
inline void Riscv::w_gpr(uint64 reg, T val)
{
    __asm__ volatile ("sd %[val], %[reg]*8(fp)" : : [val] "r"(val), [reg] "i"(reg));
    80001f28:	04f43823          	sd	a5,80(s0)
        w_sstatus(sstatus);
    80001f2c:	f5043783          	ld	a5,-176(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f30:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001f34:	f4843783          	ld	a5,-184(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f38:	14179073          	csrw	sepc,a5
    }
}
    80001f3c:	0c813083          	ld	ra,200(sp)
    80001f40:	0c013403          	ld	s0,192(sp)
    80001f44:	0b813483          	ld	s1,184(sp)
    80001f48:	0b013903          	ld	s2,176(sp)
    80001f4c:	0a813983          	ld	s3,168(sp)
    80001f50:	0d010113          	addi	sp,sp,208
    80001f54:	00008067          	ret
                    ret = NO_MEMORY_AVAILABLE;
    80001f58:	ffe00793          	li	a5,-2
    80001f5c:	fcdff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
        uint64 ret = OK;
    80001f60:	00000793          	li	a5,0
    80001f64:	fc5ff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                    ret = NO_MEMORY_AVAILABLE;
    80001f68:	ffe00793          	li	a5,-2
    80001f6c:	fbdff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
        uint64 ret = OK;
    80001f70:	00000793          	li	a5,0
    80001f74:	fb5ff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                else ret = INVALID_ARGUMENTS;
    80001f78:	fff00793          	li	a5,-1
    80001f7c:	fadff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                else ret = INVALID_ARGUMENTS;
    80001f80:	fff00793          	li	a5,-1
    80001f84:	fa5ff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                else ret = INVALID_ARGUMENTS;
    80001f88:	fff00793          	li	a5,-1
    80001f8c:	f9dff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                else ret = INVALID_ARGUMENTS;
    80001f90:	fff00793          	li	a5,-1
    80001f94:	f95ff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
                else ret = INVALID_ARGUMENTS;
    80001f98:	fff00793          	li	a5,-1
    80001f9c:	f8dff06f          	j	80001f28 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001fa0:	00200793          	li	a5,2
    80001fa4:	1447b073          	csrc	sip,a5
}
    80001fa8:	f95ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x308>
        console_handler();
    80001fac:	00003097          	auipc	ra,0x3
    80001fb0:	094080e7          	jalr	148(ra) # 80005040 <console_handler>
    80001fb4:	f89ff06f          	j	80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x308>
    80001fb8:	00050913          	mv	s2,a0
                _sem* newSem = new _sem(init);
    80001fbc:	00048513          	mv	a0,s1
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	9bc080e7          	jalr	-1604(ra) # 8000197c <_ZdlPv>
    80001fc8:	00090513          	mv	a0,s2
    80001fcc:	00006097          	auipc	ra,0x6
    80001fd0:	56c080e7          	jalr	1388(ra) # 80008538 <_Unwind_Resume>

0000000080001fd4 <_Z41__static_initialization_and_destruction_0ii>:
_thread* Scheduler::get() {
    //return highPriorityQueue.removeFirst();
    if (!highPriorityQueue.empty()) return highPriorityQueue.removeFirst();
    if (!mediumPriorityQueue.empty()) return mediumPriorityQueue.removeFirst();
    return lowPriorityQueue.removeFirst();
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00813423          	sd	s0,8(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    80001fe0:	00100793          	li	a5,1
    80001fe4:	00f50863          	beq	a0,a5,80001ff4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret
    80001ff4:	000107b7          	lui	a5,0x10
    80001ff8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ffc:	fef596e3          	bne	a1,a5,80001fe8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002000:	00005797          	auipc	a5,0x5
    80002004:	41078793          	addi	a5,a5,1040 # 80007410 <_ZN9Scheduler17highPriorityQueueE>
    80002008:	0007b023          	sd	zero,0(a5)
    8000200c:	0007b423          	sd	zero,8(a5)
    80002010:	0007b823          	sd	zero,16(a5)
    80002014:	0007bc23          	sd	zero,24(a5)
    80002018:	0207b023          	sd	zero,32(a5)
    8000201c:	0207b423          	sd	zero,40(a5)
    80002020:	fc9ff06f          	j	80001fe8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002024 <_ZN9Scheduler3putEP7_thread>:
void Scheduler::put(_thread *thread) {
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	02010413          	addi	s0,sp,32
    80002038:	00050493          	mv	s1,a0
    ThreadPriority priority = thread->myPriority;
    8000203c:	00052783          	lw	a5,0(a0)
    switch (priority) {
    80002040:	00100713          	li	a4,1
    80002044:	06e78463          	beq	a5,a4,800020ac <_ZN9Scheduler3putEP7_thread+0x88>
    80002048:	00200713          	li	a4,2
    8000204c:	0ae78263          	beq	a5,a4,800020f0 <_ZN9Scheduler3putEP7_thread+0xcc>
    80002050:	00078c63          	beqz	a5,80002068 <_ZN9Scheduler3putEP7_thread+0x44>
}
    80002054:	01813083          	ld	ra,24(sp)
    80002058:	01013403          	ld	s0,16(sp)
    8000205c:	00813483          	ld	s1,8(sp)
    80002060:	02010113          	addi	sp,sp,32
    80002064:	00008067          	ret
            return MemoryAllocator::mem_alloc(size);
    80002068:	01000513          	li	a0,16
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	614080e7          	jalr	1556(ra) # 80002680 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002074:	00953023          	sd	s1,0(a0)
    80002078:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    8000207c:	00005797          	auipc	a5,0x5
    80002080:	39c7b783          	ld	a5,924(a5) # 80007418 <_ZN9Scheduler17highPriorityQueueE+0x8>
    80002084:	00078a63          	beqz	a5,80002098 <_ZN9Scheduler3putEP7_thread+0x74>
        {
            tail->next = elem;
    80002088:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000208c:	00005797          	auipc	a5,0x5
    80002090:	38a7b623          	sd	a0,908(a5) # 80007418 <_ZN9Scheduler17highPriorityQueueE+0x8>
    80002094:	fc1ff06f          	j	80002054 <_ZN9Scheduler3putEP7_thread+0x30>
        } else
        {
            head = tail = elem;
    80002098:	00005797          	auipc	a5,0x5
    8000209c:	37878793          	addi	a5,a5,888 # 80007410 <_ZN9Scheduler17highPriorityQueueE>
    800020a0:	00a7b423          	sd	a0,8(a5)
    800020a4:	00a7b023          	sd	a0,0(a5)
    800020a8:	fadff06f          	j	80002054 <_ZN9Scheduler3putEP7_thread+0x30>
            return MemoryAllocator::mem_alloc(size);
    800020ac:	01000513          	li	a0,16
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	5d0080e7          	jalr	1488(ra) # 80002680 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800020b8:	00953023          	sd	s1,0(a0)
    800020bc:	00053423          	sd	zero,8(a0)
        if (tail)
    800020c0:	00005797          	auipc	a5,0x5
    800020c4:	3687b783          	ld	a5,872(a5) # 80007428 <_ZN9Scheduler19mediumPriorityQueueE+0x8>
    800020c8:	00078a63          	beqz	a5,800020dc <_ZN9Scheduler3putEP7_thread+0xb8>
            tail->next = elem;
    800020cc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800020d0:	00005797          	auipc	a5,0x5
    800020d4:	34a7bc23          	sd	a0,856(a5) # 80007428 <_ZN9Scheduler19mediumPriorityQueueE+0x8>
    800020d8:	f7dff06f          	j	80002054 <_ZN9Scheduler3putEP7_thread+0x30>
            head = tail = elem;
    800020dc:	00005797          	auipc	a5,0x5
    800020e0:	33478793          	addi	a5,a5,820 # 80007410 <_ZN9Scheduler17highPriorityQueueE>
    800020e4:	00a7bc23          	sd	a0,24(a5)
    800020e8:	00a7b823          	sd	a0,16(a5)
    800020ec:	f69ff06f          	j	80002054 <_ZN9Scheduler3putEP7_thread+0x30>
            return MemoryAllocator::mem_alloc(size);
    800020f0:	01000513          	li	a0,16
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	58c080e7          	jalr	1420(ra) # 80002680 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800020fc:	00953023          	sd	s1,0(a0)
    80002100:	00053423          	sd	zero,8(a0)
        if (tail)
    80002104:	00005797          	auipc	a5,0x5
    80002108:	3347b783          	ld	a5,820(a5) # 80007438 <_ZN9Scheduler16lowPriorityQueueE+0x8>
    8000210c:	00078a63          	beqz	a5,80002120 <_ZN9Scheduler3putEP7_thread+0xfc>
            tail->next = elem;
    80002110:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002114:	00005797          	auipc	a5,0x5
    80002118:	32a7b223          	sd	a0,804(a5) # 80007438 <_ZN9Scheduler16lowPriorityQueueE+0x8>
    8000211c:	f39ff06f          	j	80002054 <_ZN9Scheduler3putEP7_thread+0x30>
            head = tail = elem;
    80002120:	00005797          	auipc	a5,0x5
    80002124:	2f078793          	addi	a5,a5,752 # 80007410 <_ZN9Scheduler17highPriorityQueueE>
    80002128:	02a7b423          	sd	a0,40(a5)
    8000212c:	02a7b023          	sd	a0,32(a5)
    80002130:	f25ff06f          	j	80002054 <_ZN9Scheduler3putEP7_thread+0x30>

0000000080002134 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	02010413          	addi	s0,sp,32
        return tail->data;
    }

    bool empty() const
    {
        return head == nullptr;
    80002148:	00005517          	auipc	a0,0x5
    8000214c:	2c853503          	ld	a0,712(a0) # 80007410 <_ZN9Scheduler17highPriorityQueueE>
    if (!highPriorityQueue.empty()) return highPriorityQueue.removeFirst();
    80002150:	04050463          	beqz	a0,80002198 <_ZN9Scheduler3getEv+0x64>
        if (!head) { return 0; }
    80002154:	0a050c63          	beqz	a0,8000220c <_ZN9Scheduler3getEv+0xd8>
        head = head->next;
    80002158:	00853783          	ld	a5,8(a0)
    8000215c:	00005717          	auipc	a4,0x5
    80002160:	2af73a23          	sd	a5,692(a4) # 80007410 <_ZN9Scheduler17highPriorityQueueE>
        if (!head) { tail = 0; }
    80002164:	02078463          	beqz	a5,8000218c <_ZN9Scheduler3getEv+0x58>
        T *ret = elem->data;
    80002168:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	5e8080e7          	jalr	1512(ra) # 80002754 <_ZN15MemoryAllocator8mem_freeEPv>
    80002174:	00048513          	mv	a0,s1
    80002178:	01813083          	ld	ra,24(sp)
    8000217c:	01013403          	ld	s0,16(sp)
    80002180:	00813483          	ld	s1,8(sp)
    80002184:	02010113          	addi	sp,sp,32
    80002188:	00008067          	ret
        if (!head) { tail = 0; }
    8000218c:	00005797          	auipc	a5,0x5
    80002190:	2807b623          	sd	zero,652(a5) # 80007418 <_ZN9Scheduler17highPriorityQueueE+0x8>
    80002194:	fd5ff06f          	j	80002168 <_ZN9Scheduler3getEv+0x34>
        return head == nullptr;
    80002198:	00005517          	auipc	a0,0x5
    8000219c:	28853503          	ld	a0,648(a0) # 80007420 <_ZN9Scheduler19mediumPriorityQueueE>
    if (!mediumPriorityQueue.empty()) return mediumPriorityQueue.removeFirst();
    800021a0:	02050a63          	beqz	a0,800021d4 <_ZN9Scheduler3getEv+0xa0>
        if (!head) { return 0; }
    800021a4:	06050863          	beqz	a0,80002214 <_ZN9Scheduler3getEv+0xe0>
        head = head->next;
    800021a8:	00853783          	ld	a5,8(a0)
    800021ac:	00005717          	auipc	a4,0x5
    800021b0:	26f73a23          	sd	a5,628(a4) # 80007420 <_ZN9Scheduler19mediumPriorityQueueE>
        if (!head) { tail = 0; }
    800021b4:	00078a63          	beqz	a5,800021c8 <_ZN9Scheduler3getEv+0x94>
        T *ret = elem->data;
    800021b8:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	598080e7          	jalr	1432(ra) # 80002754 <_ZN15MemoryAllocator8mem_freeEPv>
        return ret;
    800021c4:	fb1ff06f          	j	80002174 <_ZN9Scheduler3getEv+0x40>
        if (!head) { tail = 0; }
    800021c8:	00005797          	auipc	a5,0x5
    800021cc:	2607b023          	sd	zero,608(a5) # 80007428 <_ZN9Scheduler19mediumPriorityQueueE+0x8>
    800021d0:	fe9ff06f          	j	800021b8 <_ZN9Scheduler3getEv+0x84>
        if (!head) { return 0; }
    800021d4:	00005517          	auipc	a0,0x5
    800021d8:	25c53503          	ld	a0,604(a0) # 80007430 <_ZN9Scheduler16lowPriorityQueueE>
    800021dc:	04050063          	beqz	a0,8000221c <_ZN9Scheduler3getEv+0xe8>
        head = head->next;
    800021e0:	00853783          	ld	a5,8(a0)
    800021e4:	00005717          	auipc	a4,0x5
    800021e8:	24f73623          	sd	a5,588(a4) # 80007430 <_ZN9Scheduler16lowPriorityQueueE>
        if (!head) { tail = 0; }
    800021ec:	00078a63          	beqz	a5,80002200 <_ZN9Scheduler3getEv+0xcc>
        T *ret = elem->data;
    800021f0:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	560080e7          	jalr	1376(ra) # 80002754 <_ZN15MemoryAllocator8mem_freeEPv>
        return ret;
    800021fc:	f79ff06f          	j	80002174 <_ZN9Scheduler3getEv+0x40>
        if (!head) { tail = 0; }
    80002200:	00005797          	auipc	a5,0x5
    80002204:	2207bc23          	sd	zero,568(a5) # 80007438 <_ZN9Scheduler16lowPriorityQueueE+0x8>
    80002208:	fe9ff06f          	j	800021f0 <_ZN9Scheduler3getEv+0xbc>
        if (!head) { return 0; }
    8000220c:	00050493          	mv	s1,a0
    80002210:	f65ff06f          	j	80002174 <_ZN9Scheduler3getEv+0x40>
    80002214:	00050493          	mv	s1,a0
    80002218:	f5dff06f          	j	80002174 <_ZN9Scheduler3getEv+0x40>
    8000221c:	00050493          	mv	s1,a0
    80002220:	f55ff06f          	j	80002174 <_ZN9Scheduler3getEv+0x40>

0000000080002224 <_GLOBAL__sub_I__ZN9Scheduler17highPriorityQueueE>:
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	00813023          	sd	s0,0(sp)
    80002230:	01010413          	addi	s0,sp,16
    80002234:	000105b7          	lui	a1,0x10
    80002238:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000223c:	00100513          	li	a0,1
    80002240:	00000097          	auipc	ra,0x0
    80002244:	d94080e7          	jalr	-620(ra) # 80001fd4 <_Z41__static_initialization_and_destruction_0ii>
    80002248:	00813083          	ld	ra,8(sp)
    8000224c:	00013403          	ld	s0,0(sp)
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret

0000000080002258 <_Z12_printStringPKc>:
//

#include "../lib/console.h"
#include "../h/print.hpp"

void _printString(const char* str) {
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	02010413          	addi	s0,sp,32
    8000226c:	00050493          	mv	s1,a0
    if (str == nullptr) return;
    80002270:	00050e63          	beqz	a0,8000228c <_Z12_printStringPKc+0x34>

    while (*str != '\0') {
    80002274:	0004c503          	lbu	a0,0(s1)
    80002278:	00050a63          	beqz	a0,8000228c <_Z12_printStringPKc+0x34>
        __putc(*str);
    8000227c:	00003097          	auipc	ra,0x3
    80002280:	d50080e7          	jalr	-688(ra) # 80004fcc <__putc>
        str++;
    80002284:	00148493          	addi	s1,s1,1
    while (*str != '\0') {
    80002288:	fedff06f          	j	80002274 <_Z12_printStringPKc+0x1c>
    }
}
    8000228c:	01813083          	ld	ra,24(sp)
    80002290:	01013403          	ld	s0,16(sp)
    80002294:	00813483          	ld	s1,8(sp)
    80002298:	02010113          	addi	sp,sp,32
    8000229c:	00008067          	ret

00000000800022a0 <_Z9_printInti>:

void _printInt(int num) {
    800022a0:	fd010113          	addi	sp,sp,-48
    800022a4:	02113423          	sd	ra,40(sp)
    800022a8:	02813023          	sd	s0,32(sp)
    800022ac:	00913c23          	sd	s1,24(sp)
    800022b0:	01213823          	sd	s2,16(sp)
    800022b4:	03010413          	addi	s0,sp,48
    if (num == 0) {
    800022b8:	02050c63          	beqz	a0,800022f0 <_Z9_printInti+0x50>
    800022bc:	00050913          	mv	s2,a0
        __putc('0');
        return;
    }

    if (num < 0) {
    800022c0:	04054063          	bltz	a0,80002300 <_Z9_printInti+0x60>
void _printInt(int num) {
    800022c4:	00000493          	li	s1,0
        num = -num;
    }

    char buffer[12];    // 32 bit int
    int i = 0;
    while (num > 0) {
    800022c8:	07205263          	blez	s2,8000232c <_Z9_printInti+0x8c>
        buffer[i++] = (num % 10 + '0');
    800022cc:	00a00713          	li	a4,10
    800022d0:	02e967bb          	remw	a5,s2,a4
    800022d4:	0307879b          	addiw	a5,a5,48
    800022d8:	fe040693          	addi	a3,s0,-32
    800022dc:	009686b3          	add	a3,a3,s1
    800022e0:	fef68823          	sb	a5,-16(a3)
        num /= 10;
    800022e4:	02e9493b          	divw	s2,s2,a4
        buffer[i++] = (num % 10 + '0');
    800022e8:	0014849b          	addiw	s1,s1,1
    while (num > 0) {
    800022ec:	fddff06f          	j	800022c8 <_Z9_printInti+0x28>
        __putc('0');
    800022f0:	03000513          	li	a0,48
    800022f4:	00003097          	auipc	ra,0x3
    800022f8:	cd8080e7          	jalr	-808(ra) # 80004fcc <__putc>
        return;
    800022fc:	0340006f          	j	80002330 <_Z9_printInti+0x90>
        __putc('-');
    80002300:	02d00513          	li	a0,45
    80002304:	00003097          	auipc	ra,0x3
    80002308:	cc8080e7          	jalr	-824(ra) # 80004fcc <__putc>
        num = -num;
    8000230c:	4120093b          	negw	s2,s2
    80002310:	fb5ff06f          	j	800022c4 <_Z9_printInti+0x24>
    }

    while (i > 0) {
        __putc(buffer[--i]);
    80002314:	fff4849b          	addiw	s1,s1,-1
    80002318:	fe040793          	addi	a5,s0,-32
    8000231c:	009787b3          	add	a5,a5,s1
    80002320:	ff07c503          	lbu	a0,-16(a5)
    80002324:	00003097          	auipc	ra,0x3
    80002328:	ca8080e7          	jalr	-856(ra) # 80004fcc <__putc>
    while (i > 0) {
    8000232c:	fe9044e3          	bgtz	s1,80002314 <_Z9_printInti+0x74>
    }
}
    80002330:	02813083          	ld	ra,40(sp)
    80002334:	02013403          	ld	s0,32(sp)
    80002338:	01813483          	ld	s1,24(sp)
    8000233c:	01013903          	ld	s2,16(sp)
    80002340:	03010113          	addi	sp,sp,48
    80002344:	00008067          	ret

0000000080002348 <_Z9_printHexm>:

void _printHex(uint64 num) {
    80002348:	fc010113          	addi	sp,sp,-64
    8000234c:	02113c23          	sd	ra,56(sp)
    80002350:	02813823          	sd	s0,48(sp)
    80002354:	02913423          	sd	s1,40(sp)
    80002358:	04010413          	addi	s0,sp,64
    8000235c:	00050493          	mv	s1,a0
    _printString("0x");
    80002360:	00004517          	auipc	a0,0x4
    80002364:	e7050513          	addi	a0,a0,-400 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	ef0080e7          	jalr	-272(ra) # 80002258 <_Z12_printStringPKc>
    char buffer[17];
    buffer[16] = '\0';
    80002370:	fc040c23          	sb	zero,-40(s0)
    for (int i = 15; i >= 0; i--) {
    80002374:	00f00713          	li	a4,15
    80002378:	01c0006f          	j	80002394 <_Z9_printHexm+0x4c>
        int remainder = num % 16;
        if (remainder < 10) buffer[i] = '0' + remainder;
        else buffer[i] = 'A' + (remainder - 10);
    8000237c:	03778793          	addi	a5,a5,55
    80002380:	fe040693          	addi	a3,s0,-32
    80002384:	00e686b3          	add	a3,a3,a4
    80002388:	fef68423          	sb	a5,-24(a3)
        num /= 16;
    8000238c:	0044d493          	srli	s1,s1,0x4
    for (int i = 15; i >= 0; i--) {
    80002390:	fff7071b          	addiw	a4,a4,-1
    80002394:	02074263          	bltz	a4,800023b8 <_Z9_printHexm+0x70>
        int remainder = num % 16;
    80002398:	00f4f793          	andi	a5,s1,15
        if (remainder < 10) buffer[i] = '0' + remainder;
    8000239c:	00900693          	li	a3,9
    800023a0:	fcf6cee3          	blt	a3,a5,8000237c <_Z9_printHexm+0x34>
    800023a4:	03078793          	addi	a5,a5,48
    800023a8:	fe040693          	addi	a3,s0,-32
    800023ac:	00e686b3          	add	a3,a3,a4
    800023b0:	fef68423          	sb	a5,-24(a3)
    800023b4:	fd9ff06f          	j	8000238c <_Z9_printHexm+0x44>
    }

    _printString((char *) &buffer);
    800023b8:	fc840513          	addi	a0,s0,-56
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	e9c080e7          	jalr	-356(ra) # 80002258 <_Z12_printStringPKc>
    800023c4:	03813083          	ld	ra,56(sp)
    800023c8:	03013403          	ld	s0,48(sp)
    800023cc:	02813483          	ld	s1,40(sp)
    800023d0:	04010113          	addi	sp,sp,64
    800023d4:	00008067          	ret

00000000800023d8 <_ZN7_thread13threadWrapperEv>:
    _thread* newThread = new _thread(body, arg, stack_space, priority);
    Scheduler::put(newThread);
    return newThread;
}

void _thread::threadWrapper() {
    800023d8:	fe010113          	addi	sp,sp,-32
    800023dc:	00113c23          	sd	ra,24(sp)
    800023e0:	00813823          	sd	s0,16(sp)
    800023e4:	00913423          	sd	s1,8(sp)
    800023e8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	828080e7          	jalr	-2008(ra) # 80001c14 <_ZN5Riscv10popSppSpieEv>
    runningThread->start_routine(runningThread->arg);
    800023f4:	00005497          	auipc	s1,0x5
    800023f8:	04c48493          	addi	s1,s1,76 # 80007440 <_ZN7_thread13runningThreadE>
    800023fc:	0004b783          	ld	a5,0(s1)
    80002400:	0207b703          	ld	a4,32(a5)
    80002404:	0187b503          	ld	a0,24(a5)
    80002408:	000700e7          	jalr	a4
    runningThread->finished = true;
    8000240c:	0004b783          	ld	a5,0(s1)
    80002410:	00100713          	li	a4,1
    80002414:	02e78823          	sb	a4,48(a5)
    thread_exit();
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	eec080e7          	jalr	-276(ra) # 80001304 <_Z11thread_exitv>
}
    80002420:	01813083          	ld	ra,24(sp)
    80002424:	01013403          	ld	s0,16(sp)
    80002428:	00813483          	ld	s1,8(sp)
    8000242c:	02010113          	addi	sp,sp,32
    80002430:	00008067          	ret

0000000080002434 <_ZN7_threadC1Ev>:
_thread::_thread() :
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00813423          	sd	s0,8(sp)
    8000243c:	01010413          	addi	s0,sp,16
    id(++next_id) {
    80002440:	00053c23          	sd	zero,24(a0)
    80002444:	02053023          	sd	zero,32(a0)
    80002448:	02053423          	sd	zero,40(a0)
    8000244c:	02050823          	sb	zero,48(a0)
    80002450:	020508a3          	sb	zero,49(a0)
    80002454:	00005717          	auipc	a4,0x5
    80002458:	fec70713          	addi	a4,a4,-20 # 80007440 <_ZN7_thread13runningThreadE>
    8000245c:	00873783          	ld	a5,8(a4)
    80002460:	00178793          	addi	a5,a5,1
    80002464:	00f73423          	sd	a5,8(a4)
    80002468:	02f53c23          	sd	a5,56(a0)
    context.ra = 0;
    8000246c:	00053423          	sd	zero,8(a0)
    context.sp = 0;
    80002470:	00053823          	sd	zero,16(a0)
    this->myPriority = LOW_PRIORITY;
    80002474:	00200793          	li	a5,2
    80002478:	00f52023          	sw	a5,0(a0)
}
    8000247c:	00813403          	ld	s0,8(sp)
    80002480:	01010113          	addi	sp,sp,16
    80002484:	00008067          	ret

0000000080002488 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority>:
_thread::_thread(void (*body)(void *), void *arg, void *stack_space, ThreadPriority priority) :
    80002488:	ff010113          	addi	sp,sp,-16
    8000248c:	00813423          	sd	s0,8(sp)
    80002490:	01010413          	addi	s0,sp,16
    id (++next_id) {
    80002494:	00c53c23          	sd	a2,24(a0)
    80002498:	02b53023          	sd	a1,32(a0)
    8000249c:	02d53423          	sd	a3,40(a0)
    800024a0:	02050823          	sb	zero,48(a0)
    800024a4:	020508a3          	sb	zero,49(a0)
    800024a8:	00005617          	auipc	a2,0x5
    800024ac:	f9860613          	addi	a2,a2,-104 # 80007440 <_ZN7_thread13runningThreadE>
    800024b0:	00863783          	ld	a5,8(a2)
    800024b4:	00178793          	addi	a5,a5,1
    800024b8:	00f63423          	sd	a5,8(a2)
    800024bc:	02f53c23          	sd	a5,56(a0)
    context.ra = (uint64) threadWrapper;
    800024c0:	00000797          	auipc	a5,0x0
    800024c4:	f1878793          	addi	a5,a5,-232 # 800023d8 <_ZN7_thread13threadWrapperEv>
    800024c8:	00f53423          	sd	a5,8(a0)
    context.sp = (uint64) stack_space + DEFAULT_STACK_SIZE;
    800024cc:	000017b7          	lui	a5,0x1
    800024d0:	00f686b3          	add	a3,a3,a5
    800024d4:	00d53823          	sd	a3,16(a0)
    this->myPriority = priority;
    800024d8:	00e52023          	sw	a4,0(a0)
}
    800024dc:	00813403          	ld	s0,8(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_ZN7_thread12createThreadEPFvPvES0_S0_14ThreadPriority>:
_thread* _thread::createThread(void (*body)(void *), void *arg, void* stack_space, ThreadPriority priority) {
    800024e8:	fc010113          	addi	sp,sp,-64
    800024ec:	02113c23          	sd	ra,56(sp)
    800024f0:	02813823          	sd	s0,48(sp)
    800024f4:	02913423          	sd	s1,40(sp)
    800024f8:	03213023          	sd	s2,32(sp)
    800024fc:	01313c23          	sd	s3,24(sp)
    80002500:	01413823          	sd	s4,16(sp)
    80002504:	01513423          	sd	s5,8(sp)
    80002508:	04010413          	addi	s0,sp,64
    8000250c:	00050913          	mv	s2,a0
    80002510:	00058993          	mv	s3,a1
    80002514:	00060a13          	mv	s4,a2
    80002518:	00068a93          	mv	s5,a3
    _thread* newThread = new _thread(body, arg, stack_space, priority);
    8000251c:	04000513          	li	a0,64
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	40c080e7          	jalr	1036(ra) # 8000192c <_Znwm>
    80002528:	00050493          	mv	s1,a0
    8000252c:	000a8713          	mv	a4,s5
    80002530:	000a0693          	mv	a3,s4
    80002534:	00098613          	mv	a2,s3
    80002538:	00090593          	mv	a1,s2
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	f4c080e7          	jalr	-180(ra) # 80002488 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority>
    Scheduler::put(newThread);
    80002544:	00048513          	mv	a0,s1
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	adc080e7          	jalr	-1316(ra) # 80002024 <_ZN9Scheduler3putEP7_thread>
}
    80002550:	00048513          	mv	a0,s1
    80002554:	03813083          	ld	ra,56(sp)
    80002558:	03013403          	ld	s0,48(sp)
    8000255c:	02813483          	ld	s1,40(sp)
    80002560:	02013903          	ld	s2,32(sp)
    80002564:	01813983          	ld	s3,24(sp)
    80002568:	01013a03          	ld	s4,16(sp)
    8000256c:	00813a83          	ld	s5,8(sp)
    80002570:	04010113          	addi	sp,sp,64
    80002574:	00008067          	ret

0000000080002578 <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    80002578:	fe010113          	addi	sp,sp,-32
    8000257c:	00113c23          	sd	ra,24(sp)
    80002580:	00813823          	sd	s0,16(sp)
    80002584:	00913423          	sd	s1,8(sp)
    80002588:	02010413          	addi	s0,sp,32
    _thread* oldRunning = runningThread;
    8000258c:	00005497          	auipc	s1,0x5
    80002590:	eb44b483          	ld	s1,-332(s1) # 80007440 <_ZN7_thread13runningThreadE>
    if (!oldRunning->finished && !oldRunning->blocked) Scheduler::put(oldRunning);
    80002594:	0304c783          	lbu	a5,48(s1)
    80002598:	00079663          	bnez	a5,800025a4 <_ZN7_thread8dispatchEv+0x2c>
    8000259c:	0314c783          	lbu	a5,49(s1)
    800025a0:	02078c63          	beqz	a5,800025d8 <_ZN7_thread8dispatchEv+0x60>
    runningThread = Scheduler::get();
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	b90080e7          	jalr	-1136(ra) # 80002134 <_ZN9Scheduler3getEv>
    800025ac:	00005797          	auipc	a5,0x5
    800025b0:	e8a7ba23          	sd	a0,-364(a5) # 80007440 <_ZN7_thread13runningThreadE>
    _thread::contextSwitch(&oldRunning->context, &runningThread->context);
    800025b4:	00850593          	addi	a1,a0,8
    800025b8:	00848513          	addi	a0,s1,8
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	c5c080e7          	jalr	-932(ra) # 80001218 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800025c4:	01813083          	ld	ra,24(sp)
    800025c8:	01013403          	ld	s0,16(sp)
    800025cc:	00813483          	ld	s1,8(sp)
    800025d0:	02010113          	addi	sp,sp,32
    800025d4:	00008067          	ret
    if (!oldRunning->finished && !oldRunning->blocked) Scheduler::put(oldRunning);
    800025d8:	00048513          	mv	a0,s1
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	a48080e7          	jalr	-1464(ra) # 80002024 <_ZN9Scheduler3putEP7_thread>
    800025e4:	fc1ff06f          	j	800025a4 <_ZN7_thread8dispatchEv+0x2c>

00000000800025e8 <_ZN7_thread5yieldEv>:

void _thread::yield() {
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	00813023          	sd	s0,0(sp)
    800025f4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	b18080e7          	jalr	-1256(ra) # 80001110 <_ZN5Riscv13pushRegistersEv>
    _thread::dispatch();
    80002600:	00000097          	auipc	ra,0x0
    80002604:	f78080e7          	jalr	-136(ra) # 80002578 <_ZN7_thread8dispatchEv>
    Riscv::popRegisters();
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	b8c080e7          	jalr	-1140(ra) # 80001194 <_ZN5Riscv12popRegistersEv>
}
    80002610:	00813083          	ld	ra,8(sp)
    80002614:	00013403          	ld	s0,0(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_ZN15MemoryAllocator4initEv>:
#include "../h/memory.hpp"

MemoryAllocator::FreeMemBlock* MemoryAllocator::freeMemHead = nullptr;
bool MemoryAllocator::isInitialized = false;

void MemoryAllocator::init() {
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    if (isInitialized) return;
    8000262c:	00005797          	auipc	a5,0x5
    80002630:	e247c783          	lbu	a5,-476(a5) # 80007450 <_ZN15MemoryAllocator13isInitializedE>
    80002634:	04079063          	bnez	a5,80002674 <_ZN15MemoryAllocator4initEv+0x54>
    freeMemHead = (FreeMemBlock*) HEAP_START_ADDR;
    80002638:	00005797          	auipc	a5,0x5
    8000263c:	d687b783          	ld	a5,-664(a5) # 800073a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002640:	0007b703          	ld	a4,0(a5)
    80002644:	00005797          	auipc	a5,0x5
    80002648:	e0c78793          	addi	a5,a5,-500 # 80007450 <_ZN15MemoryAllocator13isInitializedE>
    8000264c:	00e7b423          	sd	a4,8(a5)
    size_t heapSize = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    80002650:	00005697          	auipc	a3,0x5
    80002654:	d706b683          	ld	a3,-656(a3) # 800073c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002658:	0006b683          	ld	a3,0(a3)
    8000265c:	40e686b3          	sub	a3,a3,a4
    freeMemHead->size = heapSize;
    80002660:	00d73023          	sd	a3,0(a4)
    freeMemHead->next = nullptr;
    80002664:	0087b703          	ld	a4,8(a5)
    80002668:	00073423          	sd	zero,8(a4)
    isInitialized = true;
    8000266c:	00100713          	li	a4,1
    80002670:	00e78023          	sb	a4,0(a5)
}
    80002674:	00813403          	ld	s0,8(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    80002680:	fe010113          	addi	sp,sp,-32
    80002684:	00113c23          	sd	ra,24(sp)
    80002688:	00813823          	sd	s0,16(sp)
    8000268c:	00913423          	sd	s1,8(sp)
    80002690:	02010413          	addi	s0,sp,32
    80002694:	00050493          	mv	s1,a0
    if (!isInitialized) init();
    80002698:	00005797          	auipc	a5,0x5
    8000269c:	db87c783          	lbu	a5,-584(a5) # 80007450 <_ZN15MemoryAllocator13isInitializedE>
    800026a0:	02078a63          	beqz	a5,800026d4 <_ZN15MemoryAllocator9mem_allocEm+0x54>
    if (size == 0) return nullptr;
    800026a4:	0a048463          	beqz	s1,8000274c <_ZN15MemoryAllocator9mem_allocEm+0xcc>

    // allocate needed blocks
    size_t sizeWithMetadata = size + sizeof(FreeMemBlock);
    size_t blocksNum = (sizeWithMetadata + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800026a8:	04f48713          	addi	a4,s1,79
    size_t bytes = blocksNum * MEM_BLOCK_SIZE;
    800026ac:	fc077713          	andi	a4,a4,-64

    // insert into list
    FreeMemBlock* curr = freeMemHead;
    800026b0:	00005517          	auipc	a0,0x5
    800026b4:	da853503          	ld	a0,-600(a0) # 80007458 <_ZN15MemoryAllocator11freeMemHeadE>
    FreeMemBlock* prev = nullptr;
    800026b8:	00000693          	li	a3,0

    while (curr != nullptr) {
    800026bc:	04050863          	beqz	a0,8000270c <_ZN15MemoryAllocator9mem_allocEm+0x8c>
        if (curr->size >= bytes) {
    800026c0:	00053783          	ld	a5,0(a0)
    800026c4:	00e7fe63          	bgeu	a5,a4,800026e0 <_ZN15MemoryAllocator9mem_allocEm+0x60>
                if (prev != nullptr) prev->next = curr->next;
                else freeMemHead = curr->next;
            }
            return (void*) ((char*) curr + sizeof(FreeMemBlock));
        }
        prev = curr;
    800026c8:	00050693          	mv	a3,a0
        curr = curr->next;
    800026cc:	00853503          	ld	a0,8(a0)
    while (curr != nullptr) {
    800026d0:	fedff06f          	j	800026bc <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if (!isInitialized) init();
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	f4c080e7          	jalr	-180(ra) # 80002620 <_ZN15MemoryAllocator4initEv>
    800026dc:	fc9ff06f          	j	800026a4 <_ZN15MemoryAllocator9mem_allocEm+0x24>
            size_t remainingSize = curr->size - bytes;
    800026e0:	40e787b3          	sub	a5,a5,a4
            if (remainingSize >= sizeof(FreeMemBlock) + MEM_BLOCK_SIZE) {  // attempt splitting current block
    800026e4:	04f00613          	li	a2,79
    800026e8:	04f67263          	bgeu	a2,a5,8000272c <_ZN15MemoryAllocator9mem_allocEm+0xac>
                FreeMemBlock* newBlock = (FreeMemBlock*) ((char*) curr + bytes);
    800026ec:	00e50633          	add	a2,a0,a4
                newBlock->size = remainingSize;
    800026f0:	00f63023          	sd	a5,0(a2)
                newBlock->next = curr->next;
    800026f4:	00853783          	ld	a5,8(a0)
    800026f8:	00f63423          	sd	a5,8(a2)
                curr->size = bytes;
    800026fc:	00e53023          	sd	a4,0(a0)
                if (prev != nullptr) prev->next = newBlock;
    80002700:	02068063          	beqz	a3,80002720 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
    80002704:	00c6b423          	sd	a2,8(a3)
            return (void*) ((char*) curr + sizeof(FreeMemBlock));
    80002708:	01050513          	addi	a0,a0,16
    }

    return nullptr;
}
    8000270c:	01813083          	ld	ra,24(sp)
    80002710:	01013403          	ld	s0,16(sp)
    80002714:	00813483          	ld	s1,8(sp)
    80002718:	02010113          	addi	sp,sp,32
    8000271c:	00008067          	ret
                else freeMemHead = newBlock;
    80002720:	00005797          	auipc	a5,0x5
    80002724:	d2c7bc23          	sd	a2,-712(a5) # 80007458 <_ZN15MemoryAllocator11freeMemHeadE>
    80002728:	fe1ff06f          	j	80002708 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                if (prev != nullptr) prev->next = curr->next;
    8000272c:	00068863          	beqz	a3,8000273c <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    80002730:	00853783          	ld	a5,8(a0)
    80002734:	00f6b423          	sd	a5,8(a3)
    80002738:	fd1ff06f          	j	80002708 <_ZN15MemoryAllocator9mem_allocEm+0x88>
                else freeMemHead = curr->next;
    8000273c:	00853783          	ld	a5,8(a0)
    80002740:	00005717          	auipc	a4,0x5
    80002744:	d0f73c23          	sd	a5,-744(a4) # 80007458 <_ZN15MemoryAllocator11freeMemHeadE>
    80002748:	fc1ff06f          	j	80002708 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    if (size == 0) return nullptr;
    8000274c:	00000513          	li	a0,0
    80002750:	fbdff06f          	j	8000270c <_ZN15MemoryAllocator9mem_allocEm+0x8c>

0000000080002754 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *address) {
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00813423          	sd	s0,8(sp)
    8000275c:	01010413          	addi	s0,sp,16
    if (address == nullptr) return MemoryAllocator::INVALID_ARGUMENTS;
    80002760:	0a050463          	beqz	a0,80002808 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>

    FreeMemBlock* blockToFree = (FreeMemBlock*) ((char*) address - sizeof(FreeMemBlock));
    80002764:	ff050693          	addi	a3,a0,-16
    FreeMemBlock* curr = freeMemHead;
    80002768:	00005797          	auipc	a5,0x5
    8000276c:	cf07b783          	ld	a5,-784(a5) # 80007458 <_ZN15MemoryAllocator11freeMemHeadE>
    FreeMemBlock* prev = nullptr;
    80002770:	00000713          	li	a4,0

    // keep list sorted by address
    while (curr != nullptr && curr < blockToFree) {
    80002774:	00078a63          	beqz	a5,80002788 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    80002778:	00d7f863          	bgeu	a5,a3,80002788 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        prev = curr;
    8000277c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002780:	0087b783          	ld	a5,8(a5)
    while (curr != nullptr && curr < blockToFree) {
    80002784:	ff1ff06f          	j	80002774 <_ZN15MemoryAllocator8mem_freeEPv+0x20>
    }

    blockToFree->next = curr;
    80002788:	fef53c23          	sd	a5,-8(a0)
    if (prev != nullptr) prev->next = blockToFree;
    8000278c:	02070e63          	beqz	a4,800027c8 <_ZN15MemoryAllocator8mem_freeEPv+0x74>
    80002790:	00d73423          	sd	a3,8(a4)
    else freeMemHead = blockToFree;

    // attempt merging with next block
    if (blockToFree->next != nullptr &&
    80002794:	ff853783          	ld	a5,-8(a0)
    80002798:	00078863          	beqz	a5,800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        (char*)blockToFree + blockToFree->size == (char*)blockToFree->next) {
    8000279c:	ff053603          	ld	a2,-16(a0)
    800027a0:	00c685b3          	add	a1,a3,a2
    if (blockToFree->next != nullptr &&
    800027a4:	02b78863          	beq	a5,a1,800027d4 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        blockToFree->size += blockToFree->next->size;
        blockToFree->next = blockToFree->next->next;
    }

    // attempt merging with previous block
    if (prev != nullptr &&
    800027a8:	06070463          	beqz	a4,80002810 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
        (char*)prev + prev->size == (char*)blockToFree) {
    800027ac:	00073783          	ld	a5,0(a4)
    800027b0:	00f70633          	add	a2,a4,a5
    if (prev != nullptr &&
    800027b4:	02d60c63          	beq	a2,a3,800027ec <_ZN15MemoryAllocator8mem_freeEPv+0x98>
        prev->size += blockToFree->size;
        prev->next = blockToFree->next;
    }

    return MemoryAllocator::OK;
    800027b8:	00000513          	li	a0,0
}
    800027bc:	00813403          	ld	s0,8(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret
    else freeMemHead = blockToFree;
    800027c8:	00005797          	auipc	a5,0x5
    800027cc:	c8d7b823          	sd	a3,-880(a5) # 80007458 <_ZN15MemoryAllocator11freeMemHeadE>
    800027d0:	fc5ff06f          	j	80002794 <_ZN15MemoryAllocator8mem_freeEPv+0x40>
        blockToFree->size += blockToFree->next->size;
    800027d4:	0007b583          	ld	a1,0(a5)
    800027d8:	00b60633          	add	a2,a2,a1
    800027dc:	fec53823          	sd	a2,-16(a0)
        blockToFree->next = blockToFree->next->next;
    800027e0:	0087b783          	ld	a5,8(a5)
    800027e4:	fef53c23          	sd	a5,-8(a0)
    800027e8:	fc1ff06f          	j	800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0x54>
        prev->size += blockToFree->size;
    800027ec:	ff053683          	ld	a3,-16(a0)
    800027f0:	00d787b3          	add	a5,a5,a3
    800027f4:	00f73023          	sd	a5,0(a4)
        prev->next = blockToFree->next;
    800027f8:	ff853783          	ld	a5,-8(a0)
    800027fc:	00f73423          	sd	a5,8(a4)
    return MemoryAllocator::OK;
    80002800:	00000513          	li	a0,0
    80002804:	fb9ff06f          	j	800027bc <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if (address == nullptr) return MemoryAllocator::INVALID_ARGUMENTS;
    80002808:	fff00513          	li	a0,-1
    8000280c:	fb1ff06f          	j	800027bc <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    return MemoryAllocator::OK;
    80002810:	00000513          	li	a0,0
    80002814:	fa9ff06f          	j	800027bc <_ZN15MemoryAllocator8mem_freeEPv+0x68>

0000000080002818 <_Z11printStringPKc>:
//

#include "../h/syscall_c.hpp"
#include "./printing.hpp"

void printString(const char* str) {
    80002818:	fe010113          	addi	sp,sp,-32
    8000281c:	00113c23          	sd	ra,24(sp)
    80002820:	00813823          	sd	s0,16(sp)
    80002824:	00913423          	sd	s1,8(sp)
    80002828:	02010413          	addi	s0,sp,32
    8000282c:	00050493          	mv	s1,a0
    if (str == nullptr) return;
    80002830:	00050e63          	beqz	a0,8000284c <_Z11printStringPKc+0x34>

    while (*str != '\0') {
    80002834:	0004c503          	lbu	a0,0(s1)
    80002838:	00050a63          	beqz	a0,8000284c <_Z11printStringPKc+0x34>
        putc(*str);
    8000283c:	fffff097          	auipc	ra,0xfffff
    80002840:	c2c080e7          	jalr	-980(ra) # 80001468 <_Z4putcc>
        str++;
    80002844:	00148493          	addi	s1,s1,1
    while (*str != '\0') {
    80002848:	fedff06f          	j	80002834 <_Z11printStringPKc+0x1c>
    }
}
    8000284c:	01813083          	ld	ra,24(sp)
    80002850:	01013403          	ld	s0,16(sp)
    80002854:	00813483          	ld	s1,8(sp)
    80002858:	02010113          	addi	sp,sp,32
    8000285c:	00008067          	ret

0000000080002860 <_Z8printInti>:

void printInt(int num) {
    80002860:	fd010113          	addi	sp,sp,-48
    80002864:	02113423          	sd	ra,40(sp)
    80002868:	02813023          	sd	s0,32(sp)
    8000286c:	00913c23          	sd	s1,24(sp)
    80002870:	01213823          	sd	s2,16(sp)
    80002874:	03010413          	addi	s0,sp,48
    if (num == 0) {
    80002878:	02050c63          	beqz	a0,800028b0 <_Z8printInti+0x50>
    8000287c:	00050913          	mv	s2,a0
        putc('0');
        return;
    }

    if (num < 0) {
    80002880:	04054063          	bltz	a0,800028c0 <_Z8printInti+0x60>
void printInt(int num) {
    80002884:	00000493          	li	s1,0
        num = -num;
    }

    char buffer[12];    // 32 bit int
    int i = 0;
    while (num > 0) {
    80002888:	07205263          	blez	s2,800028ec <_Z8printInti+0x8c>
        buffer[i++] = (num % 10 + '0');
    8000288c:	00a00713          	li	a4,10
    80002890:	02e967bb          	remw	a5,s2,a4
    80002894:	0307879b          	addiw	a5,a5,48
    80002898:	fe040693          	addi	a3,s0,-32
    8000289c:	009686b3          	add	a3,a3,s1
    800028a0:	fef68823          	sb	a5,-16(a3)
        num /= 10;
    800028a4:	02e9493b          	divw	s2,s2,a4
        buffer[i++] = (num % 10 + '0');
    800028a8:	0014849b          	addiw	s1,s1,1
    while (num > 0) {
    800028ac:	fddff06f          	j	80002888 <_Z8printInti+0x28>
        putc('0');
    800028b0:	03000513          	li	a0,48
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	bb4080e7          	jalr	-1100(ra) # 80001468 <_Z4putcc>
        return;
    800028bc:	0340006f          	j	800028f0 <_Z8printInti+0x90>
        putc('-');
    800028c0:	02d00513          	li	a0,45
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	ba4080e7          	jalr	-1116(ra) # 80001468 <_Z4putcc>
        num = -num;
    800028cc:	4120093b          	negw	s2,s2
    800028d0:	fb5ff06f          	j	80002884 <_Z8printInti+0x24>
    }

    while (i > 0) {
        putc(buffer[--i]);
    800028d4:	fff4849b          	addiw	s1,s1,-1
    800028d8:	fe040793          	addi	a5,s0,-32
    800028dc:	009787b3          	add	a5,a5,s1
    800028e0:	ff07c503          	lbu	a0,-16(a5)
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	b84080e7          	jalr	-1148(ra) # 80001468 <_Z4putcc>
    while (i > 0) {
    800028ec:	fe9044e3          	bgtz	s1,800028d4 <_Z8printInti+0x74>
    }
    800028f0:	02813083          	ld	ra,40(sp)
    800028f4:	02013403          	ld	s0,32(sp)
    800028f8:	01813483          	ld	s1,24(sp)
    800028fc:	01013903          	ld	s2,16(sp)
    80002900:	03010113          	addi	sp,sp,48
    80002904:	00008067          	ret

0000000080002908 <_Z8userMainv>:
#include "./printing.hpp"
#include "../h/syscall_c.hpp"
#include "./priorityTest.hpp"

void userMain() {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000291c:	00004517          	auipc	a0,0x4
    80002920:	8bc50513          	addi	a0,a0,-1860 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80002924:	00000097          	auipc	ra,0x0
    80002928:	ef4080e7          	jalr	-268(ra) # 80002818 <_Z11printStringPKc>
    int test = getc() - '0';
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	b60080e7          	jalr	-1184(ra) # 8000148c <_Z4getcv>
    80002934:	00050493          	mv	s1,a0
    getc();
    80002938:	fffff097          	auipc	ra,0xfffff
    8000293c:	b54080e7          	jalr	-1196(ra) # 8000148c <_Z4getcv>

    switch (test) {
    80002940:	03800793          	li	a5,56
    80002944:	02f48463          	beq	s1,a5,8000296c <_Z8userMainv+0x64>
        case 8:
            priorityTest();
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    80002948:	00004517          	auipc	a0,0x4
    8000294c:	8b050513          	addi	a0,a0,-1872 # 800061f8 <CONSOLE_STATUS+0x1e8>
    80002950:	00000097          	auipc	ra,0x0
    80002954:	ec8080e7          	jalr	-312(ra) # 80002818 <_Z11printStringPKc>
    }
    80002958:	01813083          	ld	ra,24(sp)
    8000295c:	01013403          	ld	s0,16(sp)
    80002960:	00813483          	ld	s1,8(sp)
    80002964:	02010113          	addi	sp,sp,32
    80002968:	00008067          	ret
            priorityTest();
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	09c080e7          	jalr	156(ra) # 80002a08 <_Z12priorityTestv>
            break;
    80002974:	fe5ff06f          	j	80002958 <_Z8userMainv+0x50>

0000000080002978 <_Z17approximate_sleepm>:

#include "../h/syscall_cpp.hpp"
#include "./printing.hpp"
#include "./priorityTest.hpp"

void approximate_sleep(time_t periods) {
    80002978:	fc010113          	addi	sp,sp,-64
    8000297c:	02113c23          	sd	ra,56(sp)
    80002980:	02813823          	sd	s0,48(sp)
    80002984:	02913423          	sd	s1,40(sp)
    80002988:	03213023          	sd	s2,32(sp)
    8000298c:	01313c23          	sd	s3,24(sp)
    80002990:	04010413          	addi	s0,sp,64
    80002994:	00050993          	mv	s3,a0
    for (time_t p = 0; p < periods; p++) {
    80002998:	00000913          	li	s2,0
    8000299c:	0440006f          	j	800029e0 <_Z17approximate_sleepm+0x68>
        for (int i = 0; i < 500; i++) {
            for (volatile int j = 0; j < 10000; j++);
            thread_dispatch();
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	988080e7          	jalr	-1656(ra) # 80001328 <_Z15thread_dispatchv>
        for (int i = 0; i < 500; i++) {
    800029a8:	0014849b          	addiw	s1,s1,1
    800029ac:	1f300793          	li	a5,499
    800029b0:	0297c663          	blt	a5,s1,800029dc <_Z17approximate_sleepm+0x64>
            for (volatile int j = 0; j < 10000; j++);
    800029b4:	fc042623          	sw	zero,-52(s0)
    800029b8:	fcc42703          	lw	a4,-52(s0)
    800029bc:	0007071b          	sext.w	a4,a4
    800029c0:	000027b7          	lui	a5,0x2
    800029c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800029c8:	fce7cce3          	blt	a5,a4,800029a0 <_Z17approximate_sleepm+0x28>
    800029cc:	fcc42783          	lw	a5,-52(s0)
    800029d0:	0017879b          	addiw	a5,a5,1
    800029d4:	fcf42623          	sw	a5,-52(s0)
    800029d8:	fe1ff06f          	j	800029b8 <_Z17approximate_sleepm+0x40>
    for (time_t p = 0; p < periods; p++) {
    800029dc:	00190913          	addi	s2,s2,1
    800029e0:	01397663          	bgeu	s2,s3,800029ec <_Z17approximate_sleepm+0x74>
        for (int i = 0; i < 500; i++) {
    800029e4:	00000493          	li	s1,0
    800029e8:	fc5ff06f          	j	800029ac <_Z17approximate_sleepm+0x34>
        }
    }
}
    800029ec:	03813083          	ld	ra,56(sp)
    800029f0:	03013403          	ld	s0,48(sp)
    800029f4:	02813483          	ld	s1,40(sp)
    800029f8:	02013903          	ld	s2,32(sp)
    800029fc:	01813983          	ld	s3,24(sp)
    80002a00:	04010113          	addi	sp,sp,64
    80002a04:	00008067          	ret

0000000080002a08 <_Z12priorityTestv>:
        printString("LowThread done!\n");
        waitForAll->signal();
    }
};

void priorityTest() {
    80002a08:	fd010113          	addi	sp,sp,-48
    80002a0c:	02113423          	sd	ra,40(sp)
    80002a10:	02813023          	sd	s0,32(sp)
    80002a14:	00913c23          	sd	s1,24(sp)
    80002a18:	01213823          	sd	s2,16(sp)
    80002a1c:	01313423          	sd	s3,8(sp)
    80002a20:	01413023          	sd	s4,0(sp)
    80002a24:	03010413          	addi	s0,sp,48
    waitForAll = new Semaphore(0);
    80002a28:	01000513          	li	a0,16
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	f00080e7          	jalr	-256(ra) # 8000192c <_Znwm>
    80002a34:	00050493          	mv	s1,a0
    80002a38:	00000593          	li	a1,0
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	0e0080e7          	jalr	224(ra) # 80001b1c <_ZN9SemaphoreC1Ej>
    80002a44:	00005797          	auipc	a5,0x5
    80002a48:	a097be23          	sd	s1,-1508(a5) # 80007460 <_ZL10waitForAll>
    printString("Test started!\n");
    80002a4c:	00004517          	auipc	a0,0x4
    80002a50:	85c50513          	addi	a0,a0,-1956 # 800062a8 <CONSOLE_STATUS+0x298>
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	dc4080e7          	jalr	-572(ra) # 80002818 <_Z11printStringPKc>
    Thread* low = new LowThread();
    80002a5c:	02800513          	li	a0,40
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	ecc080e7          	jalr	-308(ra) # 8000192c <_Znwm>
    80002a68:	00050a13          	mv	s4,a0
    LowThread() : Thread(LOW_PRIORITY) {}
    80002a6c:	00200593          	li	a1,2
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	ff8080e7          	jalr	-8(ra) # 80001a68 <_ZN6ThreadC1E14ThreadPriority>
    80002a78:	00005797          	auipc	a5,0x5
    80002a7c:	90878793          	addi	a5,a5,-1784 # 80007380 <_ZTV9LowThread+0x10>
    80002a80:	00fa3023          	sd	a5,0(s4)
    Thread* med1 = new MediumThread(1);
    80002a84:	03000513          	li	a0,48
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	ea4080e7          	jalr	-348(ra) # 8000192c <_Znwm>
    80002a90:	00050913          	mv	s2,a0
    MediumThread(int id) : Thread(MEDIUM_PRIORITY) { this->id = id; }
    80002a94:	00100593          	li	a1,1
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	fd0080e7          	jalr	-48(ra) # 80001a68 <_ZN6ThreadC1E14ThreadPriority>
    80002aa0:	00005797          	auipc	a5,0x5
    80002aa4:	8b878793          	addi	a5,a5,-1864 # 80007358 <_ZTV12MediumThread+0x10>
    80002aa8:	00f93023          	sd	a5,0(s2)
    80002aac:	00100793          	li	a5,1
    80002ab0:	02f92423          	sw	a5,40(s2)
    Thread* med2 = new MediumThread(2);
    80002ab4:	03000513          	li	a0,48
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	e74080e7          	jalr	-396(ra) # 8000192c <_Znwm>
    80002ac0:	00050493          	mv	s1,a0
    MediumThread(int id) : Thread(MEDIUM_PRIORITY) { this->id = id; }
    80002ac4:	00100593          	li	a1,1
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	fa0080e7          	jalr	-96(ra) # 80001a68 <_ZN6ThreadC1E14ThreadPriority>
    80002ad0:	00005797          	auipc	a5,0x5
    80002ad4:	88878793          	addi	a5,a5,-1912 # 80007358 <_ZTV12MediumThread+0x10>
    80002ad8:	00f4b023          	sd	a5,0(s1)
    80002adc:	00200793          	li	a5,2
    80002ae0:	02f4a423          	sw	a5,40(s1)
    Thread* high = new HighThread();
    80002ae4:	02800513          	li	a0,40
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	e44080e7          	jalr	-444(ra) # 8000192c <_Znwm>
    80002af0:	00050993          	mv	s3,a0
    HighThread() : Thread(HIGH_PRIORITY) {}
    80002af4:	00000593          	li	a1,0
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	f70080e7          	jalr	-144(ra) # 80001a68 <_ZN6ThreadC1E14ThreadPriority>
    80002b00:	00005797          	auipc	a5,0x5
    80002b04:	83078793          	addi	a5,a5,-2000 # 80007330 <_ZTV10HighThread+0x10>
    80002b08:	00f9b023          	sd	a5,0(s3)

    med1->start();
    80002b0c:	00090513          	mv	a0,s2
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	f8c080e7          	jalr	-116(ra) # 80001a9c <_ZN6Thread5startEv>
    low->start();
    80002b18:	000a0513          	mv	a0,s4
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	f80080e7          	jalr	-128(ra) # 80001a9c <_ZN6Thread5startEv>
    med2->start();
    80002b24:	00048513          	mv	a0,s1
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	f74080e7          	jalr	-140(ra) # 80001a9c <_ZN6Thread5startEv>
    high->start();
    80002b30:	00098513          	mv	a0,s3
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	f68080e7          	jalr	-152(ra) # 80001a9c <_ZN6Thread5startEv>
    printString("Threads started! (M1 -> L -> M2 -> H)\n");
    80002b3c:	00003517          	auipc	a0,0x3
    80002b40:	77c50513          	addi	a0,a0,1916 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	cd4080e7          	jalr	-812(ra) # 80002818 <_Z11printStringPKc>

    for (int i = 0; i < 4; i++) waitForAll->wait();
    80002b4c:	00000493          	li	s1,0
    80002b50:	0180006f          	j	80002b68 <_Z12priorityTestv+0x160>
    80002b54:	00005517          	auipc	a0,0x5
    80002b58:	90c53503          	ld	a0,-1780(a0) # 80007460 <_ZL10waitForAll>
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	ff8080e7          	jalr	-8(ra) # 80001b54 <_ZN9Semaphore4waitEv>
    80002b64:	0014849b          	addiw	s1,s1,1
    80002b68:	00300793          	li	a5,3
    80002b6c:	fe97d4e3          	bge	a5,s1,80002b54 <_Z12priorityTestv+0x14c>

    printString("Test done!\n");
    80002b70:	00003517          	auipc	a0,0x3
    80002b74:	77050513          	addi	a0,a0,1904 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	ca0080e7          	jalr	-864(ra) # 80002818 <_Z11printStringPKc>
    80002b80:	02813083          	ld	ra,40(sp)
    80002b84:	02013403          	ld	s0,32(sp)
    80002b88:	01813483          	ld	s1,24(sp)
    80002b8c:	01013903          	ld	s2,16(sp)
    80002b90:	00813983          	ld	s3,8(sp)
    80002b94:	00013a03          	ld	s4,0(sp)
    80002b98:	03010113          	addi	sp,sp,48
    80002b9c:	00008067          	ret
    80002ba0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80002ba4:	00048513          	mv	a0,s1
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	dd4080e7          	jalr	-556(ra) # 8000197c <_ZdlPv>
    80002bb0:	00090513          	mv	a0,s2
    80002bb4:	00006097          	auipc	ra,0x6
    80002bb8:	984080e7          	jalr	-1660(ra) # 80008538 <_Unwind_Resume>
    80002bbc:	00050493          	mv	s1,a0
    Thread* low = new LowThread();
    80002bc0:	000a0513          	mv	a0,s4
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	db8080e7          	jalr	-584(ra) # 8000197c <_ZdlPv>
    80002bcc:	00048513          	mv	a0,s1
    80002bd0:	00006097          	auipc	ra,0x6
    80002bd4:	968080e7          	jalr	-1688(ra) # 80008538 <_Unwind_Resume>
    80002bd8:	00050493          	mv	s1,a0
    Thread* med1 = new MediumThread(1);
    80002bdc:	00090513          	mv	a0,s2
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	d9c080e7          	jalr	-612(ra) # 8000197c <_ZdlPv>
    80002be8:	00048513          	mv	a0,s1
    80002bec:	00006097          	auipc	ra,0x6
    80002bf0:	94c080e7          	jalr	-1716(ra) # 80008538 <_Unwind_Resume>
    80002bf4:	00050913          	mv	s2,a0
    Thread* med2 = new MediumThread(2);
    80002bf8:	00048513          	mv	a0,s1
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	d80080e7          	jalr	-640(ra) # 8000197c <_ZdlPv>
    80002c04:	00090513          	mv	a0,s2
    80002c08:	00006097          	auipc	ra,0x6
    80002c0c:	930080e7          	jalr	-1744(ra) # 80008538 <_Unwind_Resume>
    80002c10:	00050493          	mv	s1,a0
    Thread* high = new HighThread();
    80002c14:	00098513          	mv	a0,s3
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	d64080e7          	jalr	-668(ra) # 8000197c <_ZdlPv>
    80002c20:	00048513          	mv	a0,s1
    80002c24:	00006097          	auipc	ra,0x6
    80002c28:	914080e7          	jalr	-1772(ra) # 80008538 <_Unwind_Resume>

0000000080002c2c <_ZN9LowThreadD1Ev>:
class LowThread : public Thread {
    80002c2c:	ff010113          	addi	sp,sp,-16
    80002c30:	00113423          	sd	ra,8(sp)
    80002c34:	00813023          	sd	s0,0(sp)
    80002c38:	01010413          	addi	s0,sp,16
    80002c3c:	00004797          	auipc	a5,0x4
    80002c40:	74478793          	addi	a5,a5,1860 # 80007380 <_ZTV9LowThread+0x10>
    80002c44:	00f53023          	sd	a5,0(a0)
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	c4c080e7          	jalr	-948(ra) # 80001894 <_ZN6ThreadD1Ev>
    80002c50:	00813083          	ld	ra,8(sp)
    80002c54:	00013403          	ld	s0,0(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret

0000000080002c60 <_ZN9LowThreadD0Ev>:
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00113c23          	sd	ra,24(sp)
    80002c68:	00813823          	sd	s0,16(sp)
    80002c6c:	00913423          	sd	s1,8(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	00050493          	mv	s1,a0
    80002c78:	00004797          	auipc	a5,0x4
    80002c7c:	70878793          	addi	a5,a5,1800 # 80007380 <_ZTV9LowThread+0x10>
    80002c80:	00f53023          	sd	a5,0(a0)
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	c10080e7          	jalr	-1008(ra) # 80001894 <_ZN6ThreadD1Ev>
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	cec080e7          	jalr	-788(ra) # 8000197c <_ZdlPv>
    80002c98:	01813083          	ld	ra,24(sp)
    80002c9c:	01013403          	ld	s0,16(sp)
    80002ca0:	00813483          	ld	s1,8(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret

0000000080002cac <_ZN12MediumThreadD1Ev>:
class MediumThread : public Thread {
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00113423          	sd	ra,8(sp)
    80002cb4:	00813023          	sd	s0,0(sp)
    80002cb8:	01010413          	addi	s0,sp,16
    80002cbc:	00004797          	auipc	a5,0x4
    80002cc0:	69c78793          	addi	a5,a5,1692 # 80007358 <_ZTV12MediumThread+0x10>
    80002cc4:	00f53023          	sd	a5,0(a0)
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	bcc080e7          	jalr	-1076(ra) # 80001894 <_ZN6ThreadD1Ev>
    80002cd0:	00813083          	ld	ra,8(sp)
    80002cd4:	00013403          	ld	s0,0(sp)
    80002cd8:	01010113          	addi	sp,sp,16
    80002cdc:	00008067          	ret

0000000080002ce0 <_ZN12MediumThreadD0Ev>:
    80002ce0:	fe010113          	addi	sp,sp,-32
    80002ce4:	00113c23          	sd	ra,24(sp)
    80002ce8:	00813823          	sd	s0,16(sp)
    80002cec:	00913423          	sd	s1,8(sp)
    80002cf0:	02010413          	addi	s0,sp,32
    80002cf4:	00050493          	mv	s1,a0
    80002cf8:	00004797          	auipc	a5,0x4
    80002cfc:	66078793          	addi	a5,a5,1632 # 80007358 <_ZTV12MediumThread+0x10>
    80002d00:	00f53023          	sd	a5,0(a0)
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	b90080e7          	jalr	-1136(ra) # 80001894 <_ZN6ThreadD1Ev>
    80002d0c:	00048513          	mv	a0,s1
    80002d10:	fffff097          	auipc	ra,0xfffff
    80002d14:	c6c080e7          	jalr	-916(ra) # 8000197c <_ZdlPv>
    80002d18:	01813083          	ld	ra,24(sp)
    80002d1c:	01013403          	ld	s0,16(sp)
    80002d20:	00813483          	ld	s1,8(sp)
    80002d24:	02010113          	addi	sp,sp,32
    80002d28:	00008067          	ret

0000000080002d2c <_ZN10HighThreadD1Ev>:
class HighThread : public Thread {
    80002d2c:	ff010113          	addi	sp,sp,-16
    80002d30:	00113423          	sd	ra,8(sp)
    80002d34:	00813023          	sd	s0,0(sp)
    80002d38:	01010413          	addi	s0,sp,16
    80002d3c:	00004797          	auipc	a5,0x4
    80002d40:	5f478793          	addi	a5,a5,1524 # 80007330 <_ZTV10HighThread+0x10>
    80002d44:	00f53023          	sd	a5,0(a0)
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	b4c080e7          	jalr	-1204(ra) # 80001894 <_ZN6ThreadD1Ev>
    80002d50:	00813083          	ld	ra,8(sp)
    80002d54:	00013403          	ld	s0,0(sp)
    80002d58:	01010113          	addi	sp,sp,16
    80002d5c:	00008067          	ret

0000000080002d60 <_ZN10HighThreadD0Ev>:
    80002d60:	fe010113          	addi	sp,sp,-32
    80002d64:	00113c23          	sd	ra,24(sp)
    80002d68:	00813823          	sd	s0,16(sp)
    80002d6c:	00913423          	sd	s1,8(sp)
    80002d70:	02010413          	addi	s0,sp,32
    80002d74:	00050493          	mv	s1,a0
    80002d78:	00004797          	auipc	a5,0x4
    80002d7c:	5b878793          	addi	a5,a5,1464 # 80007330 <_ZTV10HighThread+0x10>
    80002d80:	00f53023          	sd	a5,0(a0)
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	b10080e7          	jalr	-1264(ra) # 80001894 <_ZN6ThreadD1Ev>
    80002d8c:	00048513          	mv	a0,s1
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	bec080e7          	jalr	-1044(ra) # 8000197c <_ZdlPv>
    80002d98:	01813083          	ld	ra,24(sp)
    80002d9c:	01013403          	ld	s0,16(sp)
    80002da0:	00813483          	ld	s1,8(sp)
    80002da4:	02010113          	addi	sp,sp,32
    80002da8:	00008067          	ret

0000000080002dac <_ZN9LowThread3runEv>:
    void run() override {
    80002dac:	ff010113          	addi	sp,sp,-16
    80002db0:	00113423          	sd	ra,8(sp)
    80002db4:	00813023          	sd	s0,0(sp)
    80002db8:	01010413          	addi	s0,sp,16
        printString("LowThread started!\n");
    80002dbc:	00003517          	auipc	a0,0x3
    80002dc0:	46450513          	addi	a0,a0,1124 # 80006220 <CONSOLE_STATUS+0x210>
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	a54080e7          	jalr	-1452(ra) # 80002818 <_Z11printStringPKc>
        approximate_sleep(2);
    80002dcc:	00200513          	li	a0,2
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	ba8080e7          	jalr	-1112(ra) # 80002978 <_Z17approximate_sleepm>
        printString("LowThread done!\n");
    80002dd8:	00003517          	auipc	a0,0x3
    80002ddc:	46050513          	addi	a0,a0,1120 # 80006238 <CONSOLE_STATUS+0x228>
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	a38080e7          	jalr	-1480(ra) # 80002818 <_Z11printStringPKc>
        waitForAll->signal();
    80002de8:	00004517          	auipc	a0,0x4
    80002dec:	67853503          	ld	a0,1656(a0) # 80007460 <_ZL10waitForAll>
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	d90080e7          	jalr	-624(ra) # 80001b80 <_ZN9Semaphore6signalEv>
    }
    80002df8:	00813083          	ld	ra,8(sp)
    80002dfc:	00013403          	ld	s0,0(sp)
    80002e00:	01010113          	addi	sp,sp,16
    80002e04:	00008067          	ret

0000000080002e08 <_ZN12MediumThread3runEv>:
    void run() override {
    80002e08:	fe010113          	addi	sp,sp,-32
    80002e0c:	00113c23          	sd	ra,24(sp)
    80002e10:	00813823          	sd	s0,16(sp)
    80002e14:	00913423          	sd	s1,8(sp)
    80002e18:	02010413          	addi	s0,sp,32
    80002e1c:	00050493          	mv	s1,a0
        printString("MediumThread ");
    80002e20:	00003517          	auipc	a0,0x3
    80002e24:	43050513          	addi	a0,a0,1072 # 80006250 <CONSOLE_STATUS+0x240>
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	9f0080e7          	jalr	-1552(ra) # 80002818 <_Z11printStringPKc>
        printInt(id);
    80002e30:	0284a503          	lw	a0,40(s1)
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	a2c080e7          	jalr	-1492(ra) # 80002860 <_Z8printInti>
        printString(" started!\n");
    80002e3c:	00003517          	auipc	a0,0x3
    80002e40:	42450513          	addi	a0,a0,1060 # 80006260 <CONSOLE_STATUS+0x250>
    80002e44:	00000097          	auipc	ra,0x0
    80002e48:	9d4080e7          	jalr	-1580(ra) # 80002818 <_Z11printStringPKc>
        approximate_sleep(10);
    80002e4c:	00a00513          	li	a0,10
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	b28080e7          	jalr	-1240(ra) # 80002978 <_Z17approximate_sleepm>
        printString("MediumThread ");
    80002e58:	00003517          	auipc	a0,0x3
    80002e5c:	3f850513          	addi	a0,a0,1016 # 80006250 <CONSOLE_STATUS+0x240>
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	9b8080e7          	jalr	-1608(ra) # 80002818 <_Z11printStringPKc>
        printInt(id);
    80002e68:	0284a503          	lw	a0,40(s1)
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	9f4080e7          	jalr	-1548(ra) # 80002860 <_Z8printInti>
        printString(" done!\n");
    80002e74:	00003517          	auipc	a0,0x3
    80002e78:	3fc50513          	addi	a0,a0,1020 # 80006270 <CONSOLE_STATUS+0x260>
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	99c080e7          	jalr	-1636(ra) # 80002818 <_Z11printStringPKc>
        waitForAll->signal();
    80002e84:	00004517          	auipc	a0,0x4
    80002e88:	5dc53503          	ld	a0,1500(a0) # 80007460 <_ZL10waitForAll>
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	cf4080e7          	jalr	-780(ra) # 80001b80 <_ZN9Semaphore6signalEv>
    }
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	02010113          	addi	sp,sp,32
    80002ea4:	00008067          	ret

0000000080002ea8 <_ZN10HighThread3runEv>:
    void run() override {
    80002ea8:	ff010113          	addi	sp,sp,-16
    80002eac:	00113423          	sd	ra,8(sp)
    80002eb0:	00813023          	sd	s0,0(sp)
    80002eb4:	01010413          	addi	s0,sp,16
        printString("HighThread started!\n");
    80002eb8:	00003517          	auipc	a0,0x3
    80002ebc:	3c050513          	addi	a0,a0,960 # 80006278 <CONSOLE_STATUS+0x268>
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	958080e7          	jalr	-1704(ra) # 80002818 <_Z11printStringPKc>
        approximate_sleep(20);
    80002ec8:	01400513          	li	a0,20
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	aac080e7          	jalr	-1364(ra) # 80002978 <_Z17approximate_sleepm>
        printString("HighThread done!\n");
    80002ed4:	00003517          	auipc	a0,0x3
    80002ed8:	3bc50513          	addi	a0,a0,956 # 80006290 <CONSOLE_STATUS+0x280>
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	93c080e7          	jalr	-1732(ra) # 80002818 <_Z11printStringPKc>
        waitForAll->signal();
    80002ee4:	00004517          	auipc	a0,0x4
    80002ee8:	57c53503          	ld	a0,1404(a0) # 80007460 <_ZL10waitForAll>
    80002eec:	fffff097          	auipc	ra,0xfffff
    80002ef0:	c94080e7          	jalr	-876(ra) # 80001b80 <_ZN9Semaphore6signalEv>
    }
    80002ef4:	00813083          	ld	ra,8(sp)
    80002ef8:	00013403          	ld	s0,0(sp)
    80002efc:	01010113          	addi	sp,sp,16
    80002f00:	00008067          	ret

0000000080002f04 <start>:
    80002f04:	ff010113          	addi	sp,sp,-16
    80002f08:	00813423          	sd	s0,8(sp)
    80002f0c:	01010413          	addi	s0,sp,16
    80002f10:	300027f3          	csrr	a5,mstatus
    80002f14:	ffffe737          	lui	a4,0xffffe
    80002f18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff612f>
    80002f1c:	00e7f7b3          	and	a5,a5,a4
    80002f20:	00001737          	lui	a4,0x1
    80002f24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002f28:	00e7e7b3          	or	a5,a5,a4
    80002f2c:	30079073          	csrw	mstatus,a5
    80002f30:	00000797          	auipc	a5,0x0
    80002f34:	16078793          	addi	a5,a5,352 # 80003090 <system_main>
    80002f38:	34179073          	csrw	mepc,a5
    80002f3c:	00000793          	li	a5,0
    80002f40:	18079073          	csrw	satp,a5
    80002f44:	000107b7          	lui	a5,0x10
    80002f48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002f4c:	30279073          	csrw	medeleg,a5
    80002f50:	30379073          	csrw	mideleg,a5
    80002f54:	104027f3          	csrr	a5,sie
    80002f58:	2227e793          	ori	a5,a5,546
    80002f5c:	10479073          	csrw	sie,a5
    80002f60:	fff00793          	li	a5,-1
    80002f64:	00a7d793          	srli	a5,a5,0xa
    80002f68:	3b079073          	csrw	pmpaddr0,a5
    80002f6c:	00f00793          	li	a5,15
    80002f70:	3a079073          	csrw	pmpcfg0,a5
    80002f74:	f14027f3          	csrr	a5,mhartid
    80002f78:	0200c737          	lui	a4,0x200c
    80002f7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002f80:	0007869b          	sext.w	a3,a5
    80002f84:	00269713          	slli	a4,a3,0x2
    80002f88:	000f4637          	lui	a2,0xf4
    80002f8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002f90:	00d70733          	add	a4,a4,a3
    80002f94:	0037979b          	slliw	a5,a5,0x3
    80002f98:	020046b7          	lui	a3,0x2004
    80002f9c:	00d787b3          	add	a5,a5,a3
    80002fa0:	00c585b3          	add	a1,a1,a2
    80002fa4:	00371693          	slli	a3,a4,0x3
    80002fa8:	00004717          	auipc	a4,0x4
    80002fac:	4c870713          	addi	a4,a4,1224 # 80007470 <timer_scratch>
    80002fb0:	00b7b023          	sd	a1,0(a5)
    80002fb4:	00d70733          	add	a4,a4,a3
    80002fb8:	00f73c23          	sd	a5,24(a4)
    80002fbc:	02c73023          	sd	a2,32(a4)
    80002fc0:	34071073          	csrw	mscratch,a4
    80002fc4:	00000797          	auipc	a5,0x0
    80002fc8:	6ec78793          	addi	a5,a5,1772 # 800036b0 <timervec>
    80002fcc:	30579073          	csrw	mtvec,a5
    80002fd0:	300027f3          	csrr	a5,mstatus
    80002fd4:	0087e793          	ori	a5,a5,8
    80002fd8:	30079073          	csrw	mstatus,a5
    80002fdc:	304027f3          	csrr	a5,mie
    80002fe0:	0807e793          	ori	a5,a5,128
    80002fe4:	30479073          	csrw	mie,a5
    80002fe8:	f14027f3          	csrr	a5,mhartid
    80002fec:	0007879b          	sext.w	a5,a5
    80002ff0:	00078213          	mv	tp,a5
    80002ff4:	30200073          	mret
    80002ff8:	00813403          	ld	s0,8(sp)
    80002ffc:	01010113          	addi	sp,sp,16
    80003000:	00008067          	ret

0000000080003004 <timerinit>:
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00813423          	sd	s0,8(sp)
    8000300c:	01010413          	addi	s0,sp,16
    80003010:	f14027f3          	csrr	a5,mhartid
    80003014:	0200c737          	lui	a4,0x200c
    80003018:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000301c:	0007869b          	sext.w	a3,a5
    80003020:	00269713          	slli	a4,a3,0x2
    80003024:	000f4637          	lui	a2,0xf4
    80003028:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000302c:	00d70733          	add	a4,a4,a3
    80003030:	0037979b          	slliw	a5,a5,0x3
    80003034:	020046b7          	lui	a3,0x2004
    80003038:	00d787b3          	add	a5,a5,a3
    8000303c:	00c585b3          	add	a1,a1,a2
    80003040:	00371693          	slli	a3,a4,0x3
    80003044:	00004717          	auipc	a4,0x4
    80003048:	42c70713          	addi	a4,a4,1068 # 80007470 <timer_scratch>
    8000304c:	00b7b023          	sd	a1,0(a5)
    80003050:	00d70733          	add	a4,a4,a3
    80003054:	00f73c23          	sd	a5,24(a4)
    80003058:	02c73023          	sd	a2,32(a4)
    8000305c:	34071073          	csrw	mscratch,a4
    80003060:	00000797          	auipc	a5,0x0
    80003064:	65078793          	addi	a5,a5,1616 # 800036b0 <timervec>
    80003068:	30579073          	csrw	mtvec,a5
    8000306c:	300027f3          	csrr	a5,mstatus
    80003070:	0087e793          	ori	a5,a5,8
    80003074:	30079073          	csrw	mstatus,a5
    80003078:	304027f3          	csrr	a5,mie
    8000307c:	0807e793          	ori	a5,a5,128
    80003080:	30479073          	csrw	mie,a5
    80003084:	00813403          	ld	s0,8(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <system_main>:
    80003090:	fe010113          	addi	sp,sp,-32
    80003094:	00813823          	sd	s0,16(sp)
    80003098:	00913423          	sd	s1,8(sp)
    8000309c:	00113c23          	sd	ra,24(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	00000097          	auipc	ra,0x0
    800030a8:	0c4080e7          	jalr	196(ra) # 80003168 <cpuid>
    800030ac:	00004497          	auipc	s1,0x4
    800030b0:	33448493          	addi	s1,s1,820 # 800073e0 <started>
    800030b4:	02050263          	beqz	a0,800030d8 <system_main+0x48>
    800030b8:	0004a783          	lw	a5,0(s1)
    800030bc:	0007879b          	sext.w	a5,a5
    800030c0:	fe078ce3          	beqz	a5,800030b8 <system_main+0x28>
    800030c4:	0ff0000f          	fence
    800030c8:	00003517          	auipc	a0,0x3
    800030cc:	25850513          	addi	a0,a0,600 # 80006320 <CONSOLE_STATUS+0x310>
    800030d0:	00001097          	auipc	ra,0x1
    800030d4:	a7c080e7          	jalr	-1412(ra) # 80003b4c <panic>
    800030d8:	00001097          	auipc	ra,0x1
    800030dc:	9d0080e7          	jalr	-1584(ra) # 80003aa8 <consoleinit>
    800030e0:	00001097          	auipc	ra,0x1
    800030e4:	15c080e7          	jalr	348(ra) # 8000423c <printfinit>
    800030e8:	00003517          	auipc	a0,0x3
    800030ec:	1b850513          	addi	a0,a0,440 # 800062a0 <CONSOLE_STATUS+0x290>
    800030f0:	00001097          	auipc	ra,0x1
    800030f4:	ab8080e7          	jalr	-1352(ra) # 80003ba8 <__printf>
    800030f8:	00003517          	auipc	a0,0x3
    800030fc:	1f850513          	addi	a0,a0,504 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80003100:	00001097          	auipc	ra,0x1
    80003104:	aa8080e7          	jalr	-1368(ra) # 80003ba8 <__printf>
    80003108:	00003517          	auipc	a0,0x3
    8000310c:	19850513          	addi	a0,a0,408 # 800062a0 <CONSOLE_STATUS+0x290>
    80003110:	00001097          	auipc	ra,0x1
    80003114:	a98080e7          	jalr	-1384(ra) # 80003ba8 <__printf>
    80003118:	00001097          	auipc	ra,0x1
    8000311c:	4b0080e7          	jalr	1200(ra) # 800045c8 <kinit>
    80003120:	00000097          	auipc	ra,0x0
    80003124:	148080e7          	jalr	328(ra) # 80003268 <trapinit>
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	16c080e7          	jalr	364(ra) # 80003294 <trapinithart>
    80003130:	00000097          	auipc	ra,0x0
    80003134:	5c0080e7          	jalr	1472(ra) # 800036f0 <plicinit>
    80003138:	00000097          	auipc	ra,0x0
    8000313c:	5e0080e7          	jalr	1504(ra) # 80003718 <plicinithart>
    80003140:	00000097          	auipc	ra,0x0
    80003144:	078080e7          	jalr	120(ra) # 800031b8 <userinit>
    80003148:	0ff0000f          	fence
    8000314c:	00100793          	li	a5,1
    80003150:	00003517          	auipc	a0,0x3
    80003154:	1b850513          	addi	a0,a0,440 # 80006308 <CONSOLE_STATUS+0x2f8>
    80003158:	00f4a023          	sw	a5,0(s1)
    8000315c:	00001097          	auipc	ra,0x1
    80003160:	a4c080e7          	jalr	-1460(ra) # 80003ba8 <__printf>
    80003164:	0000006f          	j	80003164 <system_main+0xd4>

0000000080003168 <cpuid>:
    80003168:	ff010113          	addi	sp,sp,-16
    8000316c:	00813423          	sd	s0,8(sp)
    80003170:	01010413          	addi	s0,sp,16
    80003174:	00020513          	mv	a0,tp
    80003178:	00813403          	ld	s0,8(sp)
    8000317c:	0005051b          	sext.w	a0,a0
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <mycpu>:
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00813423          	sd	s0,8(sp)
    80003190:	01010413          	addi	s0,sp,16
    80003194:	00020793          	mv	a5,tp
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	0007879b          	sext.w	a5,a5
    800031a0:	00779793          	slli	a5,a5,0x7
    800031a4:	00005517          	auipc	a0,0x5
    800031a8:	2fc50513          	addi	a0,a0,764 # 800084a0 <cpus>
    800031ac:	00f50533          	add	a0,a0,a5
    800031b0:	01010113          	addi	sp,sp,16
    800031b4:	00008067          	ret

00000000800031b8 <userinit>:
    800031b8:	ff010113          	addi	sp,sp,-16
    800031bc:	00813423          	sd	s0,8(sp)
    800031c0:	01010413          	addi	s0,sp,16
    800031c4:	00813403          	ld	s0,8(sp)
    800031c8:	01010113          	addi	sp,sp,16
    800031cc:	ffffe317          	auipc	t1,0xffffe
    800031d0:	5a030067          	jr	1440(t1) # 8000176c <main>

00000000800031d4 <either_copyout>:
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00813023          	sd	s0,0(sp)
    800031dc:	00113423          	sd	ra,8(sp)
    800031e0:	01010413          	addi	s0,sp,16
    800031e4:	02051663          	bnez	a0,80003210 <either_copyout+0x3c>
    800031e8:	00058513          	mv	a0,a1
    800031ec:	00060593          	mv	a1,a2
    800031f0:	0006861b          	sext.w	a2,a3
    800031f4:	00002097          	auipc	ra,0x2
    800031f8:	c60080e7          	jalr	-928(ra) # 80004e54 <__memmove>
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	00000513          	li	a0,0
    80003208:	01010113          	addi	sp,sp,16
    8000320c:	00008067          	ret
    80003210:	00003517          	auipc	a0,0x3
    80003214:	13850513          	addi	a0,a0,312 # 80006348 <CONSOLE_STATUS+0x338>
    80003218:	00001097          	auipc	ra,0x1
    8000321c:	934080e7          	jalr	-1740(ra) # 80003b4c <panic>

0000000080003220 <either_copyin>:
    80003220:	ff010113          	addi	sp,sp,-16
    80003224:	00813023          	sd	s0,0(sp)
    80003228:	00113423          	sd	ra,8(sp)
    8000322c:	01010413          	addi	s0,sp,16
    80003230:	02059463          	bnez	a1,80003258 <either_copyin+0x38>
    80003234:	00060593          	mv	a1,a2
    80003238:	0006861b          	sext.w	a2,a3
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	c18080e7          	jalr	-1000(ra) # 80004e54 <__memmove>
    80003244:	00813083          	ld	ra,8(sp)
    80003248:	00013403          	ld	s0,0(sp)
    8000324c:	00000513          	li	a0,0
    80003250:	01010113          	addi	sp,sp,16
    80003254:	00008067          	ret
    80003258:	00003517          	auipc	a0,0x3
    8000325c:	11850513          	addi	a0,a0,280 # 80006370 <CONSOLE_STATUS+0x360>
    80003260:	00001097          	auipc	ra,0x1
    80003264:	8ec080e7          	jalr	-1812(ra) # 80003b4c <panic>

0000000080003268 <trapinit>:
    80003268:	ff010113          	addi	sp,sp,-16
    8000326c:	00813423          	sd	s0,8(sp)
    80003270:	01010413          	addi	s0,sp,16
    80003274:	00813403          	ld	s0,8(sp)
    80003278:	00003597          	auipc	a1,0x3
    8000327c:	12058593          	addi	a1,a1,288 # 80006398 <CONSOLE_STATUS+0x388>
    80003280:	00005517          	auipc	a0,0x5
    80003284:	2a050513          	addi	a0,a0,672 # 80008520 <tickslock>
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00001317          	auipc	t1,0x1
    80003290:	5cc30067          	jr	1484(t1) # 80004858 <initlock>

0000000080003294 <trapinithart>:
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813423          	sd	s0,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	00000797          	auipc	a5,0x0
    800032a4:	30078793          	addi	a5,a5,768 # 800035a0 <kernelvec>
    800032a8:	10579073          	csrw	stvec,a5
    800032ac:	00813403          	ld	s0,8(sp)
    800032b0:	01010113          	addi	sp,sp,16
    800032b4:	00008067          	ret

00000000800032b8 <usertrap>:
    800032b8:	ff010113          	addi	sp,sp,-16
    800032bc:	00813423          	sd	s0,8(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	00813403          	ld	s0,8(sp)
    800032c8:	01010113          	addi	sp,sp,16
    800032cc:	00008067          	ret

00000000800032d0 <usertrapret>:
    800032d0:	ff010113          	addi	sp,sp,-16
    800032d4:	00813423          	sd	s0,8(sp)
    800032d8:	01010413          	addi	s0,sp,16
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret

00000000800032e8 <kerneltrap>:
    800032e8:	fe010113          	addi	sp,sp,-32
    800032ec:	00813823          	sd	s0,16(sp)
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00913423          	sd	s1,8(sp)
    800032f8:	02010413          	addi	s0,sp,32
    800032fc:	142025f3          	csrr	a1,scause
    80003300:	100027f3          	csrr	a5,sstatus
    80003304:	0027f793          	andi	a5,a5,2
    80003308:	10079c63          	bnez	a5,80003420 <kerneltrap+0x138>
    8000330c:	142027f3          	csrr	a5,scause
    80003310:	0207ce63          	bltz	a5,8000334c <kerneltrap+0x64>
    80003314:	00003517          	auipc	a0,0x3
    80003318:	0cc50513          	addi	a0,a0,204 # 800063e0 <CONSOLE_STATUS+0x3d0>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	88c080e7          	jalr	-1908(ra) # 80003ba8 <__printf>
    80003324:	141025f3          	csrr	a1,sepc
    80003328:	14302673          	csrr	a2,stval
    8000332c:	00003517          	auipc	a0,0x3
    80003330:	0c450513          	addi	a0,a0,196 # 800063f0 <CONSOLE_STATUS+0x3e0>
    80003334:	00001097          	auipc	ra,0x1
    80003338:	874080e7          	jalr	-1932(ra) # 80003ba8 <__printf>
    8000333c:	00003517          	auipc	a0,0x3
    80003340:	0cc50513          	addi	a0,a0,204 # 80006408 <CONSOLE_STATUS+0x3f8>
    80003344:	00001097          	auipc	ra,0x1
    80003348:	808080e7          	jalr	-2040(ra) # 80003b4c <panic>
    8000334c:	0ff7f713          	andi	a4,a5,255
    80003350:	00900693          	li	a3,9
    80003354:	04d70063          	beq	a4,a3,80003394 <kerneltrap+0xac>
    80003358:	fff00713          	li	a4,-1
    8000335c:	03f71713          	slli	a4,a4,0x3f
    80003360:	00170713          	addi	a4,a4,1
    80003364:	fae798e3          	bne	a5,a4,80003314 <kerneltrap+0x2c>
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	e00080e7          	jalr	-512(ra) # 80003168 <cpuid>
    80003370:	06050663          	beqz	a0,800033dc <kerneltrap+0xf4>
    80003374:	144027f3          	csrr	a5,sip
    80003378:	ffd7f793          	andi	a5,a5,-3
    8000337c:	14479073          	csrw	sip,a5
    80003380:	01813083          	ld	ra,24(sp)
    80003384:	01013403          	ld	s0,16(sp)
    80003388:	00813483          	ld	s1,8(sp)
    8000338c:	02010113          	addi	sp,sp,32
    80003390:	00008067          	ret
    80003394:	00000097          	auipc	ra,0x0
    80003398:	3d0080e7          	jalr	976(ra) # 80003764 <plic_claim>
    8000339c:	00a00793          	li	a5,10
    800033a0:	00050493          	mv	s1,a0
    800033a4:	06f50863          	beq	a0,a5,80003414 <kerneltrap+0x12c>
    800033a8:	fc050ce3          	beqz	a0,80003380 <kerneltrap+0x98>
    800033ac:	00050593          	mv	a1,a0
    800033b0:	00003517          	auipc	a0,0x3
    800033b4:	01050513          	addi	a0,a0,16 # 800063c0 <CONSOLE_STATUS+0x3b0>
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	7f0080e7          	jalr	2032(ra) # 80003ba8 <__printf>
    800033c0:	01013403          	ld	s0,16(sp)
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	00048513          	mv	a0,s1
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	02010113          	addi	sp,sp,32
    800033d4:	00000317          	auipc	t1,0x0
    800033d8:	3c830067          	jr	968(t1) # 8000379c <plic_complete>
    800033dc:	00005517          	auipc	a0,0x5
    800033e0:	14450513          	addi	a0,a0,324 # 80008520 <tickslock>
    800033e4:	00001097          	auipc	ra,0x1
    800033e8:	498080e7          	jalr	1176(ra) # 8000487c <acquire>
    800033ec:	00004717          	auipc	a4,0x4
    800033f0:	ff870713          	addi	a4,a4,-8 # 800073e4 <ticks>
    800033f4:	00072783          	lw	a5,0(a4)
    800033f8:	00005517          	auipc	a0,0x5
    800033fc:	12850513          	addi	a0,a0,296 # 80008520 <tickslock>
    80003400:	0017879b          	addiw	a5,a5,1
    80003404:	00f72023          	sw	a5,0(a4)
    80003408:	00001097          	auipc	ra,0x1
    8000340c:	540080e7          	jalr	1344(ra) # 80004948 <release>
    80003410:	f65ff06f          	j	80003374 <kerneltrap+0x8c>
    80003414:	00001097          	auipc	ra,0x1
    80003418:	09c080e7          	jalr	156(ra) # 800044b0 <uartintr>
    8000341c:	fa5ff06f          	j	800033c0 <kerneltrap+0xd8>
    80003420:	00003517          	auipc	a0,0x3
    80003424:	f8050513          	addi	a0,a0,-128 # 800063a0 <CONSOLE_STATUS+0x390>
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	724080e7          	jalr	1828(ra) # 80003b4c <panic>

0000000080003430 <clockintr>:
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	02010413          	addi	s0,sp,32
    80003444:	00005497          	auipc	s1,0x5
    80003448:	0dc48493          	addi	s1,s1,220 # 80008520 <tickslock>
    8000344c:	00048513          	mv	a0,s1
    80003450:	00001097          	auipc	ra,0x1
    80003454:	42c080e7          	jalr	1068(ra) # 8000487c <acquire>
    80003458:	00004717          	auipc	a4,0x4
    8000345c:	f8c70713          	addi	a4,a4,-116 # 800073e4 <ticks>
    80003460:	00072783          	lw	a5,0(a4)
    80003464:	01013403          	ld	s0,16(sp)
    80003468:	01813083          	ld	ra,24(sp)
    8000346c:	00048513          	mv	a0,s1
    80003470:	0017879b          	addiw	a5,a5,1
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	00f72023          	sw	a5,0(a4)
    8000347c:	02010113          	addi	sp,sp,32
    80003480:	00001317          	auipc	t1,0x1
    80003484:	4c830067          	jr	1224(t1) # 80004948 <release>

0000000080003488 <devintr>:
    80003488:	142027f3          	csrr	a5,scause
    8000348c:	00000513          	li	a0,0
    80003490:	0007c463          	bltz	a5,80003498 <devintr+0x10>
    80003494:	00008067          	ret
    80003498:	fe010113          	addi	sp,sp,-32
    8000349c:	00813823          	sd	s0,16(sp)
    800034a0:	00113c23          	sd	ra,24(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	02010413          	addi	s0,sp,32
    800034ac:	0ff7f713          	andi	a4,a5,255
    800034b0:	00900693          	li	a3,9
    800034b4:	04d70c63          	beq	a4,a3,8000350c <devintr+0x84>
    800034b8:	fff00713          	li	a4,-1
    800034bc:	03f71713          	slli	a4,a4,0x3f
    800034c0:	00170713          	addi	a4,a4,1
    800034c4:	00e78c63          	beq	a5,a4,800034dc <devintr+0x54>
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00008067          	ret
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	c8c080e7          	jalr	-884(ra) # 80003168 <cpuid>
    800034e4:	06050663          	beqz	a0,80003550 <devintr+0xc8>
    800034e8:	144027f3          	csrr	a5,sip
    800034ec:	ffd7f793          	andi	a5,a5,-3
    800034f0:	14479073          	csrw	sip,a5
    800034f4:	01813083          	ld	ra,24(sp)
    800034f8:	01013403          	ld	s0,16(sp)
    800034fc:	00813483          	ld	s1,8(sp)
    80003500:	00200513          	li	a0,2
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	258080e7          	jalr	600(ra) # 80003764 <plic_claim>
    80003514:	00a00793          	li	a5,10
    80003518:	00050493          	mv	s1,a0
    8000351c:	06f50663          	beq	a0,a5,80003588 <devintr+0x100>
    80003520:	00100513          	li	a0,1
    80003524:	fa0482e3          	beqz	s1,800034c8 <devintr+0x40>
    80003528:	00048593          	mv	a1,s1
    8000352c:	00003517          	auipc	a0,0x3
    80003530:	e9450513          	addi	a0,a0,-364 # 800063c0 <CONSOLE_STATUS+0x3b0>
    80003534:	00000097          	auipc	ra,0x0
    80003538:	674080e7          	jalr	1652(ra) # 80003ba8 <__printf>
    8000353c:	00048513          	mv	a0,s1
    80003540:	00000097          	auipc	ra,0x0
    80003544:	25c080e7          	jalr	604(ra) # 8000379c <plic_complete>
    80003548:	00100513          	li	a0,1
    8000354c:	f7dff06f          	j	800034c8 <devintr+0x40>
    80003550:	00005517          	auipc	a0,0x5
    80003554:	fd050513          	addi	a0,a0,-48 # 80008520 <tickslock>
    80003558:	00001097          	auipc	ra,0x1
    8000355c:	324080e7          	jalr	804(ra) # 8000487c <acquire>
    80003560:	00004717          	auipc	a4,0x4
    80003564:	e8470713          	addi	a4,a4,-380 # 800073e4 <ticks>
    80003568:	00072783          	lw	a5,0(a4)
    8000356c:	00005517          	auipc	a0,0x5
    80003570:	fb450513          	addi	a0,a0,-76 # 80008520 <tickslock>
    80003574:	0017879b          	addiw	a5,a5,1
    80003578:	00f72023          	sw	a5,0(a4)
    8000357c:	00001097          	auipc	ra,0x1
    80003580:	3cc080e7          	jalr	972(ra) # 80004948 <release>
    80003584:	f65ff06f          	j	800034e8 <devintr+0x60>
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	f28080e7          	jalr	-216(ra) # 800044b0 <uartintr>
    80003590:	fadff06f          	j	8000353c <devintr+0xb4>
	...

00000000800035a0 <kernelvec>:
    800035a0:	f0010113          	addi	sp,sp,-256
    800035a4:	00113023          	sd	ra,0(sp)
    800035a8:	00213423          	sd	sp,8(sp)
    800035ac:	00313823          	sd	gp,16(sp)
    800035b0:	00413c23          	sd	tp,24(sp)
    800035b4:	02513023          	sd	t0,32(sp)
    800035b8:	02613423          	sd	t1,40(sp)
    800035bc:	02713823          	sd	t2,48(sp)
    800035c0:	02813c23          	sd	s0,56(sp)
    800035c4:	04913023          	sd	s1,64(sp)
    800035c8:	04a13423          	sd	a0,72(sp)
    800035cc:	04b13823          	sd	a1,80(sp)
    800035d0:	04c13c23          	sd	a2,88(sp)
    800035d4:	06d13023          	sd	a3,96(sp)
    800035d8:	06e13423          	sd	a4,104(sp)
    800035dc:	06f13823          	sd	a5,112(sp)
    800035e0:	07013c23          	sd	a6,120(sp)
    800035e4:	09113023          	sd	a7,128(sp)
    800035e8:	09213423          	sd	s2,136(sp)
    800035ec:	09313823          	sd	s3,144(sp)
    800035f0:	09413c23          	sd	s4,152(sp)
    800035f4:	0b513023          	sd	s5,160(sp)
    800035f8:	0b613423          	sd	s6,168(sp)
    800035fc:	0b713823          	sd	s7,176(sp)
    80003600:	0b813c23          	sd	s8,184(sp)
    80003604:	0d913023          	sd	s9,192(sp)
    80003608:	0da13423          	sd	s10,200(sp)
    8000360c:	0db13823          	sd	s11,208(sp)
    80003610:	0dc13c23          	sd	t3,216(sp)
    80003614:	0fd13023          	sd	t4,224(sp)
    80003618:	0fe13423          	sd	t5,232(sp)
    8000361c:	0ff13823          	sd	t6,240(sp)
    80003620:	cc9ff0ef          	jal	ra,800032e8 <kerneltrap>
    80003624:	00013083          	ld	ra,0(sp)
    80003628:	00813103          	ld	sp,8(sp)
    8000362c:	01013183          	ld	gp,16(sp)
    80003630:	02013283          	ld	t0,32(sp)
    80003634:	02813303          	ld	t1,40(sp)
    80003638:	03013383          	ld	t2,48(sp)
    8000363c:	03813403          	ld	s0,56(sp)
    80003640:	04013483          	ld	s1,64(sp)
    80003644:	04813503          	ld	a0,72(sp)
    80003648:	05013583          	ld	a1,80(sp)
    8000364c:	05813603          	ld	a2,88(sp)
    80003650:	06013683          	ld	a3,96(sp)
    80003654:	06813703          	ld	a4,104(sp)
    80003658:	07013783          	ld	a5,112(sp)
    8000365c:	07813803          	ld	a6,120(sp)
    80003660:	08013883          	ld	a7,128(sp)
    80003664:	08813903          	ld	s2,136(sp)
    80003668:	09013983          	ld	s3,144(sp)
    8000366c:	09813a03          	ld	s4,152(sp)
    80003670:	0a013a83          	ld	s5,160(sp)
    80003674:	0a813b03          	ld	s6,168(sp)
    80003678:	0b013b83          	ld	s7,176(sp)
    8000367c:	0b813c03          	ld	s8,184(sp)
    80003680:	0c013c83          	ld	s9,192(sp)
    80003684:	0c813d03          	ld	s10,200(sp)
    80003688:	0d013d83          	ld	s11,208(sp)
    8000368c:	0d813e03          	ld	t3,216(sp)
    80003690:	0e013e83          	ld	t4,224(sp)
    80003694:	0e813f03          	ld	t5,232(sp)
    80003698:	0f013f83          	ld	t6,240(sp)
    8000369c:	10010113          	addi	sp,sp,256
    800036a0:	10200073          	sret
    800036a4:	00000013          	nop
    800036a8:	00000013          	nop
    800036ac:	00000013          	nop

00000000800036b0 <timervec>:
    800036b0:	34051573          	csrrw	a0,mscratch,a0
    800036b4:	00b53023          	sd	a1,0(a0)
    800036b8:	00c53423          	sd	a2,8(a0)
    800036bc:	00d53823          	sd	a3,16(a0)
    800036c0:	01853583          	ld	a1,24(a0)
    800036c4:	02053603          	ld	a2,32(a0)
    800036c8:	0005b683          	ld	a3,0(a1)
    800036cc:	00c686b3          	add	a3,a3,a2
    800036d0:	00d5b023          	sd	a3,0(a1)
    800036d4:	00200593          	li	a1,2
    800036d8:	14459073          	csrw	sip,a1
    800036dc:	01053683          	ld	a3,16(a0)
    800036e0:	00853603          	ld	a2,8(a0)
    800036e4:	00053583          	ld	a1,0(a0)
    800036e8:	34051573          	csrrw	a0,mscratch,a0
    800036ec:	30200073          	mret

00000000800036f0 <plicinit>:
    800036f0:	ff010113          	addi	sp,sp,-16
    800036f4:	00813423          	sd	s0,8(sp)
    800036f8:	01010413          	addi	s0,sp,16
    800036fc:	00813403          	ld	s0,8(sp)
    80003700:	0c0007b7          	lui	a5,0xc000
    80003704:	00100713          	li	a4,1
    80003708:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000370c:	00e7a223          	sw	a4,4(a5)
    80003710:	01010113          	addi	sp,sp,16
    80003714:	00008067          	ret

0000000080003718 <plicinithart>:
    80003718:	ff010113          	addi	sp,sp,-16
    8000371c:	00813023          	sd	s0,0(sp)
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	01010413          	addi	s0,sp,16
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	a40080e7          	jalr	-1472(ra) # 80003168 <cpuid>
    80003730:	0085171b          	slliw	a4,a0,0x8
    80003734:	0c0027b7          	lui	a5,0xc002
    80003738:	00e787b3          	add	a5,a5,a4
    8000373c:	40200713          	li	a4,1026
    80003740:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003744:	00813083          	ld	ra,8(sp)
    80003748:	00013403          	ld	s0,0(sp)
    8000374c:	00d5151b          	slliw	a0,a0,0xd
    80003750:	0c2017b7          	lui	a5,0xc201
    80003754:	00a78533          	add	a0,a5,a0
    80003758:	00052023          	sw	zero,0(a0)
    8000375c:	01010113          	addi	sp,sp,16
    80003760:	00008067          	ret

0000000080003764 <plic_claim>:
    80003764:	ff010113          	addi	sp,sp,-16
    80003768:	00813023          	sd	s0,0(sp)
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	01010413          	addi	s0,sp,16
    80003774:	00000097          	auipc	ra,0x0
    80003778:	9f4080e7          	jalr	-1548(ra) # 80003168 <cpuid>
    8000377c:	00813083          	ld	ra,8(sp)
    80003780:	00013403          	ld	s0,0(sp)
    80003784:	00d5151b          	slliw	a0,a0,0xd
    80003788:	0c2017b7          	lui	a5,0xc201
    8000378c:	00a78533          	add	a0,a5,a0
    80003790:	00452503          	lw	a0,4(a0)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <plic_complete>:
    8000379c:	fe010113          	addi	sp,sp,-32
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	02010413          	addi	s0,sp,32
    800037b0:	00050493          	mv	s1,a0
    800037b4:	00000097          	auipc	ra,0x0
    800037b8:	9b4080e7          	jalr	-1612(ra) # 80003168 <cpuid>
    800037bc:	01813083          	ld	ra,24(sp)
    800037c0:	01013403          	ld	s0,16(sp)
    800037c4:	00d5179b          	slliw	a5,a0,0xd
    800037c8:	0c201737          	lui	a4,0xc201
    800037cc:	00f707b3          	add	a5,a4,a5
    800037d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800037d4:	00813483          	ld	s1,8(sp)
    800037d8:	02010113          	addi	sp,sp,32
    800037dc:	00008067          	ret

00000000800037e0 <consolewrite>:
    800037e0:	fb010113          	addi	sp,sp,-80
    800037e4:	04813023          	sd	s0,64(sp)
    800037e8:	04113423          	sd	ra,72(sp)
    800037ec:	02913c23          	sd	s1,56(sp)
    800037f0:	03213823          	sd	s2,48(sp)
    800037f4:	03313423          	sd	s3,40(sp)
    800037f8:	03413023          	sd	s4,32(sp)
    800037fc:	01513c23          	sd	s5,24(sp)
    80003800:	05010413          	addi	s0,sp,80
    80003804:	06c05c63          	blez	a2,8000387c <consolewrite+0x9c>
    80003808:	00060993          	mv	s3,a2
    8000380c:	00050a13          	mv	s4,a0
    80003810:	00058493          	mv	s1,a1
    80003814:	00000913          	li	s2,0
    80003818:	fff00a93          	li	s5,-1
    8000381c:	01c0006f          	j	80003838 <consolewrite+0x58>
    80003820:	fbf44503          	lbu	a0,-65(s0)
    80003824:	0019091b          	addiw	s2,s2,1
    80003828:	00148493          	addi	s1,s1,1
    8000382c:	00001097          	auipc	ra,0x1
    80003830:	a9c080e7          	jalr	-1380(ra) # 800042c8 <uartputc>
    80003834:	03298063          	beq	s3,s2,80003854 <consolewrite+0x74>
    80003838:	00048613          	mv	a2,s1
    8000383c:	00100693          	li	a3,1
    80003840:	000a0593          	mv	a1,s4
    80003844:	fbf40513          	addi	a0,s0,-65
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	9d8080e7          	jalr	-1576(ra) # 80003220 <either_copyin>
    80003850:	fd5518e3          	bne	a0,s5,80003820 <consolewrite+0x40>
    80003854:	04813083          	ld	ra,72(sp)
    80003858:	04013403          	ld	s0,64(sp)
    8000385c:	03813483          	ld	s1,56(sp)
    80003860:	02813983          	ld	s3,40(sp)
    80003864:	02013a03          	ld	s4,32(sp)
    80003868:	01813a83          	ld	s5,24(sp)
    8000386c:	00090513          	mv	a0,s2
    80003870:	03013903          	ld	s2,48(sp)
    80003874:	05010113          	addi	sp,sp,80
    80003878:	00008067          	ret
    8000387c:	00000913          	li	s2,0
    80003880:	fd5ff06f          	j	80003854 <consolewrite+0x74>

0000000080003884 <consoleread>:
    80003884:	f9010113          	addi	sp,sp,-112
    80003888:	06813023          	sd	s0,96(sp)
    8000388c:	04913c23          	sd	s1,88(sp)
    80003890:	05213823          	sd	s2,80(sp)
    80003894:	05313423          	sd	s3,72(sp)
    80003898:	05413023          	sd	s4,64(sp)
    8000389c:	03513c23          	sd	s5,56(sp)
    800038a0:	03613823          	sd	s6,48(sp)
    800038a4:	03713423          	sd	s7,40(sp)
    800038a8:	03813023          	sd	s8,32(sp)
    800038ac:	06113423          	sd	ra,104(sp)
    800038b0:	01913c23          	sd	s9,24(sp)
    800038b4:	07010413          	addi	s0,sp,112
    800038b8:	00060b93          	mv	s7,a2
    800038bc:	00050913          	mv	s2,a0
    800038c0:	00058c13          	mv	s8,a1
    800038c4:	00060b1b          	sext.w	s6,a2
    800038c8:	00005497          	auipc	s1,0x5
    800038cc:	c8048493          	addi	s1,s1,-896 # 80008548 <cons>
    800038d0:	00400993          	li	s3,4
    800038d4:	fff00a13          	li	s4,-1
    800038d8:	00a00a93          	li	s5,10
    800038dc:	05705e63          	blez	s7,80003938 <consoleread+0xb4>
    800038e0:	09c4a703          	lw	a4,156(s1)
    800038e4:	0984a783          	lw	a5,152(s1)
    800038e8:	0007071b          	sext.w	a4,a4
    800038ec:	08e78463          	beq	a5,a4,80003974 <consoleread+0xf0>
    800038f0:	07f7f713          	andi	a4,a5,127
    800038f4:	00e48733          	add	a4,s1,a4
    800038f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800038fc:	0017869b          	addiw	a3,a5,1
    80003900:	08d4ac23          	sw	a3,152(s1)
    80003904:	00070c9b          	sext.w	s9,a4
    80003908:	0b370663          	beq	a4,s3,800039b4 <consoleread+0x130>
    8000390c:	00100693          	li	a3,1
    80003910:	f9f40613          	addi	a2,s0,-97
    80003914:	000c0593          	mv	a1,s8
    80003918:	00090513          	mv	a0,s2
    8000391c:	f8e40fa3          	sb	a4,-97(s0)
    80003920:	00000097          	auipc	ra,0x0
    80003924:	8b4080e7          	jalr	-1868(ra) # 800031d4 <either_copyout>
    80003928:	01450863          	beq	a0,s4,80003938 <consoleread+0xb4>
    8000392c:	001c0c13          	addi	s8,s8,1
    80003930:	fffb8b9b          	addiw	s7,s7,-1
    80003934:	fb5c94e3          	bne	s9,s5,800038dc <consoleread+0x58>
    80003938:	000b851b          	sext.w	a0,s7
    8000393c:	06813083          	ld	ra,104(sp)
    80003940:	06013403          	ld	s0,96(sp)
    80003944:	05813483          	ld	s1,88(sp)
    80003948:	05013903          	ld	s2,80(sp)
    8000394c:	04813983          	ld	s3,72(sp)
    80003950:	04013a03          	ld	s4,64(sp)
    80003954:	03813a83          	ld	s5,56(sp)
    80003958:	02813b83          	ld	s7,40(sp)
    8000395c:	02013c03          	ld	s8,32(sp)
    80003960:	01813c83          	ld	s9,24(sp)
    80003964:	40ab053b          	subw	a0,s6,a0
    80003968:	03013b03          	ld	s6,48(sp)
    8000396c:	07010113          	addi	sp,sp,112
    80003970:	00008067          	ret
    80003974:	00001097          	auipc	ra,0x1
    80003978:	1d8080e7          	jalr	472(ra) # 80004b4c <push_on>
    8000397c:	0984a703          	lw	a4,152(s1)
    80003980:	09c4a783          	lw	a5,156(s1)
    80003984:	0007879b          	sext.w	a5,a5
    80003988:	fef70ce3          	beq	a4,a5,80003980 <consoleread+0xfc>
    8000398c:	00001097          	auipc	ra,0x1
    80003990:	234080e7          	jalr	564(ra) # 80004bc0 <pop_on>
    80003994:	0984a783          	lw	a5,152(s1)
    80003998:	07f7f713          	andi	a4,a5,127
    8000399c:	00e48733          	add	a4,s1,a4
    800039a0:	01874703          	lbu	a4,24(a4)
    800039a4:	0017869b          	addiw	a3,a5,1
    800039a8:	08d4ac23          	sw	a3,152(s1)
    800039ac:	00070c9b          	sext.w	s9,a4
    800039b0:	f5371ee3          	bne	a4,s3,8000390c <consoleread+0x88>
    800039b4:	000b851b          	sext.w	a0,s7
    800039b8:	f96bf2e3          	bgeu	s7,s6,8000393c <consoleread+0xb8>
    800039bc:	08f4ac23          	sw	a5,152(s1)
    800039c0:	f7dff06f          	j	8000393c <consoleread+0xb8>

00000000800039c4 <consputc>:
    800039c4:	10000793          	li	a5,256
    800039c8:	00f50663          	beq	a0,a5,800039d4 <consputc+0x10>
    800039cc:	00001317          	auipc	t1,0x1
    800039d0:	9f430067          	jr	-1548(t1) # 800043c0 <uartputc_sync>
    800039d4:	ff010113          	addi	sp,sp,-16
    800039d8:	00113423          	sd	ra,8(sp)
    800039dc:	00813023          	sd	s0,0(sp)
    800039e0:	01010413          	addi	s0,sp,16
    800039e4:	00800513          	li	a0,8
    800039e8:	00001097          	auipc	ra,0x1
    800039ec:	9d8080e7          	jalr	-1576(ra) # 800043c0 <uartputc_sync>
    800039f0:	02000513          	li	a0,32
    800039f4:	00001097          	auipc	ra,0x1
    800039f8:	9cc080e7          	jalr	-1588(ra) # 800043c0 <uartputc_sync>
    800039fc:	00013403          	ld	s0,0(sp)
    80003a00:	00813083          	ld	ra,8(sp)
    80003a04:	00800513          	li	a0,8
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00001317          	auipc	t1,0x1
    80003a10:	9b430067          	jr	-1612(t1) # 800043c0 <uartputc_sync>

0000000080003a14 <consoleintr>:
    80003a14:	fe010113          	addi	sp,sp,-32
    80003a18:	00813823          	sd	s0,16(sp)
    80003a1c:	00913423          	sd	s1,8(sp)
    80003a20:	01213023          	sd	s2,0(sp)
    80003a24:	00113c23          	sd	ra,24(sp)
    80003a28:	02010413          	addi	s0,sp,32
    80003a2c:	00005917          	auipc	s2,0x5
    80003a30:	b1c90913          	addi	s2,s2,-1252 # 80008548 <cons>
    80003a34:	00050493          	mv	s1,a0
    80003a38:	00090513          	mv	a0,s2
    80003a3c:	00001097          	auipc	ra,0x1
    80003a40:	e40080e7          	jalr	-448(ra) # 8000487c <acquire>
    80003a44:	02048c63          	beqz	s1,80003a7c <consoleintr+0x68>
    80003a48:	0a092783          	lw	a5,160(s2)
    80003a4c:	09892703          	lw	a4,152(s2)
    80003a50:	07f00693          	li	a3,127
    80003a54:	40e7873b          	subw	a4,a5,a4
    80003a58:	02e6e263          	bltu	a3,a4,80003a7c <consoleintr+0x68>
    80003a5c:	00d00713          	li	a4,13
    80003a60:	04e48063          	beq	s1,a4,80003aa0 <consoleintr+0x8c>
    80003a64:	07f7f713          	andi	a4,a5,127
    80003a68:	00e90733          	add	a4,s2,a4
    80003a6c:	0017879b          	addiw	a5,a5,1
    80003a70:	0af92023          	sw	a5,160(s2)
    80003a74:	00970c23          	sb	s1,24(a4)
    80003a78:	08f92e23          	sw	a5,156(s2)
    80003a7c:	01013403          	ld	s0,16(sp)
    80003a80:	01813083          	ld	ra,24(sp)
    80003a84:	00813483          	ld	s1,8(sp)
    80003a88:	00013903          	ld	s2,0(sp)
    80003a8c:	00005517          	auipc	a0,0x5
    80003a90:	abc50513          	addi	a0,a0,-1348 # 80008548 <cons>
    80003a94:	02010113          	addi	sp,sp,32
    80003a98:	00001317          	auipc	t1,0x1
    80003a9c:	eb030067          	jr	-336(t1) # 80004948 <release>
    80003aa0:	00a00493          	li	s1,10
    80003aa4:	fc1ff06f          	j	80003a64 <consoleintr+0x50>

0000000080003aa8 <consoleinit>:
    80003aa8:	fe010113          	addi	sp,sp,-32
    80003aac:	00113c23          	sd	ra,24(sp)
    80003ab0:	00813823          	sd	s0,16(sp)
    80003ab4:	00913423          	sd	s1,8(sp)
    80003ab8:	02010413          	addi	s0,sp,32
    80003abc:	00005497          	auipc	s1,0x5
    80003ac0:	a8c48493          	addi	s1,s1,-1396 # 80008548 <cons>
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	00003597          	auipc	a1,0x3
    80003acc:	95058593          	addi	a1,a1,-1712 # 80006418 <CONSOLE_STATUS+0x408>
    80003ad0:	00001097          	auipc	ra,0x1
    80003ad4:	d88080e7          	jalr	-632(ra) # 80004858 <initlock>
    80003ad8:	00000097          	auipc	ra,0x0
    80003adc:	7ac080e7          	jalr	1964(ra) # 80004284 <uartinit>
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00000797          	auipc	a5,0x0
    80003aec:	d9c78793          	addi	a5,a5,-612 # 80003884 <consoleread>
    80003af0:	0af4bc23          	sd	a5,184(s1)
    80003af4:	00000797          	auipc	a5,0x0
    80003af8:	cec78793          	addi	a5,a5,-788 # 800037e0 <consolewrite>
    80003afc:	0cf4b023          	sd	a5,192(s1)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	02010113          	addi	sp,sp,32
    80003b08:	00008067          	ret

0000000080003b0c <console_read>:
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00813423          	sd	s0,8(sp)
    80003b14:	01010413          	addi	s0,sp,16
    80003b18:	00813403          	ld	s0,8(sp)
    80003b1c:	00005317          	auipc	t1,0x5
    80003b20:	ae433303          	ld	t1,-1308(t1) # 80008600 <devsw+0x10>
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00030067          	jr	t1

0000000080003b2c <console_write>:
    80003b2c:	ff010113          	addi	sp,sp,-16
    80003b30:	00813423          	sd	s0,8(sp)
    80003b34:	01010413          	addi	s0,sp,16
    80003b38:	00813403          	ld	s0,8(sp)
    80003b3c:	00005317          	auipc	t1,0x5
    80003b40:	acc33303          	ld	t1,-1332(t1) # 80008608 <devsw+0x18>
    80003b44:	01010113          	addi	sp,sp,16
    80003b48:	00030067          	jr	t1

0000000080003b4c <panic>:
    80003b4c:	fe010113          	addi	sp,sp,-32
    80003b50:	00113c23          	sd	ra,24(sp)
    80003b54:	00813823          	sd	s0,16(sp)
    80003b58:	00913423          	sd	s1,8(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	00050493          	mv	s1,a0
    80003b64:	00003517          	auipc	a0,0x3
    80003b68:	8bc50513          	addi	a0,a0,-1860 # 80006420 <CONSOLE_STATUS+0x410>
    80003b6c:	00005797          	auipc	a5,0x5
    80003b70:	b207ae23          	sw	zero,-1220(a5) # 800086a8 <pr+0x18>
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	034080e7          	jalr	52(ra) # 80003ba8 <__printf>
    80003b7c:	00048513          	mv	a0,s1
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	028080e7          	jalr	40(ra) # 80003ba8 <__printf>
    80003b88:	00002517          	auipc	a0,0x2
    80003b8c:	71850513          	addi	a0,a0,1816 # 800062a0 <CONSOLE_STATUS+0x290>
    80003b90:	00000097          	auipc	ra,0x0
    80003b94:	018080e7          	jalr	24(ra) # 80003ba8 <__printf>
    80003b98:	00100793          	li	a5,1
    80003b9c:	00004717          	auipc	a4,0x4
    80003ba0:	84f72623          	sw	a5,-1972(a4) # 800073e8 <panicked>
    80003ba4:	0000006f          	j	80003ba4 <panic+0x58>

0000000080003ba8 <__printf>:
    80003ba8:	f3010113          	addi	sp,sp,-208
    80003bac:	08813023          	sd	s0,128(sp)
    80003bb0:	07313423          	sd	s3,104(sp)
    80003bb4:	09010413          	addi	s0,sp,144
    80003bb8:	05813023          	sd	s8,64(sp)
    80003bbc:	08113423          	sd	ra,136(sp)
    80003bc0:	06913c23          	sd	s1,120(sp)
    80003bc4:	07213823          	sd	s2,112(sp)
    80003bc8:	07413023          	sd	s4,96(sp)
    80003bcc:	05513c23          	sd	s5,88(sp)
    80003bd0:	05613823          	sd	s6,80(sp)
    80003bd4:	05713423          	sd	s7,72(sp)
    80003bd8:	03913c23          	sd	s9,56(sp)
    80003bdc:	03a13823          	sd	s10,48(sp)
    80003be0:	03b13423          	sd	s11,40(sp)
    80003be4:	00005317          	auipc	t1,0x5
    80003be8:	aac30313          	addi	t1,t1,-1364 # 80008690 <pr>
    80003bec:	01832c03          	lw	s8,24(t1)
    80003bf0:	00b43423          	sd	a1,8(s0)
    80003bf4:	00c43823          	sd	a2,16(s0)
    80003bf8:	00d43c23          	sd	a3,24(s0)
    80003bfc:	02e43023          	sd	a4,32(s0)
    80003c00:	02f43423          	sd	a5,40(s0)
    80003c04:	03043823          	sd	a6,48(s0)
    80003c08:	03143c23          	sd	a7,56(s0)
    80003c0c:	00050993          	mv	s3,a0
    80003c10:	4a0c1663          	bnez	s8,800040bc <__printf+0x514>
    80003c14:	60098c63          	beqz	s3,8000422c <__printf+0x684>
    80003c18:	0009c503          	lbu	a0,0(s3)
    80003c1c:	00840793          	addi	a5,s0,8
    80003c20:	f6f43c23          	sd	a5,-136(s0)
    80003c24:	00000493          	li	s1,0
    80003c28:	22050063          	beqz	a0,80003e48 <__printf+0x2a0>
    80003c2c:	00002a37          	lui	s4,0x2
    80003c30:	00018ab7          	lui	s5,0x18
    80003c34:	000f4b37          	lui	s6,0xf4
    80003c38:	00989bb7          	lui	s7,0x989
    80003c3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003c40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003c44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003c48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003c4c:	00148c9b          	addiw	s9,s1,1
    80003c50:	02500793          	li	a5,37
    80003c54:	01998933          	add	s2,s3,s9
    80003c58:	38f51263          	bne	a0,a5,80003fdc <__printf+0x434>
    80003c5c:	00094783          	lbu	a5,0(s2)
    80003c60:	00078c9b          	sext.w	s9,a5
    80003c64:	1e078263          	beqz	a5,80003e48 <__printf+0x2a0>
    80003c68:	0024849b          	addiw	s1,s1,2
    80003c6c:	07000713          	li	a4,112
    80003c70:	00998933          	add	s2,s3,s1
    80003c74:	38e78a63          	beq	a5,a4,80004008 <__printf+0x460>
    80003c78:	20f76863          	bltu	a4,a5,80003e88 <__printf+0x2e0>
    80003c7c:	42a78863          	beq	a5,a0,800040ac <__printf+0x504>
    80003c80:	06400713          	li	a4,100
    80003c84:	40e79663          	bne	a5,a4,80004090 <__printf+0x4e8>
    80003c88:	f7843783          	ld	a5,-136(s0)
    80003c8c:	0007a603          	lw	a2,0(a5)
    80003c90:	00878793          	addi	a5,a5,8
    80003c94:	f6f43c23          	sd	a5,-136(s0)
    80003c98:	42064a63          	bltz	a2,800040cc <__printf+0x524>
    80003c9c:	00a00713          	li	a4,10
    80003ca0:	02e677bb          	remuw	a5,a2,a4
    80003ca4:	00002d97          	auipc	s11,0x2
    80003ca8:	7a4d8d93          	addi	s11,s11,1956 # 80006448 <digits>
    80003cac:	00900593          	li	a1,9
    80003cb0:	0006051b          	sext.w	a0,a2
    80003cb4:	00000c93          	li	s9,0
    80003cb8:	02079793          	slli	a5,a5,0x20
    80003cbc:	0207d793          	srli	a5,a5,0x20
    80003cc0:	00fd87b3          	add	a5,s11,a5
    80003cc4:	0007c783          	lbu	a5,0(a5)
    80003cc8:	02e656bb          	divuw	a3,a2,a4
    80003ccc:	f8f40023          	sb	a5,-128(s0)
    80003cd0:	14c5d863          	bge	a1,a2,80003e20 <__printf+0x278>
    80003cd4:	06300593          	li	a1,99
    80003cd8:	00100c93          	li	s9,1
    80003cdc:	02e6f7bb          	remuw	a5,a3,a4
    80003ce0:	02079793          	slli	a5,a5,0x20
    80003ce4:	0207d793          	srli	a5,a5,0x20
    80003ce8:	00fd87b3          	add	a5,s11,a5
    80003cec:	0007c783          	lbu	a5,0(a5)
    80003cf0:	02e6d73b          	divuw	a4,a3,a4
    80003cf4:	f8f400a3          	sb	a5,-127(s0)
    80003cf8:	12a5f463          	bgeu	a1,a0,80003e20 <__printf+0x278>
    80003cfc:	00a00693          	li	a3,10
    80003d00:	00900593          	li	a1,9
    80003d04:	02d777bb          	remuw	a5,a4,a3
    80003d08:	02079793          	slli	a5,a5,0x20
    80003d0c:	0207d793          	srli	a5,a5,0x20
    80003d10:	00fd87b3          	add	a5,s11,a5
    80003d14:	0007c503          	lbu	a0,0(a5)
    80003d18:	02d757bb          	divuw	a5,a4,a3
    80003d1c:	f8a40123          	sb	a0,-126(s0)
    80003d20:	48e5f263          	bgeu	a1,a4,800041a4 <__printf+0x5fc>
    80003d24:	06300513          	li	a0,99
    80003d28:	02d7f5bb          	remuw	a1,a5,a3
    80003d2c:	02059593          	slli	a1,a1,0x20
    80003d30:	0205d593          	srli	a1,a1,0x20
    80003d34:	00bd85b3          	add	a1,s11,a1
    80003d38:	0005c583          	lbu	a1,0(a1)
    80003d3c:	02d7d7bb          	divuw	a5,a5,a3
    80003d40:	f8b401a3          	sb	a1,-125(s0)
    80003d44:	48e57263          	bgeu	a0,a4,800041c8 <__printf+0x620>
    80003d48:	3e700513          	li	a0,999
    80003d4c:	02d7f5bb          	remuw	a1,a5,a3
    80003d50:	02059593          	slli	a1,a1,0x20
    80003d54:	0205d593          	srli	a1,a1,0x20
    80003d58:	00bd85b3          	add	a1,s11,a1
    80003d5c:	0005c583          	lbu	a1,0(a1)
    80003d60:	02d7d7bb          	divuw	a5,a5,a3
    80003d64:	f8b40223          	sb	a1,-124(s0)
    80003d68:	46e57663          	bgeu	a0,a4,800041d4 <__printf+0x62c>
    80003d6c:	02d7f5bb          	remuw	a1,a5,a3
    80003d70:	02059593          	slli	a1,a1,0x20
    80003d74:	0205d593          	srli	a1,a1,0x20
    80003d78:	00bd85b3          	add	a1,s11,a1
    80003d7c:	0005c583          	lbu	a1,0(a1)
    80003d80:	02d7d7bb          	divuw	a5,a5,a3
    80003d84:	f8b402a3          	sb	a1,-123(s0)
    80003d88:	46ea7863          	bgeu	s4,a4,800041f8 <__printf+0x650>
    80003d8c:	02d7f5bb          	remuw	a1,a5,a3
    80003d90:	02059593          	slli	a1,a1,0x20
    80003d94:	0205d593          	srli	a1,a1,0x20
    80003d98:	00bd85b3          	add	a1,s11,a1
    80003d9c:	0005c583          	lbu	a1,0(a1)
    80003da0:	02d7d7bb          	divuw	a5,a5,a3
    80003da4:	f8b40323          	sb	a1,-122(s0)
    80003da8:	3eeaf863          	bgeu	s5,a4,80004198 <__printf+0x5f0>
    80003dac:	02d7f5bb          	remuw	a1,a5,a3
    80003db0:	02059593          	slli	a1,a1,0x20
    80003db4:	0205d593          	srli	a1,a1,0x20
    80003db8:	00bd85b3          	add	a1,s11,a1
    80003dbc:	0005c583          	lbu	a1,0(a1)
    80003dc0:	02d7d7bb          	divuw	a5,a5,a3
    80003dc4:	f8b403a3          	sb	a1,-121(s0)
    80003dc8:	42eb7e63          	bgeu	s6,a4,80004204 <__printf+0x65c>
    80003dcc:	02d7f5bb          	remuw	a1,a5,a3
    80003dd0:	02059593          	slli	a1,a1,0x20
    80003dd4:	0205d593          	srli	a1,a1,0x20
    80003dd8:	00bd85b3          	add	a1,s11,a1
    80003ddc:	0005c583          	lbu	a1,0(a1)
    80003de0:	02d7d7bb          	divuw	a5,a5,a3
    80003de4:	f8b40423          	sb	a1,-120(s0)
    80003de8:	42ebfc63          	bgeu	s7,a4,80004220 <__printf+0x678>
    80003dec:	02079793          	slli	a5,a5,0x20
    80003df0:	0207d793          	srli	a5,a5,0x20
    80003df4:	00fd8db3          	add	s11,s11,a5
    80003df8:	000dc703          	lbu	a4,0(s11)
    80003dfc:	00a00793          	li	a5,10
    80003e00:	00900c93          	li	s9,9
    80003e04:	f8e404a3          	sb	a4,-119(s0)
    80003e08:	00065c63          	bgez	a2,80003e20 <__printf+0x278>
    80003e0c:	f9040713          	addi	a4,s0,-112
    80003e10:	00f70733          	add	a4,a4,a5
    80003e14:	02d00693          	li	a3,45
    80003e18:	fed70823          	sb	a3,-16(a4)
    80003e1c:	00078c93          	mv	s9,a5
    80003e20:	f8040793          	addi	a5,s0,-128
    80003e24:	01978cb3          	add	s9,a5,s9
    80003e28:	f7f40d13          	addi	s10,s0,-129
    80003e2c:	000cc503          	lbu	a0,0(s9)
    80003e30:	fffc8c93          	addi	s9,s9,-1
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	b90080e7          	jalr	-1136(ra) # 800039c4 <consputc>
    80003e3c:	ffac98e3          	bne	s9,s10,80003e2c <__printf+0x284>
    80003e40:	00094503          	lbu	a0,0(s2)
    80003e44:	e00514e3          	bnez	a0,80003c4c <__printf+0xa4>
    80003e48:	1a0c1663          	bnez	s8,80003ff4 <__printf+0x44c>
    80003e4c:	08813083          	ld	ra,136(sp)
    80003e50:	08013403          	ld	s0,128(sp)
    80003e54:	07813483          	ld	s1,120(sp)
    80003e58:	07013903          	ld	s2,112(sp)
    80003e5c:	06813983          	ld	s3,104(sp)
    80003e60:	06013a03          	ld	s4,96(sp)
    80003e64:	05813a83          	ld	s5,88(sp)
    80003e68:	05013b03          	ld	s6,80(sp)
    80003e6c:	04813b83          	ld	s7,72(sp)
    80003e70:	04013c03          	ld	s8,64(sp)
    80003e74:	03813c83          	ld	s9,56(sp)
    80003e78:	03013d03          	ld	s10,48(sp)
    80003e7c:	02813d83          	ld	s11,40(sp)
    80003e80:	0d010113          	addi	sp,sp,208
    80003e84:	00008067          	ret
    80003e88:	07300713          	li	a4,115
    80003e8c:	1ce78a63          	beq	a5,a4,80004060 <__printf+0x4b8>
    80003e90:	07800713          	li	a4,120
    80003e94:	1ee79e63          	bne	a5,a4,80004090 <__printf+0x4e8>
    80003e98:	f7843783          	ld	a5,-136(s0)
    80003e9c:	0007a703          	lw	a4,0(a5)
    80003ea0:	00878793          	addi	a5,a5,8
    80003ea4:	f6f43c23          	sd	a5,-136(s0)
    80003ea8:	28074263          	bltz	a4,8000412c <__printf+0x584>
    80003eac:	00002d97          	auipc	s11,0x2
    80003eb0:	59cd8d93          	addi	s11,s11,1436 # 80006448 <digits>
    80003eb4:	00f77793          	andi	a5,a4,15
    80003eb8:	00fd87b3          	add	a5,s11,a5
    80003ebc:	0007c683          	lbu	a3,0(a5)
    80003ec0:	00f00613          	li	a2,15
    80003ec4:	0007079b          	sext.w	a5,a4
    80003ec8:	f8d40023          	sb	a3,-128(s0)
    80003ecc:	0047559b          	srliw	a1,a4,0x4
    80003ed0:	0047569b          	srliw	a3,a4,0x4
    80003ed4:	00000c93          	li	s9,0
    80003ed8:	0ee65063          	bge	a2,a4,80003fb8 <__printf+0x410>
    80003edc:	00f6f693          	andi	a3,a3,15
    80003ee0:	00dd86b3          	add	a3,s11,a3
    80003ee4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003ee8:	0087d79b          	srliw	a5,a5,0x8
    80003eec:	00100c93          	li	s9,1
    80003ef0:	f8d400a3          	sb	a3,-127(s0)
    80003ef4:	0cb67263          	bgeu	a2,a1,80003fb8 <__printf+0x410>
    80003ef8:	00f7f693          	andi	a3,a5,15
    80003efc:	00dd86b3          	add	a3,s11,a3
    80003f00:	0006c583          	lbu	a1,0(a3)
    80003f04:	00f00613          	li	a2,15
    80003f08:	0047d69b          	srliw	a3,a5,0x4
    80003f0c:	f8b40123          	sb	a1,-126(s0)
    80003f10:	0047d593          	srli	a1,a5,0x4
    80003f14:	28f67e63          	bgeu	a2,a5,800041b0 <__printf+0x608>
    80003f18:	00f6f693          	andi	a3,a3,15
    80003f1c:	00dd86b3          	add	a3,s11,a3
    80003f20:	0006c503          	lbu	a0,0(a3)
    80003f24:	0087d813          	srli	a6,a5,0x8
    80003f28:	0087d69b          	srliw	a3,a5,0x8
    80003f2c:	f8a401a3          	sb	a0,-125(s0)
    80003f30:	28b67663          	bgeu	a2,a1,800041bc <__printf+0x614>
    80003f34:	00f6f693          	andi	a3,a3,15
    80003f38:	00dd86b3          	add	a3,s11,a3
    80003f3c:	0006c583          	lbu	a1,0(a3)
    80003f40:	00c7d513          	srli	a0,a5,0xc
    80003f44:	00c7d69b          	srliw	a3,a5,0xc
    80003f48:	f8b40223          	sb	a1,-124(s0)
    80003f4c:	29067a63          	bgeu	a2,a6,800041e0 <__printf+0x638>
    80003f50:	00f6f693          	andi	a3,a3,15
    80003f54:	00dd86b3          	add	a3,s11,a3
    80003f58:	0006c583          	lbu	a1,0(a3)
    80003f5c:	0107d813          	srli	a6,a5,0x10
    80003f60:	0107d69b          	srliw	a3,a5,0x10
    80003f64:	f8b402a3          	sb	a1,-123(s0)
    80003f68:	28a67263          	bgeu	a2,a0,800041ec <__printf+0x644>
    80003f6c:	00f6f693          	andi	a3,a3,15
    80003f70:	00dd86b3          	add	a3,s11,a3
    80003f74:	0006c683          	lbu	a3,0(a3)
    80003f78:	0147d79b          	srliw	a5,a5,0x14
    80003f7c:	f8d40323          	sb	a3,-122(s0)
    80003f80:	21067663          	bgeu	a2,a6,8000418c <__printf+0x5e4>
    80003f84:	02079793          	slli	a5,a5,0x20
    80003f88:	0207d793          	srli	a5,a5,0x20
    80003f8c:	00fd8db3          	add	s11,s11,a5
    80003f90:	000dc683          	lbu	a3,0(s11)
    80003f94:	00800793          	li	a5,8
    80003f98:	00700c93          	li	s9,7
    80003f9c:	f8d403a3          	sb	a3,-121(s0)
    80003fa0:	00075c63          	bgez	a4,80003fb8 <__printf+0x410>
    80003fa4:	f9040713          	addi	a4,s0,-112
    80003fa8:	00f70733          	add	a4,a4,a5
    80003fac:	02d00693          	li	a3,45
    80003fb0:	fed70823          	sb	a3,-16(a4)
    80003fb4:	00078c93          	mv	s9,a5
    80003fb8:	f8040793          	addi	a5,s0,-128
    80003fbc:	01978cb3          	add	s9,a5,s9
    80003fc0:	f7f40d13          	addi	s10,s0,-129
    80003fc4:	000cc503          	lbu	a0,0(s9)
    80003fc8:	fffc8c93          	addi	s9,s9,-1
    80003fcc:	00000097          	auipc	ra,0x0
    80003fd0:	9f8080e7          	jalr	-1544(ra) # 800039c4 <consputc>
    80003fd4:	ff9d18e3          	bne	s10,s9,80003fc4 <__printf+0x41c>
    80003fd8:	0100006f          	j	80003fe8 <__printf+0x440>
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	9e8080e7          	jalr	-1560(ra) # 800039c4 <consputc>
    80003fe4:	000c8493          	mv	s1,s9
    80003fe8:	00094503          	lbu	a0,0(s2)
    80003fec:	c60510e3          	bnez	a0,80003c4c <__printf+0xa4>
    80003ff0:	e40c0ee3          	beqz	s8,80003e4c <__printf+0x2a4>
    80003ff4:	00004517          	auipc	a0,0x4
    80003ff8:	69c50513          	addi	a0,a0,1692 # 80008690 <pr>
    80003ffc:	00001097          	auipc	ra,0x1
    80004000:	94c080e7          	jalr	-1716(ra) # 80004948 <release>
    80004004:	e49ff06f          	j	80003e4c <__printf+0x2a4>
    80004008:	f7843783          	ld	a5,-136(s0)
    8000400c:	03000513          	li	a0,48
    80004010:	01000d13          	li	s10,16
    80004014:	00878713          	addi	a4,a5,8
    80004018:	0007bc83          	ld	s9,0(a5)
    8000401c:	f6e43c23          	sd	a4,-136(s0)
    80004020:	00000097          	auipc	ra,0x0
    80004024:	9a4080e7          	jalr	-1628(ra) # 800039c4 <consputc>
    80004028:	07800513          	li	a0,120
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	998080e7          	jalr	-1640(ra) # 800039c4 <consputc>
    80004034:	00002d97          	auipc	s11,0x2
    80004038:	414d8d93          	addi	s11,s11,1044 # 80006448 <digits>
    8000403c:	03ccd793          	srli	a5,s9,0x3c
    80004040:	00fd87b3          	add	a5,s11,a5
    80004044:	0007c503          	lbu	a0,0(a5)
    80004048:	fffd0d1b          	addiw	s10,s10,-1
    8000404c:	004c9c93          	slli	s9,s9,0x4
    80004050:	00000097          	auipc	ra,0x0
    80004054:	974080e7          	jalr	-1676(ra) # 800039c4 <consputc>
    80004058:	fe0d12e3          	bnez	s10,8000403c <__printf+0x494>
    8000405c:	f8dff06f          	j	80003fe8 <__printf+0x440>
    80004060:	f7843783          	ld	a5,-136(s0)
    80004064:	0007bc83          	ld	s9,0(a5)
    80004068:	00878793          	addi	a5,a5,8
    8000406c:	f6f43c23          	sd	a5,-136(s0)
    80004070:	000c9a63          	bnez	s9,80004084 <__printf+0x4dc>
    80004074:	1080006f          	j	8000417c <__printf+0x5d4>
    80004078:	001c8c93          	addi	s9,s9,1
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	948080e7          	jalr	-1720(ra) # 800039c4 <consputc>
    80004084:	000cc503          	lbu	a0,0(s9)
    80004088:	fe0518e3          	bnez	a0,80004078 <__printf+0x4d0>
    8000408c:	f5dff06f          	j	80003fe8 <__printf+0x440>
    80004090:	02500513          	li	a0,37
    80004094:	00000097          	auipc	ra,0x0
    80004098:	930080e7          	jalr	-1744(ra) # 800039c4 <consputc>
    8000409c:	000c8513          	mv	a0,s9
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	924080e7          	jalr	-1756(ra) # 800039c4 <consputc>
    800040a8:	f41ff06f          	j	80003fe8 <__printf+0x440>
    800040ac:	02500513          	li	a0,37
    800040b0:	00000097          	auipc	ra,0x0
    800040b4:	914080e7          	jalr	-1772(ra) # 800039c4 <consputc>
    800040b8:	f31ff06f          	j	80003fe8 <__printf+0x440>
    800040bc:	00030513          	mv	a0,t1
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	7bc080e7          	jalr	1980(ra) # 8000487c <acquire>
    800040c8:	b4dff06f          	j	80003c14 <__printf+0x6c>
    800040cc:	40c0053b          	negw	a0,a2
    800040d0:	00a00713          	li	a4,10
    800040d4:	02e576bb          	remuw	a3,a0,a4
    800040d8:	00002d97          	auipc	s11,0x2
    800040dc:	370d8d93          	addi	s11,s11,880 # 80006448 <digits>
    800040e0:	ff700593          	li	a1,-9
    800040e4:	02069693          	slli	a3,a3,0x20
    800040e8:	0206d693          	srli	a3,a3,0x20
    800040ec:	00dd86b3          	add	a3,s11,a3
    800040f0:	0006c683          	lbu	a3,0(a3)
    800040f4:	02e557bb          	divuw	a5,a0,a4
    800040f8:	f8d40023          	sb	a3,-128(s0)
    800040fc:	10b65e63          	bge	a2,a1,80004218 <__printf+0x670>
    80004100:	06300593          	li	a1,99
    80004104:	02e7f6bb          	remuw	a3,a5,a4
    80004108:	02069693          	slli	a3,a3,0x20
    8000410c:	0206d693          	srli	a3,a3,0x20
    80004110:	00dd86b3          	add	a3,s11,a3
    80004114:	0006c683          	lbu	a3,0(a3)
    80004118:	02e7d73b          	divuw	a4,a5,a4
    8000411c:	00200793          	li	a5,2
    80004120:	f8d400a3          	sb	a3,-127(s0)
    80004124:	bca5ece3          	bltu	a1,a0,80003cfc <__printf+0x154>
    80004128:	ce5ff06f          	j	80003e0c <__printf+0x264>
    8000412c:	40e007bb          	negw	a5,a4
    80004130:	00002d97          	auipc	s11,0x2
    80004134:	318d8d93          	addi	s11,s11,792 # 80006448 <digits>
    80004138:	00f7f693          	andi	a3,a5,15
    8000413c:	00dd86b3          	add	a3,s11,a3
    80004140:	0006c583          	lbu	a1,0(a3)
    80004144:	ff100613          	li	a2,-15
    80004148:	0047d69b          	srliw	a3,a5,0x4
    8000414c:	f8b40023          	sb	a1,-128(s0)
    80004150:	0047d59b          	srliw	a1,a5,0x4
    80004154:	0ac75e63          	bge	a4,a2,80004210 <__printf+0x668>
    80004158:	00f6f693          	andi	a3,a3,15
    8000415c:	00dd86b3          	add	a3,s11,a3
    80004160:	0006c603          	lbu	a2,0(a3)
    80004164:	00f00693          	li	a3,15
    80004168:	0087d79b          	srliw	a5,a5,0x8
    8000416c:	f8c400a3          	sb	a2,-127(s0)
    80004170:	d8b6e4e3          	bltu	a3,a1,80003ef8 <__printf+0x350>
    80004174:	00200793          	li	a5,2
    80004178:	e2dff06f          	j	80003fa4 <__printf+0x3fc>
    8000417c:	00002c97          	auipc	s9,0x2
    80004180:	2acc8c93          	addi	s9,s9,684 # 80006428 <CONSOLE_STATUS+0x418>
    80004184:	02800513          	li	a0,40
    80004188:	ef1ff06f          	j	80004078 <__printf+0x4d0>
    8000418c:	00700793          	li	a5,7
    80004190:	00600c93          	li	s9,6
    80004194:	e0dff06f          	j	80003fa0 <__printf+0x3f8>
    80004198:	00700793          	li	a5,7
    8000419c:	00600c93          	li	s9,6
    800041a0:	c69ff06f          	j	80003e08 <__printf+0x260>
    800041a4:	00300793          	li	a5,3
    800041a8:	00200c93          	li	s9,2
    800041ac:	c5dff06f          	j	80003e08 <__printf+0x260>
    800041b0:	00300793          	li	a5,3
    800041b4:	00200c93          	li	s9,2
    800041b8:	de9ff06f          	j	80003fa0 <__printf+0x3f8>
    800041bc:	00400793          	li	a5,4
    800041c0:	00300c93          	li	s9,3
    800041c4:	dddff06f          	j	80003fa0 <__printf+0x3f8>
    800041c8:	00400793          	li	a5,4
    800041cc:	00300c93          	li	s9,3
    800041d0:	c39ff06f          	j	80003e08 <__printf+0x260>
    800041d4:	00500793          	li	a5,5
    800041d8:	00400c93          	li	s9,4
    800041dc:	c2dff06f          	j	80003e08 <__printf+0x260>
    800041e0:	00500793          	li	a5,5
    800041e4:	00400c93          	li	s9,4
    800041e8:	db9ff06f          	j	80003fa0 <__printf+0x3f8>
    800041ec:	00600793          	li	a5,6
    800041f0:	00500c93          	li	s9,5
    800041f4:	dadff06f          	j	80003fa0 <__printf+0x3f8>
    800041f8:	00600793          	li	a5,6
    800041fc:	00500c93          	li	s9,5
    80004200:	c09ff06f          	j	80003e08 <__printf+0x260>
    80004204:	00800793          	li	a5,8
    80004208:	00700c93          	li	s9,7
    8000420c:	bfdff06f          	j	80003e08 <__printf+0x260>
    80004210:	00100793          	li	a5,1
    80004214:	d91ff06f          	j	80003fa4 <__printf+0x3fc>
    80004218:	00100793          	li	a5,1
    8000421c:	bf1ff06f          	j	80003e0c <__printf+0x264>
    80004220:	00900793          	li	a5,9
    80004224:	00800c93          	li	s9,8
    80004228:	be1ff06f          	j	80003e08 <__printf+0x260>
    8000422c:	00002517          	auipc	a0,0x2
    80004230:	20450513          	addi	a0,a0,516 # 80006430 <CONSOLE_STATUS+0x420>
    80004234:	00000097          	auipc	ra,0x0
    80004238:	918080e7          	jalr	-1768(ra) # 80003b4c <panic>

000000008000423c <printfinit>:
    8000423c:	fe010113          	addi	sp,sp,-32
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00913423          	sd	s1,8(sp)
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	02010413          	addi	s0,sp,32
    80004250:	00004497          	auipc	s1,0x4
    80004254:	44048493          	addi	s1,s1,1088 # 80008690 <pr>
    80004258:	00048513          	mv	a0,s1
    8000425c:	00002597          	auipc	a1,0x2
    80004260:	1e458593          	addi	a1,a1,484 # 80006440 <CONSOLE_STATUS+0x430>
    80004264:	00000097          	auipc	ra,0x0
    80004268:	5f4080e7          	jalr	1524(ra) # 80004858 <initlock>
    8000426c:	01813083          	ld	ra,24(sp)
    80004270:	01013403          	ld	s0,16(sp)
    80004274:	0004ac23          	sw	zero,24(s1)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	02010113          	addi	sp,sp,32
    80004280:	00008067          	ret

0000000080004284 <uartinit>:
    80004284:	ff010113          	addi	sp,sp,-16
    80004288:	00813423          	sd	s0,8(sp)
    8000428c:	01010413          	addi	s0,sp,16
    80004290:	100007b7          	lui	a5,0x10000
    80004294:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004298:	f8000713          	li	a4,-128
    8000429c:	00e781a3          	sb	a4,3(a5)
    800042a0:	00300713          	li	a4,3
    800042a4:	00e78023          	sb	a4,0(a5)
    800042a8:	000780a3          	sb	zero,1(a5)
    800042ac:	00e781a3          	sb	a4,3(a5)
    800042b0:	00700693          	li	a3,7
    800042b4:	00d78123          	sb	a3,2(a5)
    800042b8:	00e780a3          	sb	a4,1(a5)
    800042bc:	00813403          	ld	s0,8(sp)
    800042c0:	01010113          	addi	sp,sp,16
    800042c4:	00008067          	ret

00000000800042c8 <uartputc>:
    800042c8:	00003797          	auipc	a5,0x3
    800042cc:	1207a783          	lw	a5,288(a5) # 800073e8 <panicked>
    800042d0:	00078463          	beqz	a5,800042d8 <uartputc+0x10>
    800042d4:	0000006f          	j	800042d4 <uartputc+0xc>
    800042d8:	fd010113          	addi	sp,sp,-48
    800042dc:	02813023          	sd	s0,32(sp)
    800042e0:	00913c23          	sd	s1,24(sp)
    800042e4:	01213823          	sd	s2,16(sp)
    800042e8:	01313423          	sd	s3,8(sp)
    800042ec:	02113423          	sd	ra,40(sp)
    800042f0:	03010413          	addi	s0,sp,48
    800042f4:	00003917          	auipc	s2,0x3
    800042f8:	0fc90913          	addi	s2,s2,252 # 800073f0 <uart_tx_r>
    800042fc:	00093783          	ld	a5,0(s2)
    80004300:	00003497          	auipc	s1,0x3
    80004304:	0f848493          	addi	s1,s1,248 # 800073f8 <uart_tx_w>
    80004308:	0004b703          	ld	a4,0(s1)
    8000430c:	02078693          	addi	a3,a5,32
    80004310:	00050993          	mv	s3,a0
    80004314:	02e69c63          	bne	a3,a4,8000434c <uartputc+0x84>
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	834080e7          	jalr	-1996(ra) # 80004b4c <push_on>
    80004320:	00093783          	ld	a5,0(s2)
    80004324:	0004b703          	ld	a4,0(s1)
    80004328:	02078793          	addi	a5,a5,32
    8000432c:	00e79463          	bne	a5,a4,80004334 <uartputc+0x6c>
    80004330:	0000006f          	j	80004330 <uartputc+0x68>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	88c080e7          	jalr	-1908(ra) # 80004bc0 <pop_on>
    8000433c:	00093783          	ld	a5,0(s2)
    80004340:	0004b703          	ld	a4,0(s1)
    80004344:	02078693          	addi	a3,a5,32
    80004348:	fce688e3          	beq	a3,a4,80004318 <uartputc+0x50>
    8000434c:	01f77693          	andi	a3,a4,31
    80004350:	00004597          	auipc	a1,0x4
    80004354:	36058593          	addi	a1,a1,864 # 800086b0 <uart_tx_buf>
    80004358:	00d586b3          	add	a3,a1,a3
    8000435c:	00170713          	addi	a4,a4,1
    80004360:	01368023          	sb	s3,0(a3)
    80004364:	00e4b023          	sd	a4,0(s1)
    80004368:	10000637          	lui	a2,0x10000
    8000436c:	02f71063          	bne	a4,a5,8000438c <uartputc+0xc4>
    80004370:	0340006f          	j	800043a4 <uartputc+0xdc>
    80004374:	00074703          	lbu	a4,0(a4)
    80004378:	00f93023          	sd	a5,0(s2)
    8000437c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004380:	00093783          	ld	a5,0(s2)
    80004384:	0004b703          	ld	a4,0(s1)
    80004388:	00f70e63          	beq	a4,a5,800043a4 <uartputc+0xdc>
    8000438c:	00564683          	lbu	a3,5(a2)
    80004390:	01f7f713          	andi	a4,a5,31
    80004394:	00e58733          	add	a4,a1,a4
    80004398:	0206f693          	andi	a3,a3,32
    8000439c:	00178793          	addi	a5,a5,1
    800043a0:	fc069ae3          	bnez	a3,80004374 <uartputc+0xac>
    800043a4:	02813083          	ld	ra,40(sp)
    800043a8:	02013403          	ld	s0,32(sp)
    800043ac:	01813483          	ld	s1,24(sp)
    800043b0:	01013903          	ld	s2,16(sp)
    800043b4:	00813983          	ld	s3,8(sp)
    800043b8:	03010113          	addi	sp,sp,48
    800043bc:	00008067          	ret

00000000800043c0 <uartputc_sync>:
    800043c0:	ff010113          	addi	sp,sp,-16
    800043c4:	00813423          	sd	s0,8(sp)
    800043c8:	01010413          	addi	s0,sp,16
    800043cc:	00003717          	auipc	a4,0x3
    800043d0:	01c72703          	lw	a4,28(a4) # 800073e8 <panicked>
    800043d4:	02071663          	bnez	a4,80004400 <uartputc_sync+0x40>
    800043d8:	00050793          	mv	a5,a0
    800043dc:	100006b7          	lui	a3,0x10000
    800043e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800043e4:	02077713          	andi	a4,a4,32
    800043e8:	fe070ce3          	beqz	a4,800043e0 <uartputc_sync+0x20>
    800043ec:	0ff7f793          	andi	a5,a5,255
    800043f0:	00f68023          	sb	a5,0(a3)
    800043f4:	00813403          	ld	s0,8(sp)
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00008067          	ret
    80004400:	0000006f          	j	80004400 <uartputc_sync+0x40>

0000000080004404 <uartstart>:
    80004404:	ff010113          	addi	sp,sp,-16
    80004408:	00813423          	sd	s0,8(sp)
    8000440c:	01010413          	addi	s0,sp,16
    80004410:	00003617          	auipc	a2,0x3
    80004414:	fe060613          	addi	a2,a2,-32 # 800073f0 <uart_tx_r>
    80004418:	00003517          	auipc	a0,0x3
    8000441c:	fe050513          	addi	a0,a0,-32 # 800073f8 <uart_tx_w>
    80004420:	00063783          	ld	a5,0(a2)
    80004424:	00053703          	ld	a4,0(a0)
    80004428:	04f70263          	beq	a4,a5,8000446c <uartstart+0x68>
    8000442c:	100005b7          	lui	a1,0x10000
    80004430:	00004817          	auipc	a6,0x4
    80004434:	28080813          	addi	a6,a6,640 # 800086b0 <uart_tx_buf>
    80004438:	01c0006f          	j	80004454 <uartstart+0x50>
    8000443c:	0006c703          	lbu	a4,0(a3)
    80004440:	00f63023          	sd	a5,0(a2)
    80004444:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004448:	00063783          	ld	a5,0(a2)
    8000444c:	00053703          	ld	a4,0(a0)
    80004450:	00f70e63          	beq	a4,a5,8000446c <uartstart+0x68>
    80004454:	01f7f713          	andi	a4,a5,31
    80004458:	00e806b3          	add	a3,a6,a4
    8000445c:	0055c703          	lbu	a4,5(a1)
    80004460:	00178793          	addi	a5,a5,1
    80004464:	02077713          	andi	a4,a4,32
    80004468:	fc071ae3          	bnez	a4,8000443c <uartstart+0x38>
    8000446c:	00813403          	ld	s0,8(sp)
    80004470:	01010113          	addi	sp,sp,16
    80004474:	00008067          	ret

0000000080004478 <uartgetc>:
    80004478:	ff010113          	addi	sp,sp,-16
    8000447c:	00813423          	sd	s0,8(sp)
    80004480:	01010413          	addi	s0,sp,16
    80004484:	10000737          	lui	a4,0x10000
    80004488:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000448c:	0017f793          	andi	a5,a5,1
    80004490:	00078c63          	beqz	a5,800044a8 <uartgetc+0x30>
    80004494:	00074503          	lbu	a0,0(a4)
    80004498:	0ff57513          	andi	a0,a0,255
    8000449c:	00813403          	ld	s0,8(sp)
    800044a0:	01010113          	addi	sp,sp,16
    800044a4:	00008067          	ret
    800044a8:	fff00513          	li	a0,-1
    800044ac:	ff1ff06f          	j	8000449c <uartgetc+0x24>

00000000800044b0 <uartintr>:
    800044b0:	100007b7          	lui	a5,0x10000
    800044b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800044b8:	0017f793          	andi	a5,a5,1
    800044bc:	0a078463          	beqz	a5,80004564 <uartintr+0xb4>
    800044c0:	fe010113          	addi	sp,sp,-32
    800044c4:	00813823          	sd	s0,16(sp)
    800044c8:	00913423          	sd	s1,8(sp)
    800044cc:	00113c23          	sd	ra,24(sp)
    800044d0:	02010413          	addi	s0,sp,32
    800044d4:	100004b7          	lui	s1,0x10000
    800044d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800044dc:	0ff57513          	andi	a0,a0,255
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	534080e7          	jalr	1332(ra) # 80003a14 <consoleintr>
    800044e8:	0054c783          	lbu	a5,5(s1)
    800044ec:	0017f793          	andi	a5,a5,1
    800044f0:	fe0794e3          	bnez	a5,800044d8 <uartintr+0x28>
    800044f4:	00003617          	auipc	a2,0x3
    800044f8:	efc60613          	addi	a2,a2,-260 # 800073f0 <uart_tx_r>
    800044fc:	00003517          	auipc	a0,0x3
    80004500:	efc50513          	addi	a0,a0,-260 # 800073f8 <uart_tx_w>
    80004504:	00063783          	ld	a5,0(a2)
    80004508:	00053703          	ld	a4,0(a0)
    8000450c:	04f70263          	beq	a4,a5,80004550 <uartintr+0xa0>
    80004510:	100005b7          	lui	a1,0x10000
    80004514:	00004817          	auipc	a6,0x4
    80004518:	19c80813          	addi	a6,a6,412 # 800086b0 <uart_tx_buf>
    8000451c:	01c0006f          	j	80004538 <uartintr+0x88>
    80004520:	0006c703          	lbu	a4,0(a3)
    80004524:	00f63023          	sd	a5,0(a2)
    80004528:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000452c:	00063783          	ld	a5,0(a2)
    80004530:	00053703          	ld	a4,0(a0)
    80004534:	00f70e63          	beq	a4,a5,80004550 <uartintr+0xa0>
    80004538:	01f7f713          	andi	a4,a5,31
    8000453c:	00e806b3          	add	a3,a6,a4
    80004540:	0055c703          	lbu	a4,5(a1)
    80004544:	00178793          	addi	a5,a5,1
    80004548:	02077713          	andi	a4,a4,32
    8000454c:	fc071ae3          	bnez	a4,80004520 <uartintr+0x70>
    80004550:	01813083          	ld	ra,24(sp)
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	00813483          	ld	s1,8(sp)
    8000455c:	02010113          	addi	sp,sp,32
    80004560:	00008067          	ret
    80004564:	00003617          	auipc	a2,0x3
    80004568:	e8c60613          	addi	a2,a2,-372 # 800073f0 <uart_tx_r>
    8000456c:	00003517          	auipc	a0,0x3
    80004570:	e8c50513          	addi	a0,a0,-372 # 800073f8 <uart_tx_w>
    80004574:	00063783          	ld	a5,0(a2)
    80004578:	00053703          	ld	a4,0(a0)
    8000457c:	04f70263          	beq	a4,a5,800045c0 <uartintr+0x110>
    80004580:	100005b7          	lui	a1,0x10000
    80004584:	00004817          	auipc	a6,0x4
    80004588:	12c80813          	addi	a6,a6,300 # 800086b0 <uart_tx_buf>
    8000458c:	01c0006f          	j	800045a8 <uartintr+0xf8>
    80004590:	0006c703          	lbu	a4,0(a3)
    80004594:	00f63023          	sd	a5,0(a2)
    80004598:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000459c:	00063783          	ld	a5,0(a2)
    800045a0:	00053703          	ld	a4,0(a0)
    800045a4:	02f70063          	beq	a4,a5,800045c4 <uartintr+0x114>
    800045a8:	01f7f713          	andi	a4,a5,31
    800045ac:	00e806b3          	add	a3,a6,a4
    800045b0:	0055c703          	lbu	a4,5(a1)
    800045b4:	00178793          	addi	a5,a5,1
    800045b8:	02077713          	andi	a4,a4,32
    800045bc:	fc071ae3          	bnez	a4,80004590 <uartintr+0xe0>
    800045c0:	00008067          	ret
    800045c4:	00008067          	ret

00000000800045c8 <kinit>:
    800045c8:	fc010113          	addi	sp,sp,-64
    800045cc:	02913423          	sd	s1,40(sp)
    800045d0:	fffff7b7          	lui	a5,0xfffff
    800045d4:	00005497          	auipc	s1,0x5
    800045d8:	0fb48493          	addi	s1,s1,251 # 800096cf <end+0xfff>
    800045dc:	02813823          	sd	s0,48(sp)
    800045e0:	01313c23          	sd	s3,24(sp)
    800045e4:	00f4f4b3          	and	s1,s1,a5
    800045e8:	02113c23          	sd	ra,56(sp)
    800045ec:	03213023          	sd	s2,32(sp)
    800045f0:	01413823          	sd	s4,16(sp)
    800045f4:	01513423          	sd	s5,8(sp)
    800045f8:	04010413          	addi	s0,sp,64
    800045fc:	000017b7          	lui	a5,0x1
    80004600:	01100993          	li	s3,17
    80004604:	00f487b3          	add	a5,s1,a5
    80004608:	01b99993          	slli	s3,s3,0x1b
    8000460c:	06f9e063          	bltu	s3,a5,8000466c <kinit+0xa4>
    80004610:	00004a97          	auipc	s5,0x4
    80004614:	0c0a8a93          	addi	s5,s5,192 # 800086d0 <end>
    80004618:	0754ec63          	bltu	s1,s5,80004690 <kinit+0xc8>
    8000461c:	0734fa63          	bgeu	s1,s3,80004690 <kinit+0xc8>
    80004620:	00088a37          	lui	s4,0x88
    80004624:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004628:	00003917          	auipc	s2,0x3
    8000462c:	dd890913          	addi	s2,s2,-552 # 80007400 <kmem>
    80004630:	00ca1a13          	slli	s4,s4,0xc
    80004634:	0140006f          	j	80004648 <kinit+0x80>
    80004638:	000017b7          	lui	a5,0x1
    8000463c:	00f484b3          	add	s1,s1,a5
    80004640:	0554e863          	bltu	s1,s5,80004690 <kinit+0xc8>
    80004644:	0534f663          	bgeu	s1,s3,80004690 <kinit+0xc8>
    80004648:	00001637          	lui	a2,0x1
    8000464c:	00100593          	li	a1,1
    80004650:	00048513          	mv	a0,s1
    80004654:	00000097          	auipc	ra,0x0
    80004658:	5e4080e7          	jalr	1508(ra) # 80004c38 <__memset>
    8000465c:	00093783          	ld	a5,0(s2)
    80004660:	00f4b023          	sd	a5,0(s1)
    80004664:	00993023          	sd	s1,0(s2)
    80004668:	fd4498e3          	bne	s1,s4,80004638 <kinit+0x70>
    8000466c:	03813083          	ld	ra,56(sp)
    80004670:	03013403          	ld	s0,48(sp)
    80004674:	02813483          	ld	s1,40(sp)
    80004678:	02013903          	ld	s2,32(sp)
    8000467c:	01813983          	ld	s3,24(sp)
    80004680:	01013a03          	ld	s4,16(sp)
    80004684:	00813a83          	ld	s5,8(sp)
    80004688:	04010113          	addi	sp,sp,64
    8000468c:	00008067          	ret
    80004690:	00002517          	auipc	a0,0x2
    80004694:	dd050513          	addi	a0,a0,-560 # 80006460 <digits+0x18>
    80004698:	fffff097          	auipc	ra,0xfffff
    8000469c:	4b4080e7          	jalr	1204(ra) # 80003b4c <panic>

00000000800046a0 <freerange>:
    800046a0:	fc010113          	addi	sp,sp,-64
    800046a4:	000017b7          	lui	a5,0x1
    800046a8:	02913423          	sd	s1,40(sp)
    800046ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800046b0:	009504b3          	add	s1,a0,s1
    800046b4:	fffff537          	lui	a0,0xfffff
    800046b8:	02813823          	sd	s0,48(sp)
    800046bc:	02113c23          	sd	ra,56(sp)
    800046c0:	03213023          	sd	s2,32(sp)
    800046c4:	01313c23          	sd	s3,24(sp)
    800046c8:	01413823          	sd	s4,16(sp)
    800046cc:	01513423          	sd	s5,8(sp)
    800046d0:	01613023          	sd	s6,0(sp)
    800046d4:	04010413          	addi	s0,sp,64
    800046d8:	00a4f4b3          	and	s1,s1,a0
    800046dc:	00f487b3          	add	a5,s1,a5
    800046e0:	06f5e463          	bltu	a1,a5,80004748 <freerange+0xa8>
    800046e4:	00004a97          	auipc	s5,0x4
    800046e8:	feca8a93          	addi	s5,s5,-20 # 800086d0 <end>
    800046ec:	0954e263          	bltu	s1,s5,80004770 <freerange+0xd0>
    800046f0:	01100993          	li	s3,17
    800046f4:	01b99993          	slli	s3,s3,0x1b
    800046f8:	0734fc63          	bgeu	s1,s3,80004770 <freerange+0xd0>
    800046fc:	00058a13          	mv	s4,a1
    80004700:	00003917          	auipc	s2,0x3
    80004704:	d0090913          	addi	s2,s2,-768 # 80007400 <kmem>
    80004708:	00002b37          	lui	s6,0x2
    8000470c:	0140006f          	j	80004720 <freerange+0x80>
    80004710:	000017b7          	lui	a5,0x1
    80004714:	00f484b3          	add	s1,s1,a5
    80004718:	0554ec63          	bltu	s1,s5,80004770 <freerange+0xd0>
    8000471c:	0534fa63          	bgeu	s1,s3,80004770 <freerange+0xd0>
    80004720:	00001637          	lui	a2,0x1
    80004724:	00100593          	li	a1,1
    80004728:	00048513          	mv	a0,s1
    8000472c:	00000097          	auipc	ra,0x0
    80004730:	50c080e7          	jalr	1292(ra) # 80004c38 <__memset>
    80004734:	00093703          	ld	a4,0(s2)
    80004738:	016487b3          	add	a5,s1,s6
    8000473c:	00e4b023          	sd	a4,0(s1)
    80004740:	00993023          	sd	s1,0(s2)
    80004744:	fcfa76e3          	bgeu	s4,a5,80004710 <freerange+0x70>
    80004748:	03813083          	ld	ra,56(sp)
    8000474c:	03013403          	ld	s0,48(sp)
    80004750:	02813483          	ld	s1,40(sp)
    80004754:	02013903          	ld	s2,32(sp)
    80004758:	01813983          	ld	s3,24(sp)
    8000475c:	01013a03          	ld	s4,16(sp)
    80004760:	00813a83          	ld	s5,8(sp)
    80004764:	00013b03          	ld	s6,0(sp)
    80004768:	04010113          	addi	sp,sp,64
    8000476c:	00008067          	ret
    80004770:	00002517          	auipc	a0,0x2
    80004774:	cf050513          	addi	a0,a0,-784 # 80006460 <digits+0x18>
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	3d4080e7          	jalr	980(ra) # 80003b4c <panic>

0000000080004780 <kfree>:
    80004780:	fe010113          	addi	sp,sp,-32
    80004784:	00813823          	sd	s0,16(sp)
    80004788:	00113c23          	sd	ra,24(sp)
    8000478c:	00913423          	sd	s1,8(sp)
    80004790:	02010413          	addi	s0,sp,32
    80004794:	03451793          	slli	a5,a0,0x34
    80004798:	04079c63          	bnez	a5,800047f0 <kfree+0x70>
    8000479c:	00004797          	auipc	a5,0x4
    800047a0:	f3478793          	addi	a5,a5,-204 # 800086d0 <end>
    800047a4:	00050493          	mv	s1,a0
    800047a8:	04f56463          	bltu	a0,a5,800047f0 <kfree+0x70>
    800047ac:	01100793          	li	a5,17
    800047b0:	01b79793          	slli	a5,a5,0x1b
    800047b4:	02f57e63          	bgeu	a0,a5,800047f0 <kfree+0x70>
    800047b8:	00001637          	lui	a2,0x1
    800047bc:	00100593          	li	a1,1
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	478080e7          	jalr	1144(ra) # 80004c38 <__memset>
    800047c8:	00003797          	auipc	a5,0x3
    800047cc:	c3878793          	addi	a5,a5,-968 # 80007400 <kmem>
    800047d0:	0007b703          	ld	a4,0(a5)
    800047d4:	01813083          	ld	ra,24(sp)
    800047d8:	01013403          	ld	s0,16(sp)
    800047dc:	00e4b023          	sd	a4,0(s1)
    800047e0:	0097b023          	sd	s1,0(a5)
    800047e4:	00813483          	ld	s1,8(sp)
    800047e8:	02010113          	addi	sp,sp,32
    800047ec:	00008067          	ret
    800047f0:	00002517          	auipc	a0,0x2
    800047f4:	c7050513          	addi	a0,a0,-912 # 80006460 <digits+0x18>
    800047f8:	fffff097          	auipc	ra,0xfffff
    800047fc:	354080e7          	jalr	852(ra) # 80003b4c <panic>

0000000080004800 <kalloc>:
    80004800:	fe010113          	addi	sp,sp,-32
    80004804:	00813823          	sd	s0,16(sp)
    80004808:	00913423          	sd	s1,8(sp)
    8000480c:	00113c23          	sd	ra,24(sp)
    80004810:	02010413          	addi	s0,sp,32
    80004814:	00003797          	auipc	a5,0x3
    80004818:	bec78793          	addi	a5,a5,-1044 # 80007400 <kmem>
    8000481c:	0007b483          	ld	s1,0(a5)
    80004820:	02048063          	beqz	s1,80004840 <kalloc+0x40>
    80004824:	0004b703          	ld	a4,0(s1)
    80004828:	00001637          	lui	a2,0x1
    8000482c:	00500593          	li	a1,5
    80004830:	00048513          	mv	a0,s1
    80004834:	00e7b023          	sd	a4,0(a5)
    80004838:	00000097          	auipc	ra,0x0
    8000483c:	400080e7          	jalr	1024(ra) # 80004c38 <__memset>
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00048513          	mv	a0,s1
    8000484c:	00813483          	ld	s1,8(sp)
    80004850:	02010113          	addi	sp,sp,32
    80004854:	00008067          	ret

0000000080004858 <initlock>:
    80004858:	ff010113          	addi	sp,sp,-16
    8000485c:	00813423          	sd	s0,8(sp)
    80004860:	01010413          	addi	s0,sp,16
    80004864:	00813403          	ld	s0,8(sp)
    80004868:	00b53423          	sd	a1,8(a0)
    8000486c:	00052023          	sw	zero,0(a0)
    80004870:	00053823          	sd	zero,16(a0)
    80004874:	01010113          	addi	sp,sp,16
    80004878:	00008067          	ret

000000008000487c <acquire>:
    8000487c:	fe010113          	addi	sp,sp,-32
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00913423          	sd	s1,8(sp)
    80004888:	00113c23          	sd	ra,24(sp)
    8000488c:	01213023          	sd	s2,0(sp)
    80004890:	02010413          	addi	s0,sp,32
    80004894:	00050493          	mv	s1,a0
    80004898:	10002973          	csrr	s2,sstatus
    8000489c:	100027f3          	csrr	a5,sstatus
    800048a0:	ffd7f793          	andi	a5,a5,-3
    800048a4:	10079073          	csrw	sstatus,a5
    800048a8:	fffff097          	auipc	ra,0xfffff
    800048ac:	8e0080e7          	jalr	-1824(ra) # 80003188 <mycpu>
    800048b0:	07852783          	lw	a5,120(a0)
    800048b4:	06078e63          	beqz	a5,80004930 <acquire+0xb4>
    800048b8:	fffff097          	auipc	ra,0xfffff
    800048bc:	8d0080e7          	jalr	-1840(ra) # 80003188 <mycpu>
    800048c0:	07852783          	lw	a5,120(a0)
    800048c4:	0004a703          	lw	a4,0(s1)
    800048c8:	0017879b          	addiw	a5,a5,1
    800048cc:	06f52c23          	sw	a5,120(a0)
    800048d0:	04071063          	bnez	a4,80004910 <acquire+0x94>
    800048d4:	00100713          	li	a4,1
    800048d8:	00070793          	mv	a5,a4
    800048dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800048e0:	0007879b          	sext.w	a5,a5
    800048e4:	fe079ae3          	bnez	a5,800048d8 <acquire+0x5c>
    800048e8:	0ff0000f          	fence
    800048ec:	fffff097          	auipc	ra,0xfffff
    800048f0:	89c080e7          	jalr	-1892(ra) # 80003188 <mycpu>
    800048f4:	01813083          	ld	ra,24(sp)
    800048f8:	01013403          	ld	s0,16(sp)
    800048fc:	00a4b823          	sd	a0,16(s1)
    80004900:	00013903          	ld	s2,0(sp)
    80004904:	00813483          	ld	s1,8(sp)
    80004908:	02010113          	addi	sp,sp,32
    8000490c:	00008067          	ret
    80004910:	0104b903          	ld	s2,16(s1)
    80004914:	fffff097          	auipc	ra,0xfffff
    80004918:	874080e7          	jalr	-1932(ra) # 80003188 <mycpu>
    8000491c:	faa91ce3          	bne	s2,a0,800048d4 <acquire+0x58>
    80004920:	00002517          	auipc	a0,0x2
    80004924:	b4850513          	addi	a0,a0,-1208 # 80006468 <digits+0x20>
    80004928:	fffff097          	auipc	ra,0xfffff
    8000492c:	224080e7          	jalr	548(ra) # 80003b4c <panic>
    80004930:	00195913          	srli	s2,s2,0x1
    80004934:	fffff097          	auipc	ra,0xfffff
    80004938:	854080e7          	jalr	-1964(ra) # 80003188 <mycpu>
    8000493c:	00197913          	andi	s2,s2,1
    80004940:	07252e23          	sw	s2,124(a0)
    80004944:	f75ff06f          	j	800048b8 <acquire+0x3c>

0000000080004948 <release>:
    80004948:	fe010113          	addi	sp,sp,-32
    8000494c:	00813823          	sd	s0,16(sp)
    80004950:	00113c23          	sd	ra,24(sp)
    80004954:	00913423          	sd	s1,8(sp)
    80004958:	01213023          	sd	s2,0(sp)
    8000495c:	02010413          	addi	s0,sp,32
    80004960:	00052783          	lw	a5,0(a0)
    80004964:	00079a63          	bnez	a5,80004978 <release+0x30>
    80004968:	00002517          	auipc	a0,0x2
    8000496c:	b0850513          	addi	a0,a0,-1272 # 80006470 <digits+0x28>
    80004970:	fffff097          	auipc	ra,0xfffff
    80004974:	1dc080e7          	jalr	476(ra) # 80003b4c <panic>
    80004978:	01053903          	ld	s2,16(a0)
    8000497c:	00050493          	mv	s1,a0
    80004980:	fffff097          	auipc	ra,0xfffff
    80004984:	808080e7          	jalr	-2040(ra) # 80003188 <mycpu>
    80004988:	fea910e3          	bne	s2,a0,80004968 <release+0x20>
    8000498c:	0004b823          	sd	zero,16(s1)
    80004990:	0ff0000f          	fence
    80004994:	0f50000f          	fence	iorw,ow
    80004998:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000499c:	ffffe097          	auipc	ra,0xffffe
    800049a0:	7ec080e7          	jalr	2028(ra) # 80003188 <mycpu>
    800049a4:	100027f3          	csrr	a5,sstatus
    800049a8:	0027f793          	andi	a5,a5,2
    800049ac:	04079a63          	bnez	a5,80004a00 <release+0xb8>
    800049b0:	07852783          	lw	a5,120(a0)
    800049b4:	02f05e63          	blez	a5,800049f0 <release+0xa8>
    800049b8:	fff7871b          	addiw	a4,a5,-1
    800049bc:	06e52c23          	sw	a4,120(a0)
    800049c0:	00071c63          	bnez	a4,800049d8 <release+0x90>
    800049c4:	07c52783          	lw	a5,124(a0)
    800049c8:	00078863          	beqz	a5,800049d8 <release+0x90>
    800049cc:	100027f3          	csrr	a5,sstatus
    800049d0:	0027e793          	ori	a5,a5,2
    800049d4:	10079073          	csrw	sstatus,a5
    800049d8:	01813083          	ld	ra,24(sp)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	00813483          	ld	s1,8(sp)
    800049e4:	00013903          	ld	s2,0(sp)
    800049e8:	02010113          	addi	sp,sp,32
    800049ec:	00008067          	ret
    800049f0:	00002517          	auipc	a0,0x2
    800049f4:	aa050513          	addi	a0,a0,-1376 # 80006490 <digits+0x48>
    800049f8:	fffff097          	auipc	ra,0xfffff
    800049fc:	154080e7          	jalr	340(ra) # 80003b4c <panic>
    80004a00:	00002517          	auipc	a0,0x2
    80004a04:	a7850513          	addi	a0,a0,-1416 # 80006478 <digits+0x30>
    80004a08:	fffff097          	auipc	ra,0xfffff
    80004a0c:	144080e7          	jalr	324(ra) # 80003b4c <panic>

0000000080004a10 <holding>:
    80004a10:	00052783          	lw	a5,0(a0)
    80004a14:	00079663          	bnez	a5,80004a20 <holding+0x10>
    80004a18:	00000513          	li	a0,0
    80004a1c:	00008067          	ret
    80004a20:	fe010113          	addi	sp,sp,-32
    80004a24:	00813823          	sd	s0,16(sp)
    80004a28:	00913423          	sd	s1,8(sp)
    80004a2c:	00113c23          	sd	ra,24(sp)
    80004a30:	02010413          	addi	s0,sp,32
    80004a34:	01053483          	ld	s1,16(a0)
    80004a38:	ffffe097          	auipc	ra,0xffffe
    80004a3c:	750080e7          	jalr	1872(ra) # 80003188 <mycpu>
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	40a48533          	sub	a0,s1,a0
    80004a4c:	00153513          	seqz	a0,a0
    80004a50:	00813483          	ld	s1,8(sp)
    80004a54:	02010113          	addi	sp,sp,32
    80004a58:	00008067          	ret

0000000080004a5c <push_off>:
    80004a5c:	fe010113          	addi	sp,sp,-32
    80004a60:	00813823          	sd	s0,16(sp)
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00913423          	sd	s1,8(sp)
    80004a6c:	02010413          	addi	s0,sp,32
    80004a70:	100024f3          	csrr	s1,sstatus
    80004a74:	100027f3          	csrr	a5,sstatus
    80004a78:	ffd7f793          	andi	a5,a5,-3
    80004a7c:	10079073          	csrw	sstatus,a5
    80004a80:	ffffe097          	auipc	ra,0xffffe
    80004a84:	708080e7          	jalr	1800(ra) # 80003188 <mycpu>
    80004a88:	07852783          	lw	a5,120(a0)
    80004a8c:	02078663          	beqz	a5,80004ab8 <push_off+0x5c>
    80004a90:	ffffe097          	auipc	ra,0xffffe
    80004a94:	6f8080e7          	jalr	1784(ra) # 80003188 <mycpu>
    80004a98:	07852783          	lw	a5,120(a0)
    80004a9c:	01813083          	ld	ra,24(sp)
    80004aa0:	01013403          	ld	s0,16(sp)
    80004aa4:	0017879b          	addiw	a5,a5,1
    80004aa8:	06f52c23          	sw	a5,120(a0)
    80004aac:	00813483          	ld	s1,8(sp)
    80004ab0:	02010113          	addi	sp,sp,32
    80004ab4:	00008067          	ret
    80004ab8:	0014d493          	srli	s1,s1,0x1
    80004abc:	ffffe097          	auipc	ra,0xffffe
    80004ac0:	6cc080e7          	jalr	1740(ra) # 80003188 <mycpu>
    80004ac4:	0014f493          	andi	s1,s1,1
    80004ac8:	06952e23          	sw	s1,124(a0)
    80004acc:	fc5ff06f          	j	80004a90 <push_off+0x34>

0000000080004ad0 <pop_off>:
    80004ad0:	ff010113          	addi	sp,sp,-16
    80004ad4:	00813023          	sd	s0,0(sp)
    80004ad8:	00113423          	sd	ra,8(sp)
    80004adc:	01010413          	addi	s0,sp,16
    80004ae0:	ffffe097          	auipc	ra,0xffffe
    80004ae4:	6a8080e7          	jalr	1704(ra) # 80003188 <mycpu>
    80004ae8:	100027f3          	csrr	a5,sstatus
    80004aec:	0027f793          	andi	a5,a5,2
    80004af0:	04079663          	bnez	a5,80004b3c <pop_off+0x6c>
    80004af4:	07852783          	lw	a5,120(a0)
    80004af8:	02f05a63          	blez	a5,80004b2c <pop_off+0x5c>
    80004afc:	fff7871b          	addiw	a4,a5,-1
    80004b00:	06e52c23          	sw	a4,120(a0)
    80004b04:	00071c63          	bnez	a4,80004b1c <pop_off+0x4c>
    80004b08:	07c52783          	lw	a5,124(a0)
    80004b0c:	00078863          	beqz	a5,80004b1c <pop_off+0x4c>
    80004b10:	100027f3          	csrr	a5,sstatus
    80004b14:	0027e793          	ori	a5,a5,2
    80004b18:	10079073          	csrw	sstatus,a5
    80004b1c:	00813083          	ld	ra,8(sp)
    80004b20:	00013403          	ld	s0,0(sp)
    80004b24:	01010113          	addi	sp,sp,16
    80004b28:	00008067          	ret
    80004b2c:	00002517          	auipc	a0,0x2
    80004b30:	96450513          	addi	a0,a0,-1692 # 80006490 <digits+0x48>
    80004b34:	fffff097          	auipc	ra,0xfffff
    80004b38:	018080e7          	jalr	24(ra) # 80003b4c <panic>
    80004b3c:	00002517          	auipc	a0,0x2
    80004b40:	93c50513          	addi	a0,a0,-1732 # 80006478 <digits+0x30>
    80004b44:	fffff097          	auipc	ra,0xfffff
    80004b48:	008080e7          	jalr	8(ra) # 80003b4c <panic>

0000000080004b4c <push_on>:
    80004b4c:	fe010113          	addi	sp,sp,-32
    80004b50:	00813823          	sd	s0,16(sp)
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	00913423          	sd	s1,8(sp)
    80004b5c:	02010413          	addi	s0,sp,32
    80004b60:	100024f3          	csrr	s1,sstatus
    80004b64:	100027f3          	csrr	a5,sstatus
    80004b68:	0027e793          	ori	a5,a5,2
    80004b6c:	10079073          	csrw	sstatus,a5
    80004b70:	ffffe097          	auipc	ra,0xffffe
    80004b74:	618080e7          	jalr	1560(ra) # 80003188 <mycpu>
    80004b78:	07852783          	lw	a5,120(a0)
    80004b7c:	02078663          	beqz	a5,80004ba8 <push_on+0x5c>
    80004b80:	ffffe097          	auipc	ra,0xffffe
    80004b84:	608080e7          	jalr	1544(ra) # 80003188 <mycpu>
    80004b88:	07852783          	lw	a5,120(a0)
    80004b8c:	01813083          	ld	ra,24(sp)
    80004b90:	01013403          	ld	s0,16(sp)
    80004b94:	0017879b          	addiw	a5,a5,1
    80004b98:	06f52c23          	sw	a5,120(a0)
    80004b9c:	00813483          	ld	s1,8(sp)
    80004ba0:	02010113          	addi	sp,sp,32
    80004ba4:	00008067          	ret
    80004ba8:	0014d493          	srli	s1,s1,0x1
    80004bac:	ffffe097          	auipc	ra,0xffffe
    80004bb0:	5dc080e7          	jalr	1500(ra) # 80003188 <mycpu>
    80004bb4:	0014f493          	andi	s1,s1,1
    80004bb8:	06952e23          	sw	s1,124(a0)
    80004bbc:	fc5ff06f          	j	80004b80 <push_on+0x34>

0000000080004bc0 <pop_on>:
    80004bc0:	ff010113          	addi	sp,sp,-16
    80004bc4:	00813023          	sd	s0,0(sp)
    80004bc8:	00113423          	sd	ra,8(sp)
    80004bcc:	01010413          	addi	s0,sp,16
    80004bd0:	ffffe097          	auipc	ra,0xffffe
    80004bd4:	5b8080e7          	jalr	1464(ra) # 80003188 <mycpu>
    80004bd8:	100027f3          	csrr	a5,sstatus
    80004bdc:	0027f793          	andi	a5,a5,2
    80004be0:	04078463          	beqz	a5,80004c28 <pop_on+0x68>
    80004be4:	07852783          	lw	a5,120(a0)
    80004be8:	02f05863          	blez	a5,80004c18 <pop_on+0x58>
    80004bec:	fff7879b          	addiw	a5,a5,-1
    80004bf0:	06f52c23          	sw	a5,120(a0)
    80004bf4:	07853783          	ld	a5,120(a0)
    80004bf8:	00079863          	bnez	a5,80004c08 <pop_on+0x48>
    80004bfc:	100027f3          	csrr	a5,sstatus
    80004c00:	ffd7f793          	andi	a5,a5,-3
    80004c04:	10079073          	csrw	sstatus,a5
    80004c08:	00813083          	ld	ra,8(sp)
    80004c0c:	00013403          	ld	s0,0(sp)
    80004c10:	01010113          	addi	sp,sp,16
    80004c14:	00008067          	ret
    80004c18:	00002517          	auipc	a0,0x2
    80004c1c:	8a050513          	addi	a0,a0,-1888 # 800064b8 <digits+0x70>
    80004c20:	fffff097          	auipc	ra,0xfffff
    80004c24:	f2c080e7          	jalr	-212(ra) # 80003b4c <panic>
    80004c28:	00002517          	auipc	a0,0x2
    80004c2c:	87050513          	addi	a0,a0,-1936 # 80006498 <digits+0x50>
    80004c30:	fffff097          	auipc	ra,0xfffff
    80004c34:	f1c080e7          	jalr	-228(ra) # 80003b4c <panic>

0000000080004c38 <__memset>:
    80004c38:	ff010113          	addi	sp,sp,-16
    80004c3c:	00813423          	sd	s0,8(sp)
    80004c40:	01010413          	addi	s0,sp,16
    80004c44:	1a060e63          	beqz	a2,80004e00 <__memset+0x1c8>
    80004c48:	40a007b3          	neg	a5,a0
    80004c4c:	0077f793          	andi	a5,a5,7
    80004c50:	00778693          	addi	a3,a5,7
    80004c54:	00b00813          	li	a6,11
    80004c58:	0ff5f593          	andi	a1,a1,255
    80004c5c:	fff6071b          	addiw	a4,a2,-1
    80004c60:	1b06e663          	bltu	a3,a6,80004e0c <__memset+0x1d4>
    80004c64:	1cd76463          	bltu	a4,a3,80004e2c <__memset+0x1f4>
    80004c68:	1a078e63          	beqz	a5,80004e24 <__memset+0x1ec>
    80004c6c:	00b50023          	sb	a1,0(a0)
    80004c70:	00100713          	li	a4,1
    80004c74:	1ae78463          	beq	a5,a4,80004e1c <__memset+0x1e4>
    80004c78:	00b500a3          	sb	a1,1(a0)
    80004c7c:	00200713          	li	a4,2
    80004c80:	1ae78a63          	beq	a5,a4,80004e34 <__memset+0x1fc>
    80004c84:	00b50123          	sb	a1,2(a0)
    80004c88:	00300713          	li	a4,3
    80004c8c:	18e78463          	beq	a5,a4,80004e14 <__memset+0x1dc>
    80004c90:	00b501a3          	sb	a1,3(a0)
    80004c94:	00400713          	li	a4,4
    80004c98:	1ae78263          	beq	a5,a4,80004e3c <__memset+0x204>
    80004c9c:	00b50223          	sb	a1,4(a0)
    80004ca0:	00500713          	li	a4,5
    80004ca4:	1ae78063          	beq	a5,a4,80004e44 <__memset+0x20c>
    80004ca8:	00b502a3          	sb	a1,5(a0)
    80004cac:	00700713          	li	a4,7
    80004cb0:	18e79e63          	bne	a5,a4,80004e4c <__memset+0x214>
    80004cb4:	00b50323          	sb	a1,6(a0)
    80004cb8:	00700e93          	li	t4,7
    80004cbc:	00859713          	slli	a4,a1,0x8
    80004cc0:	00e5e733          	or	a4,a1,a4
    80004cc4:	01059e13          	slli	t3,a1,0x10
    80004cc8:	01c76e33          	or	t3,a4,t3
    80004ccc:	01859313          	slli	t1,a1,0x18
    80004cd0:	006e6333          	or	t1,t3,t1
    80004cd4:	02059893          	slli	a7,a1,0x20
    80004cd8:	40f60e3b          	subw	t3,a2,a5
    80004cdc:	011368b3          	or	a7,t1,a7
    80004ce0:	02859813          	slli	a6,a1,0x28
    80004ce4:	0108e833          	or	a6,a7,a6
    80004ce8:	03059693          	slli	a3,a1,0x30
    80004cec:	003e589b          	srliw	a7,t3,0x3
    80004cf0:	00d866b3          	or	a3,a6,a3
    80004cf4:	03859713          	slli	a4,a1,0x38
    80004cf8:	00389813          	slli	a6,a7,0x3
    80004cfc:	00f507b3          	add	a5,a0,a5
    80004d00:	00e6e733          	or	a4,a3,a4
    80004d04:	000e089b          	sext.w	a7,t3
    80004d08:	00f806b3          	add	a3,a6,a5
    80004d0c:	00e7b023          	sd	a4,0(a5)
    80004d10:	00878793          	addi	a5,a5,8
    80004d14:	fed79ce3          	bne	a5,a3,80004d0c <__memset+0xd4>
    80004d18:	ff8e7793          	andi	a5,t3,-8
    80004d1c:	0007871b          	sext.w	a4,a5
    80004d20:	01d787bb          	addw	a5,a5,t4
    80004d24:	0ce88e63          	beq	a7,a4,80004e00 <__memset+0x1c8>
    80004d28:	00f50733          	add	a4,a0,a5
    80004d2c:	00b70023          	sb	a1,0(a4)
    80004d30:	0017871b          	addiw	a4,a5,1
    80004d34:	0cc77663          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d38:	00e50733          	add	a4,a0,a4
    80004d3c:	00b70023          	sb	a1,0(a4)
    80004d40:	0027871b          	addiw	a4,a5,2
    80004d44:	0ac77e63          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d48:	00e50733          	add	a4,a0,a4
    80004d4c:	00b70023          	sb	a1,0(a4)
    80004d50:	0037871b          	addiw	a4,a5,3
    80004d54:	0ac77663          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d58:	00e50733          	add	a4,a0,a4
    80004d5c:	00b70023          	sb	a1,0(a4)
    80004d60:	0047871b          	addiw	a4,a5,4
    80004d64:	08c77e63          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d68:	00e50733          	add	a4,a0,a4
    80004d6c:	00b70023          	sb	a1,0(a4)
    80004d70:	0057871b          	addiw	a4,a5,5
    80004d74:	08c77663          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d78:	00e50733          	add	a4,a0,a4
    80004d7c:	00b70023          	sb	a1,0(a4)
    80004d80:	0067871b          	addiw	a4,a5,6
    80004d84:	06c77e63          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d88:	00e50733          	add	a4,a0,a4
    80004d8c:	00b70023          	sb	a1,0(a4)
    80004d90:	0077871b          	addiw	a4,a5,7
    80004d94:	06c77663          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004d98:	00e50733          	add	a4,a0,a4
    80004d9c:	00b70023          	sb	a1,0(a4)
    80004da0:	0087871b          	addiw	a4,a5,8
    80004da4:	04c77e63          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004da8:	00e50733          	add	a4,a0,a4
    80004dac:	00b70023          	sb	a1,0(a4)
    80004db0:	0097871b          	addiw	a4,a5,9
    80004db4:	04c77663          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004db8:	00e50733          	add	a4,a0,a4
    80004dbc:	00b70023          	sb	a1,0(a4)
    80004dc0:	00a7871b          	addiw	a4,a5,10
    80004dc4:	02c77e63          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004dc8:	00e50733          	add	a4,a0,a4
    80004dcc:	00b70023          	sb	a1,0(a4)
    80004dd0:	00b7871b          	addiw	a4,a5,11
    80004dd4:	02c77663          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004dd8:	00e50733          	add	a4,a0,a4
    80004ddc:	00b70023          	sb	a1,0(a4)
    80004de0:	00c7871b          	addiw	a4,a5,12
    80004de4:	00c77e63          	bgeu	a4,a2,80004e00 <__memset+0x1c8>
    80004de8:	00e50733          	add	a4,a0,a4
    80004dec:	00b70023          	sb	a1,0(a4)
    80004df0:	00d7879b          	addiw	a5,a5,13
    80004df4:	00c7f663          	bgeu	a5,a2,80004e00 <__memset+0x1c8>
    80004df8:	00f507b3          	add	a5,a0,a5
    80004dfc:	00b78023          	sb	a1,0(a5)
    80004e00:	00813403          	ld	s0,8(sp)
    80004e04:	01010113          	addi	sp,sp,16
    80004e08:	00008067          	ret
    80004e0c:	00b00693          	li	a3,11
    80004e10:	e55ff06f          	j	80004c64 <__memset+0x2c>
    80004e14:	00300e93          	li	t4,3
    80004e18:	ea5ff06f          	j	80004cbc <__memset+0x84>
    80004e1c:	00100e93          	li	t4,1
    80004e20:	e9dff06f          	j	80004cbc <__memset+0x84>
    80004e24:	00000e93          	li	t4,0
    80004e28:	e95ff06f          	j	80004cbc <__memset+0x84>
    80004e2c:	00000793          	li	a5,0
    80004e30:	ef9ff06f          	j	80004d28 <__memset+0xf0>
    80004e34:	00200e93          	li	t4,2
    80004e38:	e85ff06f          	j	80004cbc <__memset+0x84>
    80004e3c:	00400e93          	li	t4,4
    80004e40:	e7dff06f          	j	80004cbc <__memset+0x84>
    80004e44:	00500e93          	li	t4,5
    80004e48:	e75ff06f          	j	80004cbc <__memset+0x84>
    80004e4c:	00600e93          	li	t4,6
    80004e50:	e6dff06f          	j	80004cbc <__memset+0x84>

0000000080004e54 <__memmove>:
    80004e54:	ff010113          	addi	sp,sp,-16
    80004e58:	00813423          	sd	s0,8(sp)
    80004e5c:	01010413          	addi	s0,sp,16
    80004e60:	0e060863          	beqz	a2,80004f50 <__memmove+0xfc>
    80004e64:	fff6069b          	addiw	a3,a2,-1
    80004e68:	0006881b          	sext.w	a6,a3
    80004e6c:	0ea5e863          	bltu	a1,a0,80004f5c <__memmove+0x108>
    80004e70:	00758713          	addi	a4,a1,7
    80004e74:	00a5e7b3          	or	a5,a1,a0
    80004e78:	40a70733          	sub	a4,a4,a0
    80004e7c:	0077f793          	andi	a5,a5,7
    80004e80:	00f73713          	sltiu	a4,a4,15
    80004e84:	00174713          	xori	a4,a4,1
    80004e88:	0017b793          	seqz	a5,a5
    80004e8c:	00e7f7b3          	and	a5,a5,a4
    80004e90:	10078863          	beqz	a5,80004fa0 <__memmove+0x14c>
    80004e94:	00900793          	li	a5,9
    80004e98:	1107f463          	bgeu	a5,a6,80004fa0 <__memmove+0x14c>
    80004e9c:	0036581b          	srliw	a6,a2,0x3
    80004ea0:	fff8081b          	addiw	a6,a6,-1
    80004ea4:	02081813          	slli	a6,a6,0x20
    80004ea8:	01d85893          	srli	a7,a6,0x1d
    80004eac:	00858813          	addi	a6,a1,8
    80004eb0:	00058793          	mv	a5,a1
    80004eb4:	00050713          	mv	a4,a0
    80004eb8:	01088833          	add	a6,a7,a6
    80004ebc:	0007b883          	ld	a7,0(a5)
    80004ec0:	00878793          	addi	a5,a5,8
    80004ec4:	00870713          	addi	a4,a4,8
    80004ec8:	ff173c23          	sd	a7,-8(a4)
    80004ecc:	ff0798e3          	bne	a5,a6,80004ebc <__memmove+0x68>
    80004ed0:	ff867713          	andi	a4,a2,-8
    80004ed4:	02071793          	slli	a5,a4,0x20
    80004ed8:	0207d793          	srli	a5,a5,0x20
    80004edc:	00f585b3          	add	a1,a1,a5
    80004ee0:	40e686bb          	subw	a3,a3,a4
    80004ee4:	00f507b3          	add	a5,a0,a5
    80004ee8:	06e60463          	beq	a2,a4,80004f50 <__memmove+0xfc>
    80004eec:	0005c703          	lbu	a4,0(a1)
    80004ef0:	00e78023          	sb	a4,0(a5)
    80004ef4:	04068e63          	beqz	a3,80004f50 <__memmove+0xfc>
    80004ef8:	0015c603          	lbu	a2,1(a1)
    80004efc:	00100713          	li	a4,1
    80004f00:	00c780a3          	sb	a2,1(a5)
    80004f04:	04e68663          	beq	a3,a4,80004f50 <__memmove+0xfc>
    80004f08:	0025c603          	lbu	a2,2(a1)
    80004f0c:	00200713          	li	a4,2
    80004f10:	00c78123          	sb	a2,2(a5)
    80004f14:	02e68e63          	beq	a3,a4,80004f50 <__memmove+0xfc>
    80004f18:	0035c603          	lbu	a2,3(a1)
    80004f1c:	00300713          	li	a4,3
    80004f20:	00c781a3          	sb	a2,3(a5)
    80004f24:	02e68663          	beq	a3,a4,80004f50 <__memmove+0xfc>
    80004f28:	0045c603          	lbu	a2,4(a1)
    80004f2c:	00400713          	li	a4,4
    80004f30:	00c78223          	sb	a2,4(a5)
    80004f34:	00e68e63          	beq	a3,a4,80004f50 <__memmove+0xfc>
    80004f38:	0055c603          	lbu	a2,5(a1)
    80004f3c:	00500713          	li	a4,5
    80004f40:	00c782a3          	sb	a2,5(a5)
    80004f44:	00e68663          	beq	a3,a4,80004f50 <__memmove+0xfc>
    80004f48:	0065c703          	lbu	a4,6(a1)
    80004f4c:	00e78323          	sb	a4,6(a5)
    80004f50:	00813403          	ld	s0,8(sp)
    80004f54:	01010113          	addi	sp,sp,16
    80004f58:	00008067          	ret
    80004f5c:	02061713          	slli	a4,a2,0x20
    80004f60:	02075713          	srli	a4,a4,0x20
    80004f64:	00e587b3          	add	a5,a1,a4
    80004f68:	f0f574e3          	bgeu	a0,a5,80004e70 <__memmove+0x1c>
    80004f6c:	02069613          	slli	a2,a3,0x20
    80004f70:	02065613          	srli	a2,a2,0x20
    80004f74:	fff64613          	not	a2,a2
    80004f78:	00e50733          	add	a4,a0,a4
    80004f7c:	00c78633          	add	a2,a5,a2
    80004f80:	fff7c683          	lbu	a3,-1(a5)
    80004f84:	fff78793          	addi	a5,a5,-1
    80004f88:	fff70713          	addi	a4,a4,-1
    80004f8c:	00d70023          	sb	a3,0(a4)
    80004f90:	fec798e3          	bne	a5,a2,80004f80 <__memmove+0x12c>
    80004f94:	00813403          	ld	s0,8(sp)
    80004f98:	01010113          	addi	sp,sp,16
    80004f9c:	00008067          	ret
    80004fa0:	02069713          	slli	a4,a3,0x20
    80004fa4:	02075713          	srli	a4,a4,0x20
    80004fa8:	00170713          	addi	a4,a4,1
    80004fac:	00e50733          	add	a4,a0,a4
    80004fb0:	00050793          	mv	a5,a0
    80004fb4:	0005c683          	lbu	a3,0(a1)
    80004fb8:	00178793          	addi	a5,a5,1
    80004fbc:	00158593          	addi	a1,a1,1
    80004fc0:	fed78fa3          	sb	a3,-1(a5)
    80004fc4:	fee798e3          	bne	a5,a4,80004fb4 <__memmove+0x160>
    80004fc8:	f89ff06f          	j	80004f50 <__memmove+0xfc>

0000000080004fcc <__putc>:
    80004fcc:	fe010113          	addi	sp,sp,-32
    80004fd0:	00813823          	sd	s0,16(sp)
    80004fd4:	00113c23          	sd	ra,24(sp)
    80004fd8:	02010413          	addi	s0,sp,32
    80004fdc:	00050793          	mv	a5,a0
    80004fe0:	fef40593          	addi	a1,s0,-17
    80004fe4:	00100613          	li	a2,1
    80004fe8:	00000513          	li	a0,0
    80004fec:	fef407a3          	sb	a5,-17(s0)
    80004ff0:	fffff097          	auipc	ra,0xfffff
    80004ff4:	b3c080e7          	jalr	-1220(ra) # 80003b2c <console_write>
    80004ff8:	01813083          	ld	ra,24(sp)
    80004ffc:	01013403          	ld	s0,16(sp)
    80005000:	02010113          	addi	sp,sp,32
    80005004:	00008067          	ret

0000000080005008 <__getc>:
    80005008:	fe010113          	addi	sp,sp,-32
    8000500c:	00813823          	sd	s0,16(sp)
    80005010:	00113c23          	sd	ra,24(sp)
    80005014:	02010413          	addi	s0,sp,32
    80005018:	fe840593          	addi	a1,s0,-24
    8000501c:	00100613          	li	a2,1
    80005020:	00000513          	li	a0,0
    80005024:	fffff097          	auipc	ra,0xfffff
    80005028:	ae8080e7          	jalr	-1304(ra) # 80003b0c <console_read>
    8000502c:	fe844503          	lbu	a0,-24(s0)
    80005030:	01813083          	ld	ra,24(sp)
    80005034:	01013403          	ld	s0,16(sp)
    80005038:	02010113          	addi	sp,sp,32
    8000503c:	00008067          	ret

0000000080005040 <console_handler>:
    80005040:	fe010113          	addi	sp,sp,-32
    80005044:	00813823          	sd	s0,16(sp)
    80005048:	00113c23          	sd	ra,24(sp)
    8000504c:	00913423          	sd	s1,8(sp)
    80005050:	02010413          	addi	s0,sp,32
    80005054:	14202773          	csrr	a4,scause
    80005058:	100027f3          	csrr	a5,sstatus
    8000505c:	0027f793          	andi	a5,a5,2
    80005060:	06079e63          	bnez	a5,800050dc <console_handler+0x9c>
    80005064:	00074c63          	bltz	a4,8000507c <console_handler+0x3c>
    80005068:	01813083          	ld	ra,24(sp)
    8000506c:	01013403          	ld	s0,16(sp)
    80005070:	00813483          	ld	s1,8(sp)
    80005074:	02010113          	addi	sp,sp,32
    80005078:	00008067          	ret
    8000507c:	0ff77713          	andi	a4,a4,255
    80005080:	00900793          	li	a5,9
    80005084:	fef712e3          	bne	a4,a5,80005068 <console_handler+0x28>
    80005088:	ffffe097          	auipc	ra,0xffffe
    8000508c:	6dc080e7          	jalr	1756(ra) # 80003764 <plic_claim>
    80005090:	00a00793          	li	a5,10
    80005094:	00050493          	mv	s1,a0
    80005098:	02f50c63          	beq	a0,a5,800050d0 <console_handler+0x90>
    8000509c:	fc0506e3          	beqz	a0,80005068 <console_handler+0x28>
    800050a0:	00050593          	mv	a1,a0
    800050a4:	00001517          	auipc	a0,0x1
    800050a8:	31c50513          	addi	a0,a0,796 # 800063c0 <CONSOLE_STATUS+0x3b0>
    800050ac:	fffff097          	auipc	ra,0xfffff
    800050b0:	afc080e7          	jalr	-1284(ra) # 80003ba8 <__printf>
    800050b4:	01013403          	ld	s0,16(sp)
    800050b8:	01813083          	ld	ra,24(sp)
    800050bc:	00048513          	mv	a0,s1
    800050c0:	00813483          	ld	s1,8(sp)
    800050c4:	02010113          	addi	sp,sp,32
    800050c8:	ffffe317          	auipc	t1,0xffffe
    800050cc:	6d430067          	jr	1748(t1) # 8000379c <plic_complete>
    800050d0:	fffff097          	auipc	ra,0xfffff
    800050d4:	3e0080e7          	jalr	992(ra) # 800044b0 <uartintr>
    800050d8:	fddff06f          	j	800050b4 <console_handler+0x74>
    800050dc:	00001517          	auipc	a0,0x1
    800050e0:	3e450513          	addi	a0,a0,996 # 800064c0 <digits+0x78>
    800050e4:	fffff097          	auipc	ra,0xfffff
    800050e8:	a68080e7          	jalr	-1432(ra) # 80003b4c <panic>
	...
