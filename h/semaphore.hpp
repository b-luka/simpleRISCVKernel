//
// Created by os on 6/22/26.
//

#ifndef OS1_KERNEL_SEMAPHORE_H
#define OS1_KERNEL_SEMAPHORE_H

#include "thread.hpp"

class _sem {
public:
    _sem(unsigned int init = 1);
    ~_sem();

    int wait();
    int signal();

    int wait_n(int n);
    int signal_n(int n);

private:
    int value;

    struct QueueElem {
        _thread* thread;
        QueueElem* next;
        int tickets;
        QueueElem(_thread* thread, QueueElem* next, int tickets) : thread(thread), next(next), tickets(tickets) {}
    };

    QueueElem* head;
    QueueElem* tail;
};

typedef _sem* sem_t;

#endif //OS1_KERNEL_SEMAPHORE_H
