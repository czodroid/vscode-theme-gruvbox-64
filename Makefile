# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: févr. 2021
# Last Modified: Wednesday 12 March 2025, 10:59
# Edit Time: 0:19:11
# Description:
#
#               Makefile for this project
#
# Copyright: (C) 2021-2025 Olivier Sirol <czo@free.fr>

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

.PHONY: all clean

