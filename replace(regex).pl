use 5.18.0;
use warnings;

# replaces line with string
my $s = "This is a line of text";
$s =~ s/line/string/;
say $s;


$s = "This is a line of text";
$s =~ s/[se]/x/; #replaces first occurence of s with x
say $s;

$s = "This is a line of text";
$s =~ s/[se]/x/g; #replaces all occurences of s with x
say $s;

$s = "This is a line of text";
$s =~ s/(l\w+)/$1 $1 $1 $1/;
say $s;

$s = "This is a line of text";
$s =~ s/(l\w+)\s+(\w+)/$1 $1 $2 $2 $2 $1 $1/;
say $s;

$s = "This is a line of text";
$s =~ s/^(\w+)\s+(\w+)\s+(\w+)\s+(\w+)/$4 $3 $2 $1/;
say $s;


my $n = 1234567890;
while ( $n =~ s/^(-?\d+)(\d{2})/$1,$2/ ){}
say $n;
# 1,23,45,67,890
# ?