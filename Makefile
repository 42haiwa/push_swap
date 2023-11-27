NAME := push_swap

CFLAGS := -Wall -Wextra -Werror -Iinclude -g
LDFLAGS := -Llib -lftprintf

SRC := src/main.c \
		src/op.c \
		src/op2.c \
		src/op3.c \
		src/stack.c \
		src/radix.c \
		src/indexing.c \
		src/check_double.c \
		src/is_to_long.c \
		src/is_sorted.c \
		src/error.c \
		src/check_args_2.c \
		src/simple_push_swap.c \
		src/free_stack.c
OBJ := $(SRC:.c=.o)

%.o:		%.c
			$(CC) $(CFLAGS) -c $< -o $@

$(NAME):	$(OBJ)
			$(CC) -o $(NAME) $(OBJ) $(LDFLAGS)

all:		$(NAME)

clean:
			$(RM) -f $(OBJ)

fclean:		clean
			$(RM) -f $(NAME)

re:			fclean all

.PHONY: all clean fclean re
