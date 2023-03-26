# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bvaujour <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/01 11:28:08 by bvaujour          #+#    #+#              #
#    Updated: 2022/12/01 11:36:47 by bvaujour         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c convertion.c

OBJ = $(SRC:.c=.o)

FLAG = -Wall -Werror -Wextra

all : $(NAME)

%.o : %.c
	gcc $(FLAG) -c $< -o $@
	
$(NAME) : $(OBJ) ft_printf.h
	ar -rcs $(NAME) $(OBJ)
	
clean:
	rm -rf $(OBJ) $(OBJ_BONUS) ./a.out

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
