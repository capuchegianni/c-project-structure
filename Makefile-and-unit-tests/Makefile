##
## EPITECH PROJECT, 2024
## cpool
## File description:
## Makefile
##

DEFAULT = \e[0;
BOLD = \e[1;
END = \e[0m
RED = 91m
GREEN = 92m
YELLOW = 93m
BLUE = 94m

SRC	:= 	main.c	\
		print_multiple_args.c

OBJ	:= $(SRC:.c=.o)

NAME :=	test

LIB_FLAGS := -I./include -L./lib/my -lmy

WARNING_FLAGS := -Wall -Wextra -g

all: $(NAME)

build_lib:
	make -sC lib/my/

$(NAME): $(OBJ) lib/my/libmy.a
	@echo -n "[ $(BOLD)$(YELLOW)...$(END) ] "
	@echo "$(DEFAULT)$(BLUE)compiling $(NAME) executable$(END)"
	gcc -o $(NAME) $(OBJ) $(LIB_FLAGS) $(WARNING_FLAGS)
	@echo -n "[ $(BOLD)$(BLUE)OK$(END) ] "
	@echo "$(DEFAULT)$(GREEN)successfully compiled $(NAME) executable$(END)"

lib/my/libmy.a: build_lib
	@true

%.o: %.c
	gcc -c $< -o $@ $(WARNING_FLAGS) $(LIB_FLAGS)
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(GREEN)$< compiled$(END)"

clean:
	rm -f $(OBJ)
	make -sC ./lib/my clean
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(RED)removed .o files$(END)"

fclean: clean
	rm -f $(NAME)
	rm -f *.log
	make -sC ./lib/my fclean
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(RED)removed $(NAME)$(END)"

re: fclean all

.PHONY: all clean fclean re
