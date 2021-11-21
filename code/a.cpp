// Filename: a.cpp
// Author: Olivier Sirol <czo@free.fr>
// License: GPL-2.0 (http://www.gnu.org/copyleft)
// File Created: nov. 2021
// Last Modified: dimanche 21 novembre 2021, 15:41
// Edit Time: 0:00:04
// Description:

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

