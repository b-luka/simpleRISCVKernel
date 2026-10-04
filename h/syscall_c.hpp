//
// Created by os on 6/10/26.
//

#ifndef OS1_KERNEL_SYSCALL_C_H
#define OS1_KERNEL_SYSCALL_C_H

#include "../lib/hw.h"
#include "./threadPriority.hpp"

// system calls
#define MEM_ALLOC           0x01
#define MEM_FREE            0x02
#define THREAD_CREATE       0x11
#define THREAD_EXIT         0x12
#define THREAD_DISPATCH     0x13
#define SEM_OPEN            0x21
#define SEM_CLOSE           0x22
#define SEM_WAIT            0x23
#define SEM_SIGNAL          0x24
#define SEM_WAIT_N          0x25
#define SEM_SIGNAL_N        0x26
#define TIME_SLEEP          0x31
#define GETC                0x41
#define PUTC                0x42

enum Causes {
    ECALL_USER_MODE = 0x0000000000000008UL,
    ECALL_SYSTEM_MODE = 0x0000000000000009UL,
    SOFTWARE_INTERRUPT = 0x8000000000000001UL,
    EXTERNAL_INTERRUPT = 0x8000000000000009UL,
};

enum Status {
    OK = 0,
    INVALID_ARGUMENTS = -1,
    NO_MEMORY_AVAILABLE = -2
};

// MemoryAllocator.h
void* mem_alloc(size_t size);
int mem_free(void* ptr);

// Thread.h
class _thread;
typedef _thread* thread_t;
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg, ThreadPriority priority = LOW_PRIORITY);
int thread_exit();
void thread_dispatch();

// Semaphore.h
class _sem;
typedef _sem* sem_t;
int sem_open(sem_t* handle, unsigned int init);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);
int sem_wait_n(sem_t id, unsigned n);
int sem_signal_n(sem_t id, unsigned n);

// console
char getc();
void putc(char c);

int time_sleep(time_t t);

#endif //OS1_KERNEL_SYSCALL_C_H
