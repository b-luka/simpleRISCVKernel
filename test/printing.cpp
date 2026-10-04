//
// Created by os on 6/8/26.
//

#include "../h/syscall_c.hpp"
#include "./printing.hpp"

void printString(const char* str) {
    if (str == nullptr) return;

    while (*str != '\0') {
        putc(*str);
        str++;
    }
}

void printInt(int num) {
    if (num == 0) {
        putc('0');
        return;
    }

    if (num < 0) {
        putc('-');
        num = -num;
    }

    char buffer[12];    // 32 bit int
    int i = 0;
    while (num > 0) {
        buffer[i++] = (num % 10 + '0');
        num /= 10;
    }

    while (i > 0) {
        putc(buffer[--i]);
    }
}