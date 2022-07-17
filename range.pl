use 5.18.0;
use warnings;

foreach my $i (1..10){
    print "$i ";
}
print "\n";



my $ls = 'a';
my $le = 'z';

my $us = 'A';
my $ue = 'Z';

foreach my $s ($ls .. $le){
    print "$s ";
}
print "\n";

foreach my $s ($us .. $ue){
    print "$s ";
}
print "\n";



foreach my $h (0 .. 9, 'a' .. 'f'){
    print "$h ";
}
print "\n";



my $startdate = '01';
my $enddate = '31';

my @array = ($startdate .. $enddate); 
say foreach @array;