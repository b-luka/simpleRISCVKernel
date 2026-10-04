//
// Created by os on 6/10/26.
//

#ifndef OS1_KERNEL_SCHEDULER_HPP
#define OS1_KERNEL_SCHEDULER_HPP

#include "./list.hpp"
#include "./threadPriority.hpp"

class _thread;

class Scheduler {
public:
    static List<_thread> highPriorityQueue;
    static List<_thread> mediumPriorityQueue;
    static List<_thread> lowPriorityQueue;

    static void put(_thread* thread);
    static _thread* get();

private:
    Scheduler() = delete;
    ~Scheduler() = delete;
    Scheduler(const Scheduler&) = delete;
};

#endif //OS1_KERNEL_SCHEDULER_HPP
