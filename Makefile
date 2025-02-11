# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgraf <jgraf@student.42heilbronn.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/16 11:45:29 by jgraf             #+#    #+#              #
#    Updated: 2025/02/11 19:15:47 by jgraf            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#	Compilation Rules
CC = cc
AR = ar rcs
CFLAGS = -Wall -Werror -Wextra -Iinclude
CFILES = src/ft_printf.c src/convert_number.c src/putchar.c src/convert_pointer.c
OFILES = $(CFILES:.c=.o)
NAME = ft_printf.a

#	Colors
GREEN = \033[0;32m
RED = \033[0;31m
RESET = \033[0m

#	Compilation
all: $(NAME)

$(NAME): $(OFILES)
	@$(AR) $(NAME) $(OFILES)
	@$(CC) $(CFLAGS) -o ft_printf src/main.c ft_printf.a
	@echo "\n$(GREEN)Compilation of ft_printf is complete!$(RESET)"

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Copiled: $(GREEN)$@$(RESET)"

clean:
	@rm -f $(OFILES)
	@echo "$(RED)Object files deleted!$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@rm -f ft_printf
	@echo "$(RED)$(NAME) deleted!$(RESET)"

re: fclean all

.PHONY: all re fclean clean
