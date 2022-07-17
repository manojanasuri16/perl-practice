use 5.18.0;
use warnings;

# my $filename = 'Perl\buffering.pl';
my $filename = 'notfound.txt';

if(-e $filename){
    say 'found';
}
else{
    #'$!' - contains value of global error number
    my $errorstring = $!;
    my $errornumber = $! + 0; #Adding 0 forces string value into numeric context
    say "error $errornumber: $errorstring";
}