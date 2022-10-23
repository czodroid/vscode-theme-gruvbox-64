#! /usr/bin/env perl
#
# Filename: a.pl
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 23 October 2022
# Last Modified: Sunday 23 October 2022, 12:21
# $Id:$
# Edit Time: 0:00:12
# Description:
#
# Copyright: (C) 2022 Olivier Sirol <czo@free.fr>

#use strict;
#use warnings;

foreach (qx(zpool status)) {
    if (m,^\s*pool:\s+(.*),) { $pool = $1; }
    if (m,^\s*scan:\s+(.*),) { $scan = $1; $ok = 1; }
    if ($ok) {
        $ok = 0;
        if ( $scan =~ 'scrub in progress|resilver' ) {
            $poollist{$pool} = 90;
        } else {
            $poollist{$pool} = 10;
        }
    }
}

if ( $ARGV[0] and $ARGV[0] eq "config" ) {
    print <<EOT;
graph_title scrub/resilver zpool
graph_vlabel in scrub/rslv at 90
graph_category ZFS
graph_args --base 1000 --lower-limit 0 --upper-limit 100 --rigid
graph_info This graph shows the pool scrub.
EOT

    foreach $d ( sort keys %poollist ) {
        print "$d.label $d\n";
        print "$d.warning 2:20\n";
        print "$d.critical 1:99\n";
    }
    exit 0;
}

foreach $d ( sort keys %poollist ) {
    print "$d.value $poollist{$d}\n";
}

__END__

