##
## EPITECH PROJECT, 2024
## cpool
## File description:
## Makefile
##

# Add cool colors to your Makefile
DEFAULT = \e[0;
BOLD = \e[1;
END = \e[0m
RED = 91m
GREEN = 92m
YELLOW = 93m
BLUE = 94m

# SRC variable will hold all of your project source files
SRC	:= 	src/main.c	\

# OBJ variable automatically compiles all of your source files when it is called
OBJ	:= $(SRC:.c=.o)

# NAME variable holds the name of the executable you want to create
NAME :=	a.out

# CFLAGS is a variable implicitly used by make to compile your files, you can then add any compilation flag you want
# Here, we add the -I flag tells the compiler to look for the header files in the "./include" directory
# The -L flag tells the compiler to look for the library files in the "./lib" directory
# The -l flag tells the compiler to link the "my" library to the executable
CFLAGS += -I./include -L./lib -lmy

# The -Wall and -Wextra flags are used to display all warnings and extra warnings
# The -g flag is used to compile the executable with the debug symbols
# /!\ Do not forget to remove the -g flag when you want to compile your project for production
CFLAGS += -Wall -Wextra -g

# This is a Makefile rule
# The first rule is the default rule, it is called when you run the "make" command
# The rule is composed of a target, a colon, and a list of dependencies
# Here, the "all" rule calls the "$(NAME)" rule. Doing it this way allows us to compile any other library or object files before compiling the executable
all: $(NAME)

# The build_lib rule is used to compile any of your libraries (if you have any)
# The -s flag is used to silence the output of the make command
# The -C flag is used to change the directory where the make command is executed
build_lib:
	make -sC lib/my/

# This is the $(NAME) rule, it is associated to the variable NAME we defined earlier
# This rule first calls the OBJ variable to compile automatically all of the source files
# Then it calls the build_lib rule to compile any libraries
# Finally, it compiles the executable with the gcc command
$(NAME): build_lib $(OBJ)
	@echo -n "[ $(BOLD)$(YELLOW)...$(END) ] "
	@echo "$(DEFAULT)$(BLUE)compiling $(NAME) executable$(END)"
	gcc -o $(NAME) $(OBJ) $(CFLAGS)
	@echo -n "[ $(BOLD)$(BLUE)OK$(END) ] "
	@echo "$(DEFAULT)$(GREEN)successfully compiled $(NAME) executable$(END)"

# This rule allows us to personalize the compilation of each source file
# It is not mandatory to declare it as it is already implicitly used by make when calling the $(OBJ) variable
# $< holds the name of each .c files
# $@ holds the name of each .o files
%.o: %.c
	gcc -c $< -o $@ $(CFLAGS)
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(GREEN)$< compiled$(END)"

# This rule is used to clean all of the object files
clean:
	rm -f $(OBJ)
	make -sC ./lib/my clean
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(RED)removed .o files$(END)"

# This rule is used to clean all of the object files and the executables/libraries
fclean: clean
	rm -f $(NAME)
	rm -f *.log
	make -sC ./lib/my fclean
	@echo "[ $(BOLD)$(BLUE)OK$(END) ] $(DEFAULT)$(RED)removed $(NAME)$(END)"

# This rule is used to clean all of the object files, the executables/libraries, and recompile the project
re: fclean all

# This rule is used to prevent any conflict with files that have the same name as the rules
.PHONY: all clean fclean re
