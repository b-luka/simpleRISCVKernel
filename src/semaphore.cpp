//
// Created by os on 6/22/26.
//

#include "../h/semaphore.hpp"
#include "../h/scheduler.hpp"

_sem::_sem(unsigned int init) : value(init), head(nullptr), tail(nullptr) {}

_sem::~_sem() {
    while (head) {
        QueueElem* old = head;
        head = head->next;
        old->thread->setSemError(true);
        old->thread->setBlocked(false);
        if (!old->thread->isFinished()) Scheduler::put(old->thread);
        delete old;
    }
}

int _sem::wait_n(int n) {
    if (value >= n) {
        value -= n;
        return 0;
    }

    _thread* oldThread = _thread::runningThread;
    oldThread->setBlocked(true);

    QueueElem* elem = new QueueElem(oldThread, nullptr, n);
    if (tail) tail->next = elem;
    else head = elem;
    tail = elem;

    _thread::yield();
    // thread wakes up here
    if (oldThread->isSemError()) {
        oldThread->setSemError(false);
        return -1;
    }
    return 0;
}

int _sem::signal_n(int n) {
    value += n;

    while (head != nullptr && value >= head->tickets) {
        value -= head->tickets;

        QueueElem* old = head;
        head = head->next;
        if (!head) tail = nullptr;

        old->thread->setBlocked(false);
        Scheduler::put(old->thread);
        delete old;
    }

    return 0;
}

int _sem::wait() {
    return wait_n(1);
}

int _sem::signal() {
    return signal_n(1);
}
