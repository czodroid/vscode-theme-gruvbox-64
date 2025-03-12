#! /usr/bin/env bash
#
# Filename: a.sh
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 12 March 2025
# Last Modified: Wednesday 12 March 2025, 13:12
# $Id:$
# Edit Time: 0:00:03
# Description:
#
# Copyright: (C) 2025 Olivier Sirol <czo@free.fr>

if [ $(id -u) -ne 0 ]; then
    echo "ERROR: this script must be run as root"
    exit 1
fi

if [ "$#" -ne 1 ]; then
    echo "ERROR : please specify a device, e.g.: /dev/sdb"
    echo "Usage : $0 device"
    exit 1
fi

export LC_ALL=C

echo "BlaBla..."

