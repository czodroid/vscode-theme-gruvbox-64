# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: févr. 2021
# Last Modified: jeudi 05 mai 2022, 16:25
# Edit Time: 0:18:11
# Description:
#
# $Id:$
#

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

