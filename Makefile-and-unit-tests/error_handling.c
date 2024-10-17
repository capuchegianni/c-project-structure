/*
** EPITECH PROJECT, 2024
** makefile-and-unit-tests
** File description:
** error_handling
*/

#include "my.h"

int error_handling(int ac)
{
    if (ac < 2) {
        my_puterr("Please specify an argument.\n");
        return 84;
    }
    return 0;
}