# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 12 March 2025
# Last Modified: Wednesday 12 March 2025, 13:12
# $Id:$
# Edit Time: 0:00:25
# Description:
#               Makefile for this project
#
#      $@ Target name
#      $< Name of the first dependency
#      $^ List of dependencies
#      $? List of dependencies newer than the target
#      $* Target name without suffix
#
# Copyright: (C) 2025 Olivier Sirol <czo@free.fr>

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

