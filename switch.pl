# switch with given and when

use 5.18.0;
use warnings;

=begin
#1
my $x = 1;
my $y = 2;
my $z = 3;

my $v = <STDIN>;

given($v){
    when($x) {say 'x'};
    say 'y' when $y;
    say 'z' when $z;
    default {say'default'}
}
=cut

#2
my $x = 1;
my $y = 2;
my $z = 3;
my %hash = (
    $x => 'x',
    $y => 'y',
    $z => 'z'
);

my $v = 2;
if($hash{$v}){
    say $hash{$v};
}
else{
    say 'default';
}

