#!/bin/bash

USER=disco
BD=SNPdisco_development
DIR=./db-sources/2006-12-15

C0=$DIR/esql_create.txt
A0=$DIR/esql_add.txt
C1=$DIR/esql_create.utf-8.txt
A1=$DIR/esql_add.utf-8.txt

O1=create.sql
O2=add.sql
O3=adjust_sequences.sql
CONSTRAINTS=constraints.sql

LOG=sql.log

function mypsql { 
	echo "Exec psql --set ON_ERROR_STOP=1 -U $USER -a $BD -f $1 ?" 
#	read q
	psql --set ON_ERROR_STOP=1 -U $USER -a $BD -f $1 
	[[ $? == 0 ]] || exit 1
}

echo "Drop previous SNPdisco..."
dropdb -U $USER $BD
echo "Create new SNPdisco..."
createdb -U $USER $BD

echo "Charset conversion..."
iconv -f ISO-IR-197// -t utf-8 < $C0 > $C1
iconv -f ISO-IR-197// -t utf-8 < $A0 > $A1

echo "Schema conversion and CREATE TABLEs..."
./conversion-schema.pl < $C1 > $O1
mypsql $O1 >> $LOG

echo "Applying create_extension.sql..."
mypsql create_extension.sql >> $LOG

echo "Data conversion and INSERTs..."
./conversion-insert.pl < $A1 > $O2
#mypsql $O2 >> $LOG
mypsql $O2 >> /dev/null

#echo "Creating plpgsql language..."
#echo "CREATE LANGUAGE plpgsql" |sudo -u postgres psql --set ON_ERROR_STOP=1  -a SNPdisco -f -
echo "Applying genes_extension.sql..."
mypsql genes_extension.sql >> $LOG

echo "Data constraints..."
mypsql $CONSTRAINTS >> $LOG

echo "Adjusting sequences..."
mypsql <(echo \\dt) | grep public | awk '{print $3;}' | 
while read i ; do 
	echo "SELECT setval('${i}_id_seq', (select max(id) from $i) + 1);"  
done > $O3
mypsql $O3 >> $LOG

echo "Applying liste_amorces_fix.sql..."
mypsql liste_amorces_fix.sql >> $LOG

echo "Applying user_extension.sql..."
mypsql user_extension.sql >> $LOG

echo "Inserting contig sequences..."
#mypsql update_liste_contigs_dir8_seq.sql >> $LOG
#mypsql update_liste_contigs_SGI_1.0_seq.sql >> $LOG
#mypsql update_liste_contigs_SGI_2.0_seq.sql >> $LOG
mypsql update_liste_contigs_dir8_seq.sql >> /dev/null
mypsql update_liste_contigs_SGI_1.0_seq.sql >> /dev/null
mypsql update_liste_contigs_SGI_2.0_seq.sql >> /dev/null

echo "Applying primers_extension.sql..."
mypsql primers_extension.sql >> $LOG

echo "Done."
