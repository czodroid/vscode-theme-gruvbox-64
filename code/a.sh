#! /bin/sh
#
# Filename: a.sh
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: nov. 2021
# Last Modified: dimanche 21 novembre 2021, 15:41
# Edit Time: 0:00:05
# Description:
#
# $Id:$

if [ "$#" -ne 1 ]; then
    echo "ERROR : please specify a message..."
    echo "Usage : $0 \"a message text\""
    exit 42
fi

(
gdbus call --session   \
   --dest org.freedesktop.Notifications \
   --object-path /org/freedesktop/Notifications \
   --method org.freedesktop.Notifications.Notify \
   'notify-send' '42' 'utilities-terminal' 'notify-send!' \
   "$1" \
   '[]' '{}' '5000'
) > /dev/null 2>&1

