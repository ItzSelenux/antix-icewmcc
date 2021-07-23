#!/usr/bin/perl

#---------- Variables ----------#

$home=`echo \$HOME`;
chomp($home);
$filepath="$home/\.icewm/preferences";

$entryregex="$ARGV[0].*";
$newentry="$ARGV[0]=$ARGV[1]";

#---------- Begin Script ----------#

$lines=`cat $filepath`;

# re-add entry by removing the comment
$lines =~ s{# ($entryregex)}{$1};

# replace entry with new one
$lines =~ s{$entryregex}{$newentry};

open (SCRIPT, ">$filepath");

print SCRIPT $lines;
close (SCRIPT);
