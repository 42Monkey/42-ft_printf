################################################################################
## ARGUMENTS

NAME		= libftprintf.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror
AR			= ar rcs
RM			= rm -f

################################################################################
## SOURCES

SRCS		=	ft_printf.c \
				ft_printf_character.c \
				ft_printf_hex.c \
				ft_printf_number.c \
				ft_printf_pointer.c \
				ft_printf_string.c \
				ft_printf_unsigned_number.c \
				ft_strlen.c \
				ft_utoa.c

OBJS		= $(SRCS:.c=.o)

################################################################################
## RULES

all:		$(NAME)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)
			@echo "\n$(GREEN)Successfully created $(NAME)$(NC)\n"

clean:
			$(RM) $(OBJS)
			@echo "\n$(YELLOW)Successfully removed object files$(NC)\n"

fclean:		clean
			$(RM) $(NAME)
			@echo "\n$(YELLOW)Successfully removed everything $(NAME)$(NC)\n"

re:		fclean all

.PHONY: 	all clean fclean re

################################################################################
## STYLES

CYAN		= \033[0;36m
YELLOW		= \033[0;33m
GREEN		= \033[0;32m
NC			= \033[0m
