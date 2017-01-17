# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfranc <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/17 21:08:17 by mfranc            #+#    #+#              #
#    Updated: 2017/01/17 21:08:18 by mfranc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft_test

FLAGS = -fsanitize=address

FLAGS = -Wall -Wextra -Werror -fsanitize=address

CC = gcc $(FLAGS)

PATH_LIB = ../Libft/

LIBFT = $(PATH_LIB)libftprintf.a

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
	rm -f $(NAME)

re: fclean all
