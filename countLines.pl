use 5.18.0;
use warnings;

my $filename = "Perl/hello.pl";
open(FH, $filename);
my @lines = <FH>;
close(FH);
my $count = @lines;
say "$count lines in $filename";