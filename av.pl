#!/usr/bin/perl

use warnings;
use strict;
use Data::Dumper;

my %a = ();
$a{'a'}{'b'} = 1;
print $a{'b'}{'c'};

if (exists $a{'c'}) {
  delete $a{'c'}{'d'};
}
print Dumper(\%a);