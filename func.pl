use 5.18.0;
use warnings;

func();
func("Manoj");
sub func{
    my $name = shift || "Lucy";
    say "This is $name";
}say "\n";


my @array = qw(one two three);
fun('Manu', 'Lucy', @array);
sub fun{
    say foreach @_;
}say "\n";


my $x = 1;
say "Outside function, x = $x";
f1();
sub f1{
    my $x = 2;
    say "Inside function, x = $x";
}