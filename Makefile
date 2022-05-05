# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: févr. 2021
# Last Modified: jeudi 05 mai 2022, 16:03
# Edit Time: 0:07:40
# Description:
#
# $Id:$
#

all: 
	vsce package
	@echo "<- all done!"

run:
	vsce run

size:
	xdotool selectwindow windowsize 1280 800

clean:
	rm -fr node_modules/
	rm -f *.vsix
	@echo "<- clean done!"

.PHONY: all clean

