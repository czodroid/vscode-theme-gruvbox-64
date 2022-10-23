// Filename: a.cpp
// Author: Olivier Sirol <czo@free.fr>
// License: GPL-2.0 (http://www.gnu.org/copyleft)
// File Created: 23 October 2022
// Last Modified: Sunday 23 October 2022, 12:22
// Edit Time: 0:00:25
// Description:
//
// Copyright: (C) 2022 Olivier Sirol <czo@free.fr>


#ident "$Id:$"

// ####===========================================================####
// #### Include Files

#include <iostream>

using namespace std;

// ####===========================================================####
// #### Main

int main (int argc, char *argv[], char *envp[])
{
    cout << "Size of   char: " << sizeof(char)   << " bytes" << endl;
    cout << "Size of    int: " << sizeof(int)    << " bytes" << endl;
    cout << "Size of  float: " << sizeof(float)  << " bytes" << endl;
    cout << "Size of double: " << sizeof(double) << " bytes" << endl;

    return (0);
}

