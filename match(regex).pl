# http://perldoc.perl.org/perlre.html

use 5.18.0;
use warnings;

=begin
Regular Expressions

my $s = "This is a line of text.";
say foreach $s = ~ /[^\s]+/ig;
say foreach split(/\s+/, $s);


Regex Operators
m/PATTERN/modifiers 
m{PATTERN}modifiers
#if m is included, we can use different delimitter
/PATTERN/modifiers

s|PATTERN|REPLACEMENT|modifiers

$var = qr/PATTERN/modifiers; 

$var =~ m/PATTERN/modifiers;
$var =~ s/PATTERN/REPLACEMENT/modifiers;
$var !~ m/PATTERn/modifiers;
@array = $var =~ m/PATTERN/modifiers;

Regex Wildcards
/w.sh/  -> matches wish,wash but not bash
/wa*sh/ -> wash, waaash, wsh
/bo+k/  -> book, bok but not bk, bak 

Regex Anchors
/^w/ - w at beg of string
/w$/ - w at end of string

Regex Modifiers 
(used to change behaviour of regular expressions)
i -> tells to ignore the case, matches lower, upper or mixed case
/word/i -> matches word, WORD, wOrD
=cut



my $s = "This is a line of text";

# '=~' -> match operator
say $s =~/line/ ? 'true' : 'false';

# qr -> precompiled regular expression
my $re = qr/line/;
say $re =~ $re ? 'true' : 'false';

# i -> ignore case
my $s = "This is a LINE of text";
say $s =~ /line/i ? 'true': 'false';
say "\n";

#g -> global
my $s = "This is a line of text";
say foreach $s =~ /i/g; #finds occurences of i in string s
say "\n";

#s -> treats as a single line
my $s = "This is a line of text\nmore text\nmore text";
say ($s =~ /t.m/s) ? 'True' : 'False';
say "\n";

# x at end of regex allows to have descriptive whitespaces 
# making it more readable.

if( $s =~ /
    ^m
    .*
    text
    $
    /mx){
        say 'True';
}
else{
    say 'False';
}
say "\n";

#Extracting Matches
my $s = "This is a line of text";

if($s =~ /(line)/){
    say "match is: $1";
}
else{
    say "No match";
}
say "\n";

if($s =~ /(..is)/){
    say "match #1 is: $1";
}
else{
    say "No match";
}
say "\n";

if($s =~ /(..is).*(..ne).(..)/){
    say "match #1 is: $1";
    say "match #2 is: $2";
    say "match #3 is: $3";
}
else{
    say "No match.";
}
say "\n";

# Getting a list of matches
my $s = "This is a line of text";
# my @array = $s =~ /i(.)/g;
# say foreach @array;
say foreach $s =~ /i(.)/g;
say "\n";

#Simple matches
my $s = "This is a line of text";

if($s =~ /line/) {say "True";}
else {say "False";}

if($s =~ /i/) {say "True"}
else {say "False"};

if($s =~ /^T/) {say "True"}  #Beginning T, so True
else {say "False"};

if($s =~ /t$/) {say "True"} #Ending t, so true
else {say "False"};


my $s = "This is aaa line of text";
if($s =~ /a{3}/){ say "True"}  # aaa -> a{3}
else{ say "False"};

my $s = "This is aaaa line of text";
if($s =~ /a{2,5}/){ say "True"}  # string should have 2 to 5 a's
else{ say "False"};



my $s = "This is aaaaaa line of text";
if($s =~ /(a{3,})/){ say "match is: $1"}
else{ say "False"};

if($s =~ /(a{3,5})/){ say "match is: $1"}
else{ say "False"};

