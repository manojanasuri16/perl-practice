use 5.18.0;
use warnings;

my $alpha = 'alpha';
my $beta = 'beta';
my $charlie = 'charlie';
func();
sub func{
    my $beta = 'func-beta';
    foreach my $x($alpha, $beta, $charlie){
        say $x;
    }
}

my $x = 1;
if($x){
    my $y = 2;
}
say $y;