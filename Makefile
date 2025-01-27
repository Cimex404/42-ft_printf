# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgraf <jgraf@student.42heilbronn.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/16 11:45:29 by jgraf             #+#    #+#              #
#    Updated: 2024/10/18 09:55:42 by jgraf            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


CC = cc
AR = ar rcs
CFLAGS = -Wall -Werror -Wextra -Iinclude
CFILES = src/ft_printf.c src/convert_number.c src/putchar.c src/convert_pointer.c
OFILES = $(CFILES:.c=.o)
NAME = ft_printf.a

all: $(NAME)

$(NAME): $(OFILES)
	$(AR) $(NAME) $(OFILES)
	$(CC) $(CFLAGS) -o ft_printf src/main.c ft_printf.a

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)
	rm -f ft_printf

re: fclean all

.PHONY: all re fclean clean
