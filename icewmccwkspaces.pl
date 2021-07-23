#!/usr/bin/perl

#---------- Variables ----------#

$home=`echo \$HOME`;
chomp($home);
$filepath="$home/\.icewm/preferences";

$entryregex="WorkspaceNames.*";
$newentry="$ARGV[0]";

#---------- Begin Script ----------#

$lines=`cat $filepath`;

# replace entry with new one
$lines =~ s{$entryregex}{$newentry};

open (SCRIPT, ">$filepath");

print SCRIPT $lines;
close (SCRIPT);
