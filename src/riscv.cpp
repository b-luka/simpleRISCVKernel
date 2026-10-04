//
// Created by os on 6/21/26.
//

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/memory.hpp"
#include "../lib/console.h"
#include "../h/semaphore.hpp"
#include "../h/print.hpp"
#include "../h/threadPriority.hpp"

void Riscv::popSppSpie() {
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();

    if (scause == ECALL_USER_MODE || scause == ECALL_SYSTEM_MODE) {
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        int syscall = r_gpr<int>(A0);
        uint64 ret = OK;

        switch (syscall) {
            case MEM_ALLOC: {
                size_t size = r_gpr<size_t>(A1);
                void* ptr = MemoryAllocator::mem_alloc(size);
                ret = (uint64) ptr;
                break;
            }

            case MEM_FREE: {
                void* ptr = r_gpr<void*>(A1);
                ret = MemoryAllocator::mem_free(ptr);
                break;
            }

            case THREAD_CREATE: {
                thread_t* handle = r_gpr<thread_t*>(A1);
                thread_body_t start_routine = r_gpr<thread_body_t>(A2);
                void* arg = r_gpr<void*>(A3);
                void* stack_space = r_gpr<void*>(A4);
                ThreadPriority priority = r_gpr<ThreadPriority>(A5);

                //thread_t newThread = _thread::createThread(start_routine, arg, stack_space);
                thread_t newThread = _thread::createThread(start_routine, arg, stack_space, priority);

                if (!newThread) {
                    ret = NO_MEMORY_AVAILABLE;
                    break;
                }

                if (handle) *handle = newThread;
                break;
            }

            case THREAD_EXIT: {
                _thread::runningThread->setFinished(true);
                _thread::yield();
                break;
            }

            case THREAD_DISPATCH: {
                _thread::dispatch();
                break;
            }

            case SEM_OPEN: {
                sem_t* handle = r_gpr<sem_t*>(A1);
                unsigned init = r_gpr<unsigned >(A2);
                _sem* newSem = new _sem(init);

                if (!newSem) {
                    ret = NO_MEMORY_AVAILABLE;
                    break;
                }

                if (handle) *handle = newSem;
                break;
            }

            case SEM_CLOSE: {
                sem_t handle = r_gpr<sem_t>(A1);

                if (handle) delete handle;
                else ret = INVALID_ARGUMENTS;
                break;
            }

            case SEM_WAIT: {
                sem_t handle = r_gpr<sem_t>(A1);

                if (handle) ret = handle->wait();
                else ret = INVALID_ARGUMENTS;

                break;
            }

            case SEM_SIGNAL: {
                sem_t handle = r_gpr<sem_t>(A1);

                if (handle) ret = handle->signal();
                else ret = INVALID_ARGUMENTS;

                break;
            }

            case SEM_WAIT_N: {
                sem_t handle = r_gpr<sem_t>(A1);
                int n = r_gpr<int>(A2);

                if (handle) ret = handle->wait_n(n);
                else ret = INVALID_ARGUMENTS;

                break;
            }

            case SEM_SIGNAL_N: {
                sem_t handle = r_gpr<sem_t>(A1);
                int n = r_gpr<int>(A2);

                if (handle) ret = handle->signal_n(n);
                else ret = INVALID_ARGUMENTS;

                break;
            }

            case GETC: {
                ret = __getc();
                break;
            }

            case PUTC: {
                char c = r_gpr<char>(A1);
                __putc(c);
                break;
            }
            default:
                break;
        }
        w_gpr(A0, ret);
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == SOFTWARE_INTERRUPT) {
        mc_sip(SIP_SSIP);
    }
    else if (scause == EXTERNAL_INTERRUPT) {
        console_handler();
    }
    else {
        _printString("Error: Unknown interrupt! scause: ");
        _printHex(scause);
        _printString("\n");
        while (1) {}
    }
}
