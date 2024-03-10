#!/usr/bin/perl

use strict;
use warnings;
use feature qw(say);

sub main {

    my $current_tag = $ARGV[0];

    if (not defined $current_tag) {
        die "Must run as '$0 TAG'"
    }

    say $current_tag;

}
main();
