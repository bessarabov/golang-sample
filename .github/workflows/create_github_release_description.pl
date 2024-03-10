#!/usr/bin/perl

use strict;
use warnings;
use feature qw(say);

sub write_file {
    my ($file_name, $content) = @_;

    open(my $fh, '>', $file_name) or die "Could not open file '$file_name' $!";

    print $fh $content;
    close $fh;
}


sub main {

    my $current_tag = $ARGV[0];

    if (not defined $current_tag) {
        die "Must run as '$0 TAG'"
    }

    my $release_description = "```
release_description

$current_tag
```";

    write_file('release_description.txt', $release_description);

}
main();
