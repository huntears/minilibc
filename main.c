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
    
    return 0;
}
