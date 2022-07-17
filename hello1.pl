use 5.18.0;
use warnings;

my $s = " Hello World! ";
$s = $s . "This is a string";
my $s2 = qq(This is a string. "${s}" This is another string.);
say "$s2";

say (1,2,3);
say foreach qw(one two three);
say qw(one two three)[1];

my @array = (1,2,3);
say foreach @array;

push @array, qw(4 5 6 7);
print "@array\n";

my $a = shift @array;
say $a;
say @array;

my $b = pop @array;
say $b;
say @array;

unshift @array,20;
say @array;