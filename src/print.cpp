//
// Created by os on 6/8/26.
//

#include "../lib/console.h"
#include "../h/print.hpp"

void _printString(const char* str) {
    if (str == nullptr) return;

    while (*str != '\0') {
        __putc(*str);
        str++;
    }
}

void _printInt(int num) {
    if (num == 0) {
        __putc('0');
        return;
    }

    if (num < 0) {
        __putc('-');
        num = -num;
    }

    char buffer[12];    // 32 bit int
    int i = 0;
    while (num > 0) {
        buffer[i++] = (num % 10 + '0');
        num /= 10;
    }

    while (i > 0) {
        __putc(buffer[--i]);
    }
}

void _printHex(uint64 num) {
    _printString("0x");
    char buffer[17];
    buffer[16] = '\0';
    for (int i = 15; i >= 0; i--) {
        int remainder = num % 16;
        if (remainder < 10) buffer[i] = '0' + remainder;
        else buffer[i] = 'A' + (remainder - 10);
        num /= 16;
    }

    _printString((char *) &buffer);
}