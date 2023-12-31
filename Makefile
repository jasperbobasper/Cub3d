CC			= gcc 
CFLAGS		= -Wall -Wextra -Werror -ggdb

NAME		= cub3D
UNAME 		:= $(shell uname)

SRCD		= ./srcs/
SRC			= 	close_window.c libft_utils.c libft_utils_2.c map_error.c get_next_line.c tex_utils.c ft_split.c \
				main.c draw_floor_ceiling.c free.c map_init.c init_textures.c textures.c raycast.c \
				movement.c raycast_utils.c rotation.c colours.c

SRCF		= $(addprefix $(SRCD),$(SRC))
OBJD		= ./objs/

HEADD		= ./incl/
HEADF		= raycast.h

INCL_LINUX	= -lm -Lmlx_linux -lmlx_Linux -L/usr/lib -Imlx_linux -lXext -lX11 -lm -lz
INCL_MACOS	= -lm -Lminilibx -lmlx -framework OpenGL -framework AppKit

MLX_LINUX	= mlx_linux
MLX_MACOS	= minilibx

RM			= rm -f

ifeq ($(UNAME), Darwin)
INCL = $(INCL_MACOS)
MLX	 = $(MLX_MACOS)
else
INCL = $(INCL_LINUX)
MLX	 = $(MLX_LINUX)
endif

# for every SRCF file which is an .c file an o file will be created according to the implicit rule (see $(OBJD)%.o: $(SRCD)%.c)
OBJF		= $(SRCF:$(SRCD)%.c=$(OBJD)%.o)
BUILD		= $(OBJF:$(OBJD)%.o)


all:		mlx ${NAME}

$(NAME):	${OBJF}
			$(CC) $(CFLAGS) $(SRCF) ${INCL} -o $(NAME) -L $(HEADD)

$(OBJD)%.o: $(SRCD)%.c
			@mkdir -p $(OBJD)
			$(CC) $(CFLAGS) -I ${HEADD} -I$(MLX) -c -o $@ $<

mlx:		
			$(MAKE) -C $(MLX)

clean:
			${RM} ${OBJF}

cleanminilib:
			$(MAKE) -C $(MLX) clean

fclean:		clean
			${RM} ${NAME}

fcleanall: 	fclean cleanminilib
			${RM} ${MLX}/libmlx.a
os:
			@echo $(UNAME)

re:			fclean all

reall: 		fcleanall all

.PHONY:		all clean fclean re os 