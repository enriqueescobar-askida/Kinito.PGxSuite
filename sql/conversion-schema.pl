#!/usr/bin/perl

$table="";
$inside_table=1;
$delete=0;

require './map.pl';

while(<>) {

	$_=~s/[\r\n]{0,2}$//;

	if( $_=~/^CREATE TABLE (.+)$/ ) {
		$table=$1;
		$inside_table=1;
		
		# Renommer les tables
		foreach my $t (keys %table_rename) {
			next unless($table=~/^$t$/i); 
			if($table_rename{$t} eq '') {
				$delete=1;
				$_="-- ".$_;
			} else {
				$table=$table_rename{$t};
				$_=~s/^(CREATE TABLE )$t/$1$table_rename{$t}/;
			}
			last;
		}
	} elsif ($inside_table) {
		if($delete==1) {
			$_="-- ".$_;
		} else {
			# correction exceptionnelle
			$_=~s/^(\s+id_lot_amorces\s+)int8/$1serial/ if($table eq "Liste_lots_amorces");   
			$_=~s/^(\s+id_donnees_PCR\s+)int8/$1serial/ if($table eq "Donnees_uniques_PCR_par_plaques");   
			$_=~s/^(\s+id_puits\s+)int8/$1serial/ if($table eq "PCR_par_plaques");   
			$_=~s/^(\s+id_methode_conception\s+)int8/$1serial/ if($table eq "Liste_methodes_conception_amorces");   

			$_=~s/^(\s+)PRIMARY KEY \(id_gc, id_projet_liste\)/$1PRIMARY KEY (id)/ if($table eq "Projets");   

			# Correction des types 
			$_=~s/^(\s+\S+\s+)varchar\s*\([0-9]+\)/$1text/;
			$_=~s/^(\s+\S+\s+)DATETIME DEFAULT =+Now\(\)/$1timestamp default now()/;
			$_=~s/^(\s+\S+\s+)DATETIME/$1timestamp/;


			# Correction de UNIQUE INDEX
			$_=~s/^(\s+UNIQUE)\s+INDEX(\s+\(.+\))/$1$2/;

			# Renommer les champs
			foreach my $f (keys %field_rename) {
				$f=~/([^.]+)\.(.+)$/  or die "Bad key in %field_rename :$f";
				$t=$1; $nf=$2;
				if($table =~ /^$t$/i) {
					# Renomme la definition du champs: '\ $nf\ '
					# Renomme la definition d'une clef: '($nf)'
					$_=~s/([ (])$nf([ )])/\1$field_rename{$f}\2/i;
				}			
			}
		}
		if($_=~/\);/) {	
			$inside_table=0;
			$delete=0;
		} 
	}


	print $_."\n";
}


