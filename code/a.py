#! /usr/bin/env python3
#
# Filename: a.py
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 23 October 2022
# Last Modified: Sunday 23 October 2022, 12:21
# $Id:$
# Edit Time: 0:00:12
# Description:
#
# Copyright: (C) 2022 Olivier Sirol <czo@free.fr>

import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 2*np.pi, 30)
y = np.cos(x)
plt.plot(x, y)

plt.show()

