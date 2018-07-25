#!/usr/bin/perl -w

my $var1;
my $var2;

print 'Enter the first number: ';
$var1 = <>;
chomp($var1);
print 'Enter the second number: ';
$var2 = <>;
chomp($var2);
print 'Enter your operation(+ or - or * or /): ';
my $oper = <>;
chomp($oper);

my $result;
if ($oper eq "+") {
	$result = add($var1,$var2);	
} elsif ($oper eq "-") {
	$result = subtract($var1,$var2);
} elsif ($oper eq "*") {
	$result = multiply($var1,$var2);
} else {
	$result = divide($var1,$var2);
}

print "Result of adding $var1 and $var2 is $result\n";

sub add
{
	my ($v1,$v2) = @_;
	
	my $result_add = $v1 + $v2;
	return $result_add;
}

sub subtract
{
	my ($v1,$v2) = @_;
	my $result_subtract = $v1 - $v2;
	return $result_subtract;
}

sub multiply
{
	my ($v1,$v2) = @_;
	my $result_multiply = $v1 * $v2;
	return $result_multiply;
}

sub divide
{
	my ($v1,$v2) = @_;
	if ($v2 == 0) {
		print "Operation not permitted.... terminating this operation.\n";
		exit;
	}
	my $result_divide = $v1 / $v2;
	return $result_divide;
}