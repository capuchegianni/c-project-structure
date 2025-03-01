/*
** EPITECH PROJECT, 2024
** cpool
** File description:
** main
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

int main(int ac, char **av)
{
    if (error_handling(ac))
        return 84;
    my_print_tab(av);
    return 0;
}
