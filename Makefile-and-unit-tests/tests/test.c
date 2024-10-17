/*
** EPITECH PROJECT, 2024
** makefile-and-unit-tests
** File description:
** test
*/

#include <criterion/criterion.h>

#include "project.h"

Test(error_handling, multiple_args)
{
    int ac = 4;

    cr_assert(error_handling(ac) == 0);
}

Test(error_handling, single_arg)
{
    int ac = 1;

    cr_assert(error_handling(ac) == 84);
}
