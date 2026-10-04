//
// Created by os on 6/8/26.
//

#ifndef OS1_KERNEL_MEMORY_HPP
#define OS1_KERNEL_MEMORY_HPP

#include "../lib/hw.h"

class MemoryAllocator {
private:
    // linked list of free blocks
    struct FreeMemBlock {
        size_t size;
        FreeMemBlock* next;
    };

    static FreeMemBlock* freeMemHead;
    static bool isInitialized;  // initialize once
    static void init();

    enum Status {
        OK = 0,
        INVALID_ARGUMENTS = -1,
        NO_MEMORY_AVAILABLE = -2
    };

public:
    static void* mem_alloc(size_t size);
    static int mem_free(void* address);
};

#endif //OS1_KERNEL_MEMORY_HPP
