//
// Created by os on 6/8/26.
//

#ifndef OS1_KERNEL_PRINT_H
#define OS1_KERNEL_PRINT_H

#include "../lib/hw.h"

void _printString(const char* str);
void _printInt(int num);
void _printHex(uint64 num);

#endif //OS1_KERNEL_PRINT_H