/*
 * Filename: a.c
 * Author: Olivier Sirol <czo@free.fr>
 * License: GPL-2.0 (http://www.gnu.org/copyleft)
 * File Created: 12 March 2025
 * Last Modified: Wednesday 12 March 2025, 13:12
 * Edit Time: 0:00:17
 * Description:
 *
 * Copyright: (C) 2025 Olivier Sirol <czo@free.fr>
 */

#ident "$Id:$"

/*
 * ####===========================================================####
 * #### Include Files
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/*
 * ####===========================================================####
 * #### Main
 */

int main (int argc, char *argv[], char *envp[])
{
    printf ("Size of   char: %d bytes\n", sizeof(char));
    printf ("Size of    int: %d bytes\n", sizeof(int));
    printf ("Size of  float: %d bytes\n", sizeof(float));
    printf ("Size of double: %d bytes\n", sizeof(double));

    return (0);
}

