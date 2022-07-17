use 5.18.0;
use warnings;

my %hash = (
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten"
);

$hash{0} = "NULL";

delete $hash{10};

while(my($k,$v) = each %hash){
    say "$k -> $v";
}
print "\n";

#sorting hash
foreach my $k(sort(keys %hash)){
    my $v = $hash{$k};
    say "$k -> $v";
}