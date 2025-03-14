#! /usr/bin/env perl
#
# Filename: template.pl
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 09 March 2025
# Last Modified: Sunday 09 March 2025, 15:36
# $Id:$
# Edit Time: 0:00:19
# Description:
#
# Copyright: (C) 2025 Olivier Sirol <czo@free.fr>

#use strict;
use warnings;

foreach (qx(zpool status)) {
    if (m,^\s*pool:\s+(.*),) { $pool = $1; }
    if (m,^\s*scan:\s+(.*),) { $scan = $1; $ok = 1; }
    if ($ok) {
        $ok = 0;
        if ( $scan =~ '(scrub in progress)|(resilver in progress)' ) {
            $poollist{$pool} = 0;
        } else {
            $poollist{$pool} = 100;
        }
    }
}

if ( $ARGV[0] and $ARGV[0] eq "config" ) {
    print <<EOT;
graph_title \@scrub or rslv zpool
graph_vlabel in scrub or rslv at 0
graph_category zfs
graph_args --base 1000 --lower-limit -5 --upper-limit 105 --rigid
graph_info This graph shows the pool scrub or resilver (OK=100 BAD=0).
EOT

    foreach $d ( sort keys %poollist ) {
        print "$d.label $d\n";
        print "$d.warning 90:\n";
        ##print "$d.critical 90:\n";
    }
    exit 0;
}

foreach $d ( sort keys %poollist ) {
    print "$d.value $poollist{$d}\n";
}

__END__

