use 5.18.0;
use warnings;

#normal hash initialization
my %hash = (
    one => 'uno',
    two => 'dos',
    three => 'tres',
    four => 'quatro',
    five => 'cinco'
);
my $ref1 = \%hash;
foreach my $k (sort keys %{$ref1}){
    say "$k: ${$ref1}{$k}";
}say "\n";

#anonymous hash initialization using "{}"
my $ref = {
    one => 'uno',
    two => 'dos',
    three => 'tres',
    four => 'quatro',
    five => 'cinco'
};
foreach my $k (sort keys %{$ref}){
    say "$k: ${$ref}{$k}";
}say "\n";

#derefernce
${$ref}{one} = 1;
$ref->{two} = 2;

foreach my $k (sort keys %{$ref}){
    say "$k: $ref->{$k}";
}say "\n";



