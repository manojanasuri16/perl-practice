# http://perldoc.perl.org/perlvar.html 

use 5.18.0;
use warnings;

#Environment variables
foreach my $k (sort keys %ENV){
    say "$k = $ENV{$k}";
}
say "\n";

#Full path of current perl script
say $0;

#Operating System name
say $^O;

#Perl Version
say $^V;