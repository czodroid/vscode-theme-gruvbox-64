# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: févr. 2021
# Last Modified: Monday 23 March 2026, 19:10
# Edit Time: 0:19:29
# Description:
#
#               Makefile for this project
#
# Copyright: (C) 2021-2026 Olivier Sirol <czo@free.fr>

all:
	vsce package
	@echo "<- all done!"

publish:
	vsce publish
	@echo "<- publish done!"

size:
	xdotool selectwindow windowsize 1100 800

clean:
	rm -fr node_modules/
	rm -f *.vsix
	@echo "<- clean done!"

fclean: clean

.PHONY: all clean

