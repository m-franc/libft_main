NAME = libft_test

FLAGS = -Wall -Wextra -Werror -fsanitize=address

##FLAGS = -fsanitize=address

CC = gcc $(FLAGS)

PATH_LIB = ../Libft/

LIBFT = $(PATH_LIB)libft.a

SRCS = main.c

OBJS = main.o

all: $(NAME)

$(LIBFT): 
	@make -C $(PATH_LIB)

$(NAME): $(LIBFT) $(OBJS)
	$(CC) $^ -o $@

%.o: %.c
	$(CC) -c $< -o $@ -I $(PATH_LIB)

clean:
	@make clean -C $(PATH_LIB)
	rm -f $(OBJS)

fclean: clean
	@make fclean -C $(PATH_LIB)
	rm -f $(OBJS)

re: fclean all
