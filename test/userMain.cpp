#include "./printing.hpp"
#include "../h/syscall_c.hpp"
#include "./priorityTest.hpp"

void userMain() {
    printString("Unesite broj testa? [1-7]\n");
    int test = getc() - '0';
    getc();

    switch (test) {
        case 8:
            priorityTest();
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}