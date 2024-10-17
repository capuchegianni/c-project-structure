/*
** EPITECH PROJECT, 2024
** cpool
** File description:
** print_multiple_args
*/

#include "my.h"

void print_multiple_args(char **av)
{
    for (int i = 0; av[i]; i++) {
        my_putstr(av[i]);
        my_putstr(" ");
    }
    my_putstr("\n");
}
