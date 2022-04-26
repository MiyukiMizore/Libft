# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/01 19:21:22 by mfusil            #+#    #+#              #
#    Updated: 2022/04/26 19:45:38 by mfusil           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_CHECK = check/ft_isalnum.c\
	  		check/ft_isalpha.c\
			check/ft_isdigit.c\
			check/ft_isascii.c\
	  		check/ft_isprint.c

SRC_CONVERT = convert/ft_atoi.c\
			  convert/ft_itoa.c\
			  convert/ft_tolower.c\
			  convert/ft_toupper.c

SRC_FD = fd_function/ft_putchar_fd.c\
		 fd_function/ft_putnbr_fd.c\
		 fd_function/ft_putendl_fd.c\
		 fd_function/ft_putstr_fd.c

SRC_MEM = mem/ft_bzero.c\
		  mem/ft_calloc.c\
		  mem/ft_memchr.c\
		  mem/ft_memcmp.c\
		  mem/ft_memcpy.c\
		  mem/ft_memmove.c\
		  mem/ft_memset.c
SRC_STR = str/ft_strchr.c\
		  str/ft_strdup.c\
		  str/ft_striteri.c\
		  str/ft_strlcat.c\
		  str/ft_strlcpy.c\
		  str/ft_strlen.c\
		  str/ft_strncmp.c\
		  str/ft_strnstr.c\
		  str/ft_strrchr.c\
		  str/ft_substr.c\
		  str/ft_strtrim.c\
		  str/ft_split.c\
		  str/ft_strjoin.c\
		  str/ft_strmapi.c

ALL_SRC = $(SRC_CHECK)\
		  $(SRC_CONVERT)\
		  $(SRC_FD)\
		  $(SRC_MEM)\
		  $(SRC_STR)

OBJS = $(ALL_SRC:.c=.o)\

CC = gcc

CFLAGS = -Wall -Werror -Wextra

all : $(NAME)

alln : all
		norminette

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)

clean :
	@rm -f $(OBJS)
	@echo "JE SUIS MIMIE MATHY"

fclean : clean
	@rm -f $(NAME)
	@echo "$(PURPLE)$(BOLD)JE SUIS THANOS"

re : fclean all

#Colors
PURPLE=\x1b[35m
GREY=\x1b[30m
RED=\x1b[31m
GREEN=\x1b[32m
YELLOW=\x1b[33m
BLUE=\x1b[34m
CYAN=\x1b[36m
WHITE=\x1b[37m

#Background
IGREY=\x1b[40m
IRED=\x1b[41m
IGREEN=\x1b[42m
IYELLOW=\x1b[43m
IBLUE=\x1b[44m
IPURPLE=\x1b[45m
ICYAN=\x1b[46m
IWHITE=\x1b[47m

#Caract Styles
BOLD=\033[1m
UNDERLINE=\033[4m
REVERSE=\033[7m
