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
}say "\n";

say calc(2,4);
sub calc{
    my $a = shift;
    my $b = shift;
    return $a*=$b;
}



#static variables (state)
func();
func();
func();
sub func{
    my $n = 10;
    say ++$n;
}say "\n";


fun1();
fun1();
fun1();
sub fun1{
    state $n1 = 10;  #retains its state b/w function calls
    say ++$n1;
}say "\n";


#Predeclared functions
use subs qw(func);
func 'foo', 'bar', 'baz';
sub func{
    say foreach @_;
}say "\n";