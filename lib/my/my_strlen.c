/*
** EPITECH PROJECT, 2024
** cpool
** File description:
** my_strlen
*/

#include <stddef.h>

size_t my_strlen(char const *str)
{
    size_t i = 0;

    for (; str[i]; i++);
    return i;
}
