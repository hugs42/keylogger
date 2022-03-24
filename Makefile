NAME = keylogger

SRCS = ./srcs/keylogger.c

OBJ = $(SRCS:.c=.o)

%.o: %.c
	@gcc $(INC) -o $@ -c $<

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	@echo "\033[93m>> Keylogger compilation\033[0m"
	@gcc $(FLAGS) -o $(NAME) $(OBJ) $(LIBFT)
	@echo "\033[92m>> Keylogger correctly compilated\033[0m"

clean: $(OBJ)
	@echo "\033[93m>> Cleaning objects (.obj)\033[0m"
	@rm -rf $(OBJ)

fclean: clean
	@echo "\033[93m>> Cleaning executable\033[0m"
	@rm -rf $(NAME)

re:
	@make fclean
	@make all

.PHONY: all, clean, fclean, re, bonus
