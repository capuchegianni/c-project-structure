/*
** EPITECH PROJECT, 2024
** cpool
** File description:
** my_puterr
*/

#include <unistd.h>

#include "my.h"

int my_puterr(char const *str)
{
    return write(2, str, my_strlen(str));
}
