# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfusil <mfusil@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/01 19:21:22 by mfusil            #+#    #+#              #
#    Updated: 2022/04/27 19:54:24 by mfusil           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#---------------------------------------------------------------|
#  _        _____   ____    ______   _______     _  _     ___   |
# | |      |_   _| |  _ \  |  ____| |__   __|   | || |   |__ \  |
# | |        | |   | |_) | | |__       | |      | || |_     ) | |
# | |        | |   |  _ <  |  __|      | |      |__   _|   / /  |
# | |____   _| |_  | |_) | | |         | |         | |    / /_  |
# |______| |_____| |____/  |_|         |_|         |_|   |____| |
#----------------------VARIABLE---------------------------------|

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra

RM = rm -f

LINK = ar rc

#----------------------SOURCES FILES----------------------

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

SRC_GNL = gnl/get_next_line.c

SRC_MEM = mem/ft_bzero.c\
		  mem/ft_calloc.c\
		  mem/ft_memchr.c\
		  mem/ft_memcmp.c\
		  mem/ft_memcpy.c\
		  mem/ft_memmove.c\
		  mem/ft_memset.c

SRC_PRINTF = printf/ft_printf.c\
			 printf/ft_printf_nbr.c\
			 printf/ft_printf_str.c\
			 printf/ft_printf_hexa.c

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
		  str/ft_strjoin_free.c\
		  str/ft_strmapi.c

ALL_SRC = $(SRC_CHECK)\
		  $(SRC_CONVERT)\
		  $(SRC_FD)\
		  $(SRC_GNL)\
		  $(SRC_MEM)\
		  $(SRC_PRINTF)\
		  $(SRC_STR)

OBJS = $(ALL_SRC:.c=.o)\

#----------------------RULES----------------------

all : start $(NAME)

start :
	@echo "$(BOLD)$(RED)AUTODESTRUCTION EN COURS ..."
	
.c.o :
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME) : $(OBJS)
	@echo "$(BOLD)$(RED)AUTODESTRUCTION FINI"
	@$(LINK) $(NAME) $(OBJS)

alln : all
		norminette
		clear
	@echo "$(BOLD)$(RED)\n\
	⠀⠀⠀⠀⠀⠀⠠⠤⠒⠒⠒⠒⠒⠤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⢀⡲⢋⠝⠋⣛⣳⡄⠀⠀⠀⠀⠀⠀⠉⠓⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀ \n\
⠀⢀⠠⣴⠗⢀⠥⠂⢁⠤⠤⠤⠁⠀⠀⠀⠀⠀⠀⠀⠀⣛⠛⠉⠗⠒⠲⢤⣀⠀ \n\
⠰⠃⠐⠀⠋⡠⠀⠮⠤⠤⠤⠤⡤⡄⠀⠀⠀⠀⠀⠀⢠⣽⠄⠀⠀⠀⠀⠀⢸⡆ \n\
⠀⠜⠀⠀⠈⠀⢠⣤⣔⣒⡒⠒⠂⠁⠀⡀⢀⣀⣤⣶⣿⡟⠀⠀⠀⠀⠀⢀⡼⠀ \n\
⠈⠀⠀⠀⠀⣰⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠉⠁⠀⠀⠀⢄⡴⠋⠀⠀\n\
⠀⠀⠀⠀⣰⠋⠀⠀⠀⠈⠙⠛⠛⠛⠛⠋⠉⠀⠀⠀⠀⢀⣠⣴⡊⠁⠀⠀⠀⠀\n\
⠀⡠⠐⠉⢸⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣤⣶⣿⣿⣿⡻⡄⠀⠀⠀⠀\n\
⠀⠁⠀⠀⣿⢹⣿⣿⣿⣶⣦⣶⣶⣶⣶⣶⣙⠋⠴⠛⣿⢛⡿⠬⠃⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠈⠘⠹⣿⣿⠛⠛⠛⢿⡇⠀⠉⠀⠘⠉⢰⣯⡊⠙⠀⠀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠀⠀⠀⠈⠱⡄⠀⠀⠘⠃⠀⠀⠀⠀⠠⠛⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⢲⣄⠀⠒⠂⠀⣀⢴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠀⣀⣀⣀⣀⣈⠀⢻⣿⣶⣴⣾⡟⢸⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⢀⡎⠀⢀⣠⡤⠂⢠⠈⢿⣿⡿⣿⠃⠀⠙⣀⣀⣀⡀⠀⠙⣄⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠀⢠⠉⠉⢇⠀⠈⡇⠘⣏⠀⡿⡰⠀⠀⢀⠛⠛⠻⣆⠀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠀⢸⠉⠉⠉⠗⠒⢿⡀⠸⡈⣠⠧⠞⠉⡏⠉⠉⠉⢹⠀⠀⠀⠀⠀⠀\n\
⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠁⠀⠉⠉⠀⠀⠈⠀⠀⠀⠀⠸⠀⠀⠀"
		
