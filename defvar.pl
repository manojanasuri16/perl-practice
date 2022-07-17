use 5.18.0;
use warnings;

my @array = qw(one two three four five);
say foreach @array;

=begin
foreach my $v (@array){
    say $v;
}
=cut

=begin
foreach $_ (@array){
    say $_;
}
=cut

foreach (@array){
    say;
}

