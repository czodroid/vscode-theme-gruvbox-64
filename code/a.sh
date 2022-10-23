#! /usr/bin/env sh
#
# Filename: a.sh
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 23 October 2022
# Last Modified: Sunday 23 October 2022, 12:21
# $Id:$
# Edit Time: 0:00:12
# Description:
#
# Copyright: (C) 2022 Olivier Sirol <czo@free.fr>

if [ "$#" -ne 1 ]; then
    echo "ERROR : please specify a message..."
    echo "Usage : $0 'a message text'"
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

