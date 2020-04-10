#!/usr/bin/perl
print"Enter filename of ligands list:\t";
$ligfile=<STDIN>;
chomp $ligfile;
open (FH,$ligfile)||die "Cannot open file\n";
@arr_file=<FH>;

for($i=0;$i<@arr_file;$i++)
{
print"@arr_file[$i]\n";
@name=split(/\./,@arr_file[$i]);
}
for($i=0;$i<@arr_file;$i++)
{
	chomp @arr_file[$i];
	print"@arr_file[$i]\n";
	system("vina.exe --config conf_vs.txt --ligand @arr_file[$i] --log @arr_file[$i]_log.log");
}
