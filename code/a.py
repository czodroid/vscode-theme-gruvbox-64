#! /usr/bin/python3
#
# Filename: a.py
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: nov. 2021
# Last Modified: dimanche 21 novembre 2021, 15:41
# Edit Time: 0:00:04
# Description:
#
# $Id:$

import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0, 2*np.pi, 30)
y = np.cos(x)
plt.plot(x, y)

plt.show()

