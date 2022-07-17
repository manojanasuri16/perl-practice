use 5.18.0;
use warnings;

my @array = qw(one two three four five);
my $x = 'three';

while(@array){
    my $y = shift @array;
    next if $x eq $y;
    say $y;
}
say "\n";



my @array = qw(one two three four five);
my $x = 'three';
while(@array){
    my $y = shift @array;
    last if $x eq $y;
    say $y;
}
say "\n";



my @array = qw(one two three four five);
my $count = 0;
while($array[$count]){
    say "$count: $array[$count]";
}
continue{
    ++$count;
}
say "\n";



my @array = qw(one two three four five);
for( my $count = 0; $array[$count]; ++$count){
    say "$count: $array[$count]";
}