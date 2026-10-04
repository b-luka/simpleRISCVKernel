//
// Created by os on 6/10/26.
//

#ifndef OS1_KERNEL_THREAD_HPP
#define OS1_KERNEL_THREAD_HPP
#include "../lib/hw.h"
#include "../h/memory.hpp"
#include "../h/threadPriority.hpp"

class _thread;
typedef _thread* thread_t;
typedef void (*thread_body_t)(void*);

class _thread {
public:
    static _thread* runningThread;
    _thread();
    _thread(void (*body) (void*), void* arg, void* stack_space, ThreadPriority priority = LOW_PRIORITY);
    ~_thread() {
        if (stack) delete[] stack;
    }

    static _thread* createThread(void (*body) (void*), void* arg, void* stack_space, ThreadPriority priority = LOW_PRIORITY);

    bool isFinished() { return finished; }
    void setFinished(bool value) { finished = value; }

    bool isBlocked() { return blocked; }
    void setBlocked(bool value) { blocked = value; }

    bool isSemError() { return semError; }
    void setSemError(bool value) { semError = value; }

    static void yield();
    static void dispatch();

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    ThreadPriority myPriority;

private:

    Context context;
    void* arg;
    thread_body_t start_routine;
    uint64* stack;
    bool finished;
    bool blocked;
    bool semError;
    size_t id;

    static size_t next_id;

    static void contextSwitch(Context* oldContext, Context* newContext);
    static void threadWrapper();
};

#endif //OS1_KERNEL_THREAD_HPP
