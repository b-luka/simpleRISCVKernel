//
// Created by os on 6/10/26.
//

#include "../h/syscall_c.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"

void* mem_alloc(size_t size) {
    register uint64 arg0 asm("a0") = (uint64) MEM_ALLOC;
    register uint64 arg1 asm("a1") = (uint64) size;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");

    return (void*) arg0;
}

int mem_free(void* ptr) {
    register uint64 arg0 asm("a0") = (uint64) MEM_FREE;
    register uint64 arg1 asm("a1") = (uint64) ptr;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");

    return (int) arg0;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg, ThreadPriority priority) {
    void* stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    if (!stack_space) return NO_MEMORY_AVAILABLE;

    register uint64 arg0 asm("a0") = (uint64) THREAD_CREATE;
    register uint64 arg1 asm("a1") = (uint64) handle;
    register uint64 arg2 asm("a2") = (uint64) start_routine;
    register uint64 arg3 asm("a3") = (uint64) arg;
    register uint64 arg4 asm("a4") = (uint64) stack_space;
    register uint64 arg5 asm("a5") = (uint64) priority;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2), "r" (arg3), "r" (arg4), "r" (arg5) : "memory");

    return (int) arg0;
}

int thread_exit() {
    register uint64 arg0 asm("a0") = (uint64) THREAD_EXIT;
    __asm__ volatile ("ecall" : "+r" (arg0) : : "memory");

    return (int) arg0;
}

void thread_dispatch() {
    register uint64 arg0 asm("a0") = (uint64) THREAD_DISPATCH;
    __asm__ volatile ("ecall" : "+r" (arg0) : : "memory");
}

int sem_open(sem_t *handle, unsigned int init) {
    register uint64 arg0 asm("a0") = (uint64) SEM_OPEN;
    register uint64 arg1 asm("a1") = (uint64) handle;
    register uint64 arg2 asm("a2") = (uint64) init;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2) : "memory");

    return (int) arg0;
}

int sem_close(sem_t handle) {
    register uint64 arg0 asm("a0") = (uint64) SEM_CLOSE;
    register uint64 arg1 asm("a1") = (uint64) handle;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");

    return (int) arg0;
}

int sem_wait(sem_t id) {
    register uint64 arg0 asm("a0") = (uint64) SEM_WAIT;
    register uint64 arg1 asm("a1") = (uint64) id;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");

    return (int) arg0;
}

int sem_signal(sem_t id) {
    register uint64 arg0 asm("a0") = (uint64) SEM_SIGNAL;
    register uint64 arg1 asm("a1") = (uint64) id;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");

    return (int) arg0;
}

int sem_wait_n(sem_t id, unsigned n) {
    register uint64 arg0 asm("a0") = (uint64) SEM_WAIT_N;
    register uint64 arg1 asm("a1") = (uint64) id;
    register uint64 arg2 asm("a2") = (uint64) n;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2) : "memory");

    return (int) arg0;
}

int sem_signal_n(sem_t id, unsigned n) {
    register uint64 arg0 asm("a0") = (uint64) SEM_SIGNAL_N;
    register uint64 arg1 asm("a1") = (uint64) id;
    register uint64 arg2 asm("a2") = (uint64) n;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1), "r" (arg2) : "memory");

    return (int) arg0;
}

void putc(char c) {
    register uint64 arg0 asm("a0") = (uint64) PUTC;
    register uint64 arg1 asm("a1") = (uint64) c;
    __asm__ volatile ("ecall" : "+r" (arg0) : "r" (arg1) : "memory");
}

char getc() {
    register uint64 arg0 asm("a0") = (uint64) GETC;
    __asm__ volatile ("ecall" : "+r" (arg0) : : "memory");

    return (char) arg0;
}

int time_sleep(time_t t) {
    return 0;
}