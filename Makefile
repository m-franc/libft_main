NAME = libft_test

FLAGS = -Wall -Wextra -Werror -fsanitize=address

CC = gcc $(FLAGS)

LIBFT = libft

PATH_LIB = ../$(LIBFT)/

SRCS = main.c

OBJS = main.o

LIBFT_MAKE = make -C $(PATH_LIB)

all: $(NAME)

$(NAME): $(LIBFT_MAKE)
	$(CC) -o $@ $(SRCS)

clean:
	rm -f $(OBJS)
	make clean -C $(LIBFT)

flcean: clean:
	rm -f $(OBJS)
	make fclean -C $(LIBFT)

re: fclean all
