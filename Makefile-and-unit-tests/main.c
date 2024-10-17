/*
** EPITECH PROJECT, 2024
** cpool
** File description:
** main
*/

#include "my.h"
#include "project.h"

int main(int ac, char **av)
{
    if (ac < 2) {
        my_puterr("Please specify an argument.\n");
        return 84;
    }
    my_putstr("User said: ");
    print_multiple_args(av);
    return 0;
}
