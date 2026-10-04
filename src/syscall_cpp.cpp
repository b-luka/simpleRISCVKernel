//
// Created by os on 7/15/26.
//

#include "../h/syscall_cpp.hpp"

void* operator new (size_t size) {
    return mem_alloc(size);
}

void* operator new[] (size_t size) {
    return mem_alloc(size);
}

void operator delete (void* ptr) {
    mem_free(ptr);
}

void operator delete[] (void* ptr) {
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg, ThreadPriority priority) {
    this->myHandle = nullptr;
    this->body = body;
    this->arg = arg;
    this->myPriority = priority;
}

Thread::~Thread() {}

Thread::Thread(ThreadPriority priority) {
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
    this->myPriority = priority;
}

void Thread::wrapper(void *arg) {
    Thread* thread = (Thread*) arg;
    if (thread->body) thread->body(thread->arg);
    else thread->run();
}

int Thread::start() {
    return thread_create(&myHandle, wrapper, this, myPriority);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    if (!myHandle) return;
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
