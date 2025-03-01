/*
** EPITECH PROJECT, 2025
** makefile-and-unit-tests
** File description:
** my_print_tab
*/

#include "my.h"

void my_print_tab(char **tab)
{
    for (int i = 0; tab[i]; i++)
        my_putstr(tab[i]);
}
