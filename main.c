/*
** EPITECH PROJECT, 2021
** asm
** File description:
** main
*/

#include <stdio.h>

#include "libasm.h"

int main(void)
{
    size_t len = strlen("Issou");
    
    printf("Length of \"Issou\" : %d\n", len);
    
    const char yes[] = "mmyes";
    char no[]  = "ohnonono";

    memmove(no, yes, 4);

    printf("memmove : %s\n", no);

    memset(no, 'A', 3);

    printf("memset : %s\n", no);
    
    char const value1[] = "1";
    char const value2[] = "1";

    int value = strcmp(value1, value2);

    printf("strcmp : %d\n", value);

    value = strcmp("11", "1");

    printf("strcmp : %d\n", value);

    value = strcmp("1", "11");

    printf("strcmp : %d\n", value);

    printf("rindex : %s\n", rindex(yes, 'm'));

    return 0;
}
