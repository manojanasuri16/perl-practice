use 5.18.0;
use warnings;
use IO::File;

main(@ARGV);

sub main{
    my $filename = shift || "Perl/countLines2.pl"; 
        #if input not passed it'll take countLines2.txt
    my $count = countLines($filename);
    say "There are $count lines in $filename";
}

sub countLines{
    my $filename = shift;
    error("countlines: missing filename") unless $filename;
    my $fh = IO::File -> new($filename, "r") or
        error("Cannot open $filename ($!)\n");
    
    my $count = 0;
    $count++ while($fh-> getline);
    $fh -> close;
    return $count;
}

sub error{
    my $e = shift || 'unknown error';
    say "$0: $e";
    exit 0;
}

main("Perl/hello.pl");