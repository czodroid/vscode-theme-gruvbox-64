# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 23 October 2022
# Last Modified: Sunday 23 October 2022, 12:21
# $Id:$
# Edit Time: 0:00:12
# Description:
#      Makefile:
#      $@ Le nom de la cible
#      $< Le nom de la première dépendance
#      $^ La liste des dépendances
#      $? La liste des dépendances plus récentes que la cible
#      $* Le nom du fichier sans suffixe
#
# Copyright: (C) 2022 Olivier Sirol <czo@free.fr>

CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic
#CFLAGS += -I ..
#LIBS += -lX11 -lXext -lhistory  -lreadline

SRC= $(wildcard *.c)

DEPS = $(wildcard *.c) $(wildcard *.h)

OBJ  = $(SRC:.c=.o)

EXEC = go

all: $(EXEC)
	@echo "<- all done!"

viewdeps: $(DEPS)
	@echo $(DEPS)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(LIBS)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm -f *.o
	@echo "<- clean done!"

realclean: clean
	rm -f $(EXEC)
	@echo "<- realclean done!"

fclean: realclean

re: realclean all

.PHONY: all clean realclean fclean re

