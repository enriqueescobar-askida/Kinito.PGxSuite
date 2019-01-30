#!/usr/bin/perl

$table="";
$inside_table=1;
$delete=0;

require './map.pl';

while(<>) {
	chomp;

	if( $_=~/^INSERT INTO (\S+)/ ) {
		$table=$1;
		$inside_table=1;
		
		# Renommer les tables
		foreach my $t (keys %table_rename) {
			next unless($table=~/$t/); 
			if($table_rename{$t} eq '') {
				$delete=1;
			} else {
				$table=$table_rename{$t};
				$_=~s/^(INSERT INTO )$t/$1$table_rename{$t}/;
			}
			last;
		}
	} 

	if ($inside_table) {
		if($delete==1) {
			$_="-- ".$_;
		} 

		# correction escape ' 	
		if($_=~/^(\s*')(.*)('\s*(,| \);)\s*)$/) {
			$a=$1; $b=$2 ; $c=$3;
			$b=~s/(?<!\\)'/\\'/g;
			$_=$a.$b.$c;
		}

		# \n -> ' '
		$_=~s/\\n/ /g;

		if($_=~/\);\s*$/) {	
			$inside_table=0;
			$delete=0;
		} 
	}


	print $_."\n";
}


