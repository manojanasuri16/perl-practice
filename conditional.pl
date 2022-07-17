use 5.18.0;
use warnings;

my $x = 2;
my $y = 1;

if($x == 1){
    say 'true';
}
elsif($x==2){
    say "near";
}
else{
    say 'false';
}

say 'true' if $x == 1;

# my $a = <STDIN>;
# say $a;



# Negative Conditionals with unless
$x = 1;
$y = 1;

unless($x == 1){
    say 'unless';
}
else{
    say 'else';
}

say "these are same" unless $x != $y;

#Ternary Operator
say "\nTernary Operator";

my $x = 1;
my $y = 2;
say $x > $y ? "x" : "y";

say $x == $y? "Equal" : ( $x > $y ? "x" : "y");

say "\n";

my $x = 1;
my $y = 2;
my $s1 = "manoj";
my $s2 = "anasuri";
($x == $y) ? say 'true': say 'false';
($s1 eq $s2) ? say 'true': say 'false';

my $fn = "manoj";
my $ln = "anasuri";
#ne - not equals
#eq - equals
#lt - less than (do alphabetical check)
#gt - greater than
#le - less than or equals to
#ge - greater than or equals to
($fn ne $ln)? say "true": say "false";
