# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: févr. 2021
# Last Modified: Saturday 28 September 2024, 19:11
# Edit Time: 0:18:18
# Description:
#
#               Makefile for this project
#
# Copyright: (C) 2021-2024 Olivier Sirol <czo@free.fr>

all:
	vsce package
	@echo "<- all done!"

publish:
	vsce publish
	@echo "<- publish done!"

size:
	xdotool selectwindow windowsize 1280 800

clean:
	rm -fr node_modules/
	rm -f *.vsix
	@echo "<- clean done!"

.PHONY: all clean

