//
// Created by os on 6/8/26.
//

#include "../lib/hw.h"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/thread.hpp"
#include "../h/syscall_c.hpp"
#include "../h/semaphore.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

void userMainWrapper(void* arg) {
    userMain();
    sem_t userSem = (sem_t) arg;
    userSem->signal();
}

int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    thread_t mainThread = new _thread();
    _thread::runningThread = mainThread;

    _printString("Main thread created!\n");

    _printString("Creating userMain thread...\n");
    thread_t user = nullptr;
    sem_t userSem = new _sem(0);
    thread_create(&user, userMainWrapper, (void*) userSem);
    _printString("userMain created! Sleeping...\n");
    userSem->wait();

    _printString("userMain done! Shutting down...\n");
    return 0;
}