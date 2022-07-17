use 5.18.0;
use warnings;

my $s = "This is a line of text";
($s =~ /(text)/) ? say "Match is: $1" : say "False";

# . ->wildcard
($s =~ /(t.xt)/) ? say "Match is: $1" : say "False";

($s =~ /(text.)/) ? say "Match is: $1" : say "False"; #end

# + -> matches one or more instances of particular character
my $s = "This is a line of ttttext";
($s =~ /(t+)/) ? say "Match is: $1" : say "False";

my $s = "This is a line of text";
($s =~ /line (.*)/) ? say "Match is: $1" : say "False";

# (l.*e) matches starting 'l' and ending 'e' => line of te
($s =~ /(l.*e)/) ? say "Match is: $1" : say "False";

# (l.*?e) 
# matches starting 'l' and ending first occurence of 'e' => line
($s =~ /(l.*?e)/) ? say "Match is: $1" : say "False";


my $s = "This is a line of text";
# (lin?e) => matches 0 or 1 occurence of n
# Here ? makes the character optional
($s =~ /(lin?e)/) ? say "Match is: $1" : say "False";
say "\n";



# Matching classes of characters
my $s = "This is a line of text";
# s -> matches whitespaces(spaces, tabs, formfeeds) in a string
# S -> matches anything that is not whitespace
($s =~ /(\s)/) ? say "Match is: $1" : say "False";
($s =~ /(\S)/) ? say "Match is: $1" : say "False";
say "\n";


say foreach $s =~ /(\S+)/g;
print "\n";

foreach $_ (my @a = $s =~ /(\S)/g){
    print "$_ ";
}
say "\n";


# d - digits
# D - not digits
my $s = "This is a 12345 lines of text";

foreach $_ (my @a = $s =~ /(\d+)/g){
    print "$_";
}
print "\n";

foreach $_ (my @a = $s =~ /(\D+)/g){
    print "$_";
}
say "\n";

# w - words
# W - not words
my $s = "This is a 12345 lines of text";

foreach $_ ($s =~ /(\w+)/g){
    print "$_ ";
}
print "\n";

foreach $_ ($s =~ /(\W+)/g){
    print "$_";
}
say "\n";

if(my @a = $s =~ /([0-9]+)/g){
    say "Match is: ";
    say foreach @a;
}
else{
    say "False;"
}
print "\n";

if(my @a = $s =~ /([a-z]+)/g){
    say "Match is: ";
    say foreach @a;
}
else{
    say "False;"
}
print "\n";

if(my @a = $s =~ /([a-zA-Z]+)/g){
    say "Match is: ";
    say foreach @a;
}
else{
    say "False;"
}
print "\n";


if(my @a = $s =~ /([^0-9]+)/g){
    say "Match is: ";
    say foreach @a;
}
else{
    say "False;"
}say "\n";



#matching metacharacters
my $s = "This is (a line) of text";

if($s =~ /(\(.*\))/){
    say "Match is: $1";
}
else{
    say "False";
}