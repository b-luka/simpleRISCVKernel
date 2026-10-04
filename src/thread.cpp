//
// Created by os on 6/10/26.
//

#include "../h/thread.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"

_thread* _thread::runningThread = nullptr;
size_t _thread::next_id = 0;

_thread::_thread() :
    arg(nullptr),
    start_routine(nullptr),
    stack(nullptr),
    finished(false),
    blocked(false),
    id(++next_id) {
    context.ra = 0;
    context.sp = 0;
    this->myPriority = LOW_PRIORITY;
}

_thread::_thread(void (*body)(void *), void *arg, void *stack_space, ThreadPriority priority) :
    arg(arg),
    start_routine(body),
    stack((uint64*) stack_space),
    finished(false),
    blocked(false),
    id (++next_id) {
    context.ra = (uint64) threadWrapper;
    context.sp = (uint64) stack_space + DEFAULT_STACK_SIZE;
    this->myPriority = priority;
}

_thread* _thread::createThread(void (*body)(void *), void *arg, void* stack_space, ThreadPriority priority) {
    _thread* newThread = new _thread(body, arg, stack_space, priority);
    Scheduler::put(newThread);
    return newThread;
}

void _thread::threadWrapper() {
    Riscv::popSppSpie();
    runningThread->start_routine(runningThread->arg);
    runningThread->finished = true;
    thread_exit();
}

void _thread::dispatch() {
    _thread* oldRunning = runningThread;
    if (!oldRunning->finished && !oldRunning->blocked) Scheduler::put(oldRunning);
    runningThread = Scheduler::get();
    _thread::contextSwitch(&oldRunning->context, &runningThread->context);
}

void _thread::yield() {
    Riscv::pushRegisters();
    _thread::dispatch();
    Riscv::popRegisters();
}