clean :
	@$(RM) $(OBJS)
	@echo "$(BLUE)$(BOLD) TU ES SUS\n\
		⠀⠀⠀⠀⣠⣤⣤⣤⣤⣤⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠛⠉⠙⠛⠛⠛⠛⠻⢿⣿⣷⣤⡀⠀⠀⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠋⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠈⢻⣿⣿⡄⠀⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⣸⣿⡏⠀⠀⠀⣠⣶⣾⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⣄⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⢰⣿⣿⣯⠁⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣷⡄⠀ \n\
⠀⠀⣀⣤⣴⣶⣶⣿⡟⠀⠀⠀⢸⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⠀ \n\
⠀⢰⣿⡟⠋⠉⣹⣿⡇⠀⠀⠀⠘⣿⣿⣿⣿⣷⣦⣤⣤⣤⣶⣶⣶⣶⣿⣿⣿⠀ \n\
⠀⢸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀ \n\
⠀⣸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠉⠻⠿⣿⣿⣿⣿⡿⠿⠿⠛⢻⣿⡇⠀⠀ \n\
⠀⣿⣿⠁⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⠀⠀ \n\
⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀ \n\
⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀ \n\
⠀⢿⣿⡆⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀ \n\
⠀⠸⣿⣧⡀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠃⠀⠀ \n\
⠀⠀⠛⢿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⣰⣿⣿⣷⣶⣶⣶⣶⠶⠀⢠⣿⣿⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⣽⣿⡏⠁⠀⠀⢸⣿⡇⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⢹⣿⡆⠀⠀⠀⣸⣿⠇⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⢿⣿⣦⣄⣀⣠⣴⣿⣿⠁⠀⠈⠻⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀ \n\
⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"

fclean :
	@$(RM) $(NAME)
	@$(RM) $(OBJS)
	@echo "$(PURPLE)$(BOLD)JE SUIS THANOS\n\
⠀⠀⠀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀\n\
⠀⠀⣠⣿⣿⣿⡿⠻⣿⣿⣿⣿⣿⣿⠟⢿⣿⣿⣿⣆⠀⠀\n\
⠀⢠⣿⣿⣯⣉⣿⣄⣹⣿⣿⣿⣿⣏⣠⣟⡉⣽⣿⣿⡄⠀\n\
⠀⢸⣿⣿⠟⠛⠉⠉⠛⠻⣿⣿⠟⠛⠉⠙⠛⢿⣿⣿⡇⠀\n\
⣠⣾⣿⣿⣶⣾⡀⠀⣴⣦⣾⣷⣴⣆⠀⣀⣷⣾⣿⣿⣷⡄\n\
⣿⣿⣿⣿⠟⢿⡿⠻⣿⣿⣿⣿⣿⣿⠿⢿⡿⠻⣿⣿⣿⡇\n\
⢻⣿⣿⣿⣧⠈⢿⡀⠹⣄⣈⣁⣰⠏⢠⡿⠀⣼⣿⣿⣿⡇\n\
⠀⣿⣿⣿⣿⣧⠀⣿⣀⣹⣿⣿⣇⣠⣿⠀⣼⣿⣿⣿⣿⠀\n\
⠀⣿⣿⣿⣿⣿⡿⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣿⠀\n\
⠀⢿⣿⣿⣿⣿⣀⣀⣤⣴⣶⣶⣦⣤⣀⣀⣿⣿⣿⣿⡟⠀\n\
⠀⠘⣿⣿⣿⡟⢻⣿⠉⣿⡇⢸⣿⠉⣿⡟⢻⣿⣿⣿⠁⠀\n\
⠀⠀⠸⣿⣿⡇⢸⣿⠀⣿⡇⢸⣿⠀⣿⡇⢸⣿⣿⠇⠀⠀\n\
⠀⠀⠀⠹⣿⡇⢸⣿⠀⣿⡇⢸⣿⠀⣿⡇⢸⣿⠏⠀⠀⠀\n\
⠀⠀⠀⠀⠀⠁⠈⠉⠀⠉⠁⠈⠉⠀⠉⠁⠈⠀⠀⠀⠀⠀"

re : fclean all

#----------------------COLORS----------------------
PURPLE=\x1b[35m
GREY=\x1b[30m
RED=\x1b[31m
GREEN=\x1b[32m
YELLOW=\x1b[33m
BLUE=\x1b[34m
CYAN=\x1b[36m
WHITE=\x1b[37m

#----------------------BACKGROUND----------------------
IGREY=\x1b[40m
IRED=\x1b[41m
IGREEN=\x1b[42m
IYELLOW=\x1b[43m
IBLUE=\x1b[44m
IPURPLE=\x1b[45m
ICYAN=\x1b[46m
IWHITE=\x1b[47m

#----------------------CARACT STYLES----------------------
BOLD=\033[1m
UNDERLINE=\033[4m
REVERSE=\033[7m
