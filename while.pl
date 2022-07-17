use 5.18.0;
use warnings;

my @array = qw(one two three four five);
while(@array){
    say shift @array;
}
say @array;

my @array2 = qw(1 2 3 4 5);
say shift @array2 until scalar @array2 == 0;
