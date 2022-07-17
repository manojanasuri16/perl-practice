use 5.18.0;
use warnings;

my $s = "This is a line of text";

my @a = split(/\s/,$s);  #s -> whitespace
say foreach @a;
print "\n";

my $n = "192.0.5.127";
say foreach split(/\./,$n); # . -> delimiter
print "\n";

my $s = "value : another : yet another : one more here";
say foreach split(/:\s*/,$s);
print "\n";

my $s = "value , another : yet another , one more here";
say foreach split(/[:,]\s*/,$s);
print "\n";