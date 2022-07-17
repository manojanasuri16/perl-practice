use 5.18.0;
use warnings;

#String Concatenation Operator (.)
my $s1 = "This";
my $s2 = "India";
my $s3 = $s1 . ' is ' . $s2;
say $s3;


#Quote Operator 
#(q follwed by some symbol at beg and end of string)
say "Hello World";
say q*Hello World*;
say q&Hello "World"&;

#qq -> follows string interpolation
say qq(Hello \n World);
say "\n";
#qw -> quote words operator, creates a list
my @array = qw(this is a list of words);
say foreach @array;