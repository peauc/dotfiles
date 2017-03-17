##
## Makefile for  in /home/peau_c/bin
##
## Made by ~/bin
## Login   <peau_c@epitech.net>
##
## Started on  TEST_FILE
## Last update Thu Feb 18 15:28:19 2016 Clement Peau
##

SRC=	src/main.c \

OBJ=	$(SRC:.c=.o)

CC=	gcc -g -o $(NAME) $(LIB)

CFLAGS=	-W -Wall -Werror -ansi -pedantic -Wextra

CMD=	-llapin -lsfml-audio -lsfml-graphics -lsfml-window
CMD+=	-lsfml-system -lstdc++ -ldl -L ~/.froot/lib -lm

LIB=	-I inc/

NAME=	TEST

$(NAME):	$(OBJ)
		$(CC) $(OBJ) $(CMD)

all:		$(NAME)

clean:
		rm $(OBJ)

fclean:		clean
		rm $(NAME)

re:		fclean all
