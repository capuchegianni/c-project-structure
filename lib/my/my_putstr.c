/*
** EPITECH PROJECT, 2024
** cpool
** File description:
** my_putstr
*/

#include <unistd.h>

#include "my.h"

int my_putstr(char const *str)
{
    return write(1, str, my_strlen(str));
}
