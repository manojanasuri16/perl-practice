use 5.18.0;
use warnings;

funcl('one','two','three');

=begin
sub funcl{
    say 'this is funcl';
    say foreach @_;
}
=cut

=begin
sub funcl{
    my ($a, $b, $c) = @_;
    say "$a $b $c";
}
=cut

sub funcl{
    my $a = shift;
    my $b = shift;
    my $c = shift;
    say "$a $b $c";
}