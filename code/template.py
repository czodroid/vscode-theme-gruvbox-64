#! /usr/bin/env python3
#
# Filename: template.py
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 09 March 2025
# Last Modified: Sunday 09 March 2025, 15:36
# $Id:$
# Edit Time: 0:00:19
# Description:
#
# Copyright: (C) 2025 Olivier Sirol <czo@free.fr>

import os
import sys
import json

if len(sys.argv) > 1:
    if sys.argv[1] == "config":
        print('''graph_title Bandwith Freebox
graph_vlabel Mbps
graph_args --base 1024
graph_category sensors
up.type GAUGE
up.min 0
up.max 9000
up.label UP
dl.type GAUGE
dl.min 0
dl.max 9000
dl.label DL''')
    sys.exit(0)

spt = json.load(os.popen('speedtest -f json'))

up = spt["upload"]["bandwidth"] * 8 / 1024 / 1024
dl = spt["download"]["bandwidth"] * 8 / 1024 / 1024

print("up.value", up)
print("dl.value", dl)

