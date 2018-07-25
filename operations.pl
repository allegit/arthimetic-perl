#!/usr/bin/perl -w

my $var1 = 2;
my $var2 = 3;
my $result = add($var1,$var2);
print "Result of adding $var1 and $var2 is $result\n";

sub add
{
	my ($v1,$v2) = @_;
	
	my $result_add = $v1 + $v2;
	return $result_add;
}