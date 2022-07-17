=begin
This is all part of multiline comment.
You can use as many lines as you like
These comments will be ignored by the 
compiler until the next =cut is encountered.
=cut

$a = 10;
$var = <<"EOF";
value of a = $a
EOF
print "$var\n";

$var = <<'EOF';
value of a = $a
EOF
print "$var\n";

$result = "This is \"number\"";
print "$result\n";
print "\$result\n";

#Single Quotes doesn't allow string interpolation

$str = 'Hii,\n I am manoj';
print "$str\n";

$str = "Hii,\n I am manoj";
print "$str\n\n";

=begin
Basic Data types:
Scalars ($)
Arrays (@)
Hashes (%)
=cut

#Scalars
$age = 20;
$name = "Manoj Anasuri";
$eyesight = 2.5;
print "Age = $age\nName = $name\nEye Sight = $eyesight\n\n";

#Arrays
@names = ("manoj" ,"Kadiyam", "India","Nokia");
@types = ("name", "home", "country", "Work");
print "$types[0] = $names[0]\n";
print "$types[1] = $names[1]\n";
print "$types[2] = $names[2]\n";
print "$types[3] = $names[3]\n\n";

#Hashes
%data = ('Manoj',20,'Manu','20');
print "$data{'Manoj'}\n";
print "\$data{'Manu'} = $data{'Manu'}\n\n";

#Variable Context
@names = ("Manoj", "Kadiyam", "Nokia");
@copy = @names;
$size = @names;
print "Names Array = \[@copy\]\nSize = $size\n\n";

#List , Arrays in perl are heterogenous
@lst=("Manu",20,-2.5,"Nokia");
print "List = \[@lst\]\n\n";

#String formatting 
$name = "Manoj";
$ID = 190030072;
$str="Hii, I am $name, My ID:$ID";
print "$str\n\n";

#Scalar Operations
$str = "hello" . "India";
$add = 2 + 1;
$sub = 2 - 1;
$mul = 3 * 2;
$div = 6 / 2;
$mod = 4 % 2;
print "$str\n";
print "Add: $add\nSub: $sub\nMul: $mul\nDiv: $div\nMod: $mod\n\n";

#multiline strings
    # 1
$str='This is gonna be hard!
But It was all worth';
print "$str\n\n";

    # 2 "here" document syntax
print <<EOF;
This is gonna be hard!
But It was all worth
EOF
print "\n";

#Special Literals
print "File: ". __FILE__ . "\n";
print "Line No: ". __LINE__ . "\n";
print "Package: ". __PACKAGE__ . "\n\n";

# Perl - Arrays
#Creation
# 1
@arr1 = (62372205,"Manoj","Nokia");
print "@arr1[0]\n";
# 2
@arr2 = qw/62372205 Manoj Nokia/;
print "@arr2[1]\n\n";
# 3
@arr3 = qw/Monday
Tuesday
Wednesday
Thursday/;
print "@arr3\n\n"; 

#Accessing
@arr = (190030072, "Manoj Anasuri", 62372205, "Nokia");
print "$arr[0]\t@arr[0]\n\n";

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
print "@days\n";
print "$days[6]  $days[-1]\n\n";

#Sequential number Arrays
@nums1_10 = (1..10);
@nums14_38 = (14..20);
@abc = (a..z);
@ABC = (A..Z);
print "@nums1_10\n";
print "@nums14_38\n";
print "@abc\n";
print "@ABC\n\n";

@array = (1,2,3);
$size = @array;
print "$size\n";
print scalar @array,"\n\n";

@continents = ("Asia", "Africa");
push(@continents,"South America");
print "@continents\n";
push(@continents,"North America","Antarctica");
print "@continents\n\n";

pop(@continents);
print "@continents\n\n";

unshift(@continents,"Europe");
print "@continents\n\n";

shift(@continents);
print "@continents\n\n";

#slicing
@days=qw/Mon Tue Wed Thu Fri Sat Sun/;
@weekends=@days[5,6];
print "@weekends";

