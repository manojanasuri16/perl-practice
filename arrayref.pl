use 5.18.0;
use warnings;

=begin
my $ref1 = ( 1, 2, 3 ); #In this context, () references to list
say foreach @{$ref1};
=cut

my @array = qw( one two three four five );
my $ref = \@array;
say foreach @{$ref};
print "\n";

$ref = [ qw(1 2 3 4 5) ]; 
say foreach @{$ref};
print "\n";

# ${$ref}[0] = "one";
$ref -> [0] = "one";
say foreach @{$ref};