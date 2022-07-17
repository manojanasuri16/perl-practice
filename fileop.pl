# File Operations
# http://perldoc.perl.org/functions/-X.html

use 5.18.0;
use warnings;

my $filename = 'Perl/conditional.pl';

=begin
file test operators:
-e -> tests if a file exists
-r -> tests to see if file is readable
-w -> tests to see if file is writable
-z -> tests to see if file is zero length
-s -> tests to see if file is non-zero length
-f -> tests to see if file is a plain file
      plain file ->simple file, 
                 not directories or special files like pipes
-d -> checks for a directory  
=cut

if(-e $filename){
    say 'file test returned true';
}
elsif($!){
    say $!;
}
else{
    say 'file test retuned false';
}