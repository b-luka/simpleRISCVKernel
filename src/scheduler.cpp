//
// Created by os on 6/10/26.
//

#include "../h/scheduler.hpp"
#include "../h/thread.hpp"

List<_thread> Scheduler::highPriorityQueue;
List<_thread> Scheduler::mediumPriorityQueue;
List<_thread> Scheduler::lowPriorityQueue;

void Scheduler::put(_thread *thread) {
    //highPriorityQueue.addLast(thread);
    ThreadPriority priority = thread->myPriority;
    switch (priority) {
        case HIGH_PRIORITY: {
            highPriorityQueue.addLast(thread);
            break;
        }
        case MEDIUM_PRIORITY: {
            mediumPriorityQueue.addLast(thread);
            break;
        }
        case LOW_PRIORITY: {
            lowPriorityQueue.addLast(thread);
            break;
        }
        default: break;
    }
}

_thread* Scheduler::get() {
    //return highPriorityQueue.removeFirst();
    if (!highPriorityQueue.empty()) return highPriorityQueue.removeFirst();
    if (!mediumPriorityQueue.empty()) return mediumPriorityQueue.removeFirst();
    return lowPriorityQueue.removeFirst();
}