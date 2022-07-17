use 5.18.0;
use warnings;

$| = 1; #auto flush variable, 
        #stops buffering problems 
            #output may come in wrong order
            #webpage headers may not go out before content
            #output may be incomplete if a scrit ends due to an error

main();

sub main{
    print "what is your favourite number? ";
    my $num = <STDIN>;
    my $mine = better_number($num);
    print "\nReally? My favourite number is $mine, which is a much better number.\n";
}

sub better_number{
    my $num = shift || 6;
    $num = 6 unless $num = ~/^[0-9]+$/;
    return $num + int(rand(10))+1; 
}