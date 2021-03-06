# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qsymond <qsymond@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/10 15:33:42 by qsymond           #+#    #+#              #
#    Updated: 2020/05/11 16:12:07 by Student          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

RM = rm -rf

NAME = libft.a
NAME2 = libft.so

SRCS =	ft_atoi.c		\
		ft_bzero.c		\
		ft_calloc.c		\
		ft_isalnum.c	\
		ft_isalpha.c	\
		ft_isascii.c	\
		ft_isdigit.c	\
		ft_isprint.c	\
		ft_itoa.c		\
		ft_memccpy.c	\
		ft_memchr.c		\
		ft_memcmp.c		\
		ft_memcpy.c		\
		ft_memmove.c	\
		ft_memset.c		\
		ft_putchar_fd.c	\
		ft_putendl_fd.c	\
		ft_putnbr_fd.c	\
		ft_putstr_fd.c	\
		ft_split.c		\
		ft_strchr.c		\
		ft_strdup.c		\
		ft_strjoin.c	\
		ft_strlcat.c	\
		ft_strlcpy.c	\
		ft_strlen.c		\
		ft_strmapi.c	\
		ft_strncmp.c	\
		ft_strnstr.c	\
		ft_strrchr.c	\
		ft_strtrim.c	\
		ft_substr.c		\
		ft_tolower.c	\
		ft_toupper.c	\

BONUS_SRCS =	ft_lstadd_back_bonus.c	\
				ft_lstdelone_bonus.c	\
				ft_lstmap_bonus.c		\
				ft_lstadd_front_bonus.c	\
				ft_lstiter_bonus.c		\
				ft_lstnew_bonus.c		\
				ft_lstclear_bonus.c		\
				ft_lstlast_bonus.c		\
				ft_lstsize_bonus.c		\

OBJS = -Wall -Wextra -Werror -c

all: $(NAME)

$(NAME): $(SRCS)
	$(CC) $(OBJS) $(SRCS)
	ar rc $(NAME) *.o
	ranlib $(NAME)

clean:
	$(RM) *.o

fclean: clean
	$(RM) $(NAME)

re: fclean all

bonus: $(BONUS_SRCS)
	$(CC) $(OBJS) $(BONUS_SRCS)
	ar rc $(NAME) *.o
	ranlib $(NAME)

so: 	$(SRCS)
	$(CC) $(OBJS) $(SRCS)
	ar rc $(NAME2) *.o
	ranlib $(NAME2)
