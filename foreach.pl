use 5.18.0;
use warnings;

my @array = qw(one two three four five);

foreach my $s (@array){
    say $s;
}
say "\n";

say foreach @array;
say "\n";

foreach my $s (@array){
    $s.='-foo';
}
say foreach @array;