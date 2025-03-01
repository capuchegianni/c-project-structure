##
## EPITECH PROJECT, 2024
## cpool
## File description:
## Makefile
##

DEFAULT := \e[0;
BOLD := \e[1;
END := \e[0m
RED := 91m
GREEN := 92m
YELLOW := 93m
BLUE := 94m

SRC := 	my_putstr.c		\
		my_strlen.c 	\
		my_puterr.c		\
		my_print_tab.c	\

OBJ := $(SRC:.c=.o)

NAME := libmy.a

WARNING_FLAGS := -Wall -Wextra -g

# This rule does 4 important things:
# 1. It compiles all of the source files into object files
# 2. It creates the library
# 3. It copies the library to the root of the project
# 4. It copies the header file to the include directory
all: $(OBJ)
	@echo -n "[ $(BOLD)$(YELLOW)...$(END) ] "
	@echo "$(DEFAULT)$(BLUE)creating the $(NAME) library$(END)"
	ar rcs $(NAME) $(OBJ)
	cp $(NAME) ../$(NAME)
	@echo -n "[ $(BOLD)$(BLUE)OK$(END) ] "
	@echo "$(DEFAULT)$(GREEN)successfully created the $(NAME) library$(END)"
	cp my.h ../../include/my.h
	@echo -n "[ $(BOLD)$(BLUE)OK$(END) ] "
	@echo "$(DEFAULT)$(GREEN)copied my.h to ./include/$(END)"

%.o: %.c
	gcc -c $< -o $@ $(WARNING_FLAGS)
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(GREEN)$< compiled$(END)"

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f ../$(NAME)
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(RED)removed $(NAME)$(END)"

re: fclean all

.PHONY: all clean fclean re
