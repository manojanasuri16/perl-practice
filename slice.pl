use 5.18.0;
use warnings;

my @array = qw(zero one two three four five six seven eight nine);
print foreach "@array\n";
print "$array[0]\n";
print foreach "@array[1,2,3]\n";
print foreach "@array[0..4]\n";
print foreach "@array[1,3,5,7]\n";
