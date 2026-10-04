//
// Created by os on 9/16/26.
//

#include "../h/syscall_cpp.hpp"
#include "./printing.hpp"
#include "./priorityTest.hpp"

void approximate_sleep(time_t periods) {
    for (time_t p = 0; p < periods; p++) {
        for (int i = 0; i < 500; i++) {
            for (volatile int j = 0; j < 10000; j++);
            thread_dispatch();
        }
    }
}

static Semaphore *waitForAll;

class HighThread : public Thread {
public:
    HighThread() : Thread(HIGH_PRIORITY) {}

    void run() override {
        printString("HighThread started!\n");

        approximate_sleep(20);

        printString("HighThread done!\n");
        waitForAll->signal();
    }
};

class MediumThread : public Thread {
public:
    int id;
    MediumThread(int id) : Thread(MEDIUM_PRIORITY) { this->id = id; }

    void run() override {
        printString("MediumThread ");
        printInt(id);
        printString(" started!\n");

        approximate_sleep(10);

        printString("MediumThread ");
        printInt(id);
        printString(" done!\n");
        waitForAll->signal();
    }
};

class LowThread : public Thread {
public:
    LowThread() : Thread(LOW_PRIORITY) {}

    void run() override {
        printString("LowThread started!\n");

        approximate_sleep(2);

        printString("LowThread done!\n");
        waitForAll->signal();
    }
};

void priorityTest() {
    waitForAll = new Semaphore(0);
    printString("Test started!\n");
    Thread* low = new LowThread();
    Thread* med1 = new MediumThread(1);
    Thread* med2 = new MediumThread(2);
    Thread* high = new HighThread();

    med1->start();
    low->start();
    med2->start();
    high->start();
    printString("Threads started! (M1 -> L -> M2 -> H)\n");

    for (int i = 0; i < 4; i++) waitForAll->wait();

    printString("Test done!\n");
}