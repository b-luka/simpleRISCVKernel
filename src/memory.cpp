//
// Created by os on 6/8/26.
//

#include "../h/memory.hpp"

MemoryAllocator::FreeMemBlock* MemoryAllocator::freeMemHead = nullptr;
bool MemoryAllocator::isInitialized = false;

void MemoryAllocator::init() {
    if (isInitialized) return;
    freeMemHead = (FreeMemBlock*) HEAP_START_ADDR;
    size_t heapSize = (size_t) HEAP_END_ADDR - (size_t) HEAP_START_ADDR;
    freeMemHead->size = heapSize;
    freeMemHead->next = nullptr;
    isInitialized = true;
}

void* MemoryAllocator::mem_alloc(size_t size) {
    if (!isInitialized) init();
    if (size == 0) return nullptr;

    // allocate needed blocks
    size_t sizeWithMetadata = size + sizeof(FreeMemBlock);
    size_t blocksNum = (sizeWithMetadata + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    size_t bytes = blocksNum * MEM_BLOCK_SIZE;

    // insert into list
    FreeMemBlock* curr = freeMemHead;
    FreeMemBlock* prev = nullptr;

    while (curr != nullptr) {
        if (curr->size >= bytes) {
            size_t remainingSize = curr->size - bytes;
            if (remainingSize >= sizeof(FreeMemBlock) + MEM_BLOCK_SIZE) {  // attempt splitting current block
                FreeMemBlock* newBlock = (FreeMemBlock*) ((char*) curr + bytes);
                newBlock->size = remainingSize;
                newBlock->next = curr->next;
                curr->size = bytes;

                if (prev != nullptr) prev->next = newBlock;
                else freeMemHead = newBlock;
            } else {
                if (prev != nullptr) prev->next = curr->next;
                else freeMemHead = curr->next;
            }
            return (void*) ((char*) curr + sizeof(FreeMemBlock));
        }
        prev = curr;
        curr = curr->next;
    }

    return nullptr;
}

int MemoryAllocator::mem_free(void *address) {
    if (address == nullptr) return MemoryAllocator::INVALID_ARGUMENTS;

    FreeMemBlock* blockToFree = (FreeMemBlock*) ((char*) address - sizeof(FreeMemBlock));
    FreeMemBlock* curr = freeMemHead;
    FreeMemBlock* prev = nullptr;

    // keep list sorted by address
    while (curr != nullptr && curr < blockToFree) {
        prev = curr;
        curr = curr->next;
    }

    blockToFree->next = curr;
    if (prev != nullptr) prev->next = blockToFree;
    else freeMemHead = blockToFree;

    // attempt merging with next block
    if (blockToFree->next != nullptr &&
        (char*)blockToFree + blockToFree->size == (char*)blockToFree->next) {
        blockToFree->size += blockToFree->next->size;
        blockToFree->next = blockToFree->next->next;
    }

    // attempt merging with previous block
    if (prev != nullptr &&
        (char*)prev + prev->size == (char*)blockToFree) {
        prev->size += blockToFree->size;
        prev->next = blockToFree->next;
    }

    return MemoryAllocator::OK;
}

// override new and delete operators
/*
void* operator new(size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void* operator new[](size_t size) {
    return MemoryAllocator::mem_alloc(size);
}

void operator delete(void* ptr) noexcept {
    MemoryAllocator::mem_free(ptr);
}

void operator delete[](void* ptr) noexcept {
    MemoryAllocator::mem_free(ptr);
}
*/