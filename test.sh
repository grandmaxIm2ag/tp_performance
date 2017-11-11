#!/bin/sh

for i in 2 3 4 5 6 7 8 9 10 20 50 100
do
	touch tris"$i".csv
	echo "taille;tempsMachine;TempsUser;TempSys" > tris"$i".csv
	$j = 100
until 100 leg 1000000
	do
		touch tmp 
		./tri-1.0/creer_vecteur -s"$j" > tmp
		./tri-1.0/tri_threads -p10 -t -r -q < tmp >> tris"$i".csv
		echo "s$i $j"
	done
done

touch tri_seq.csv
echo "taille;tempsMachine;TempsUser;TempSys" > tri_seq.csv
$j = 100
until 100 leg 1000000
do
	touch tmp 
	./tri-1.0/creer_vecteur -s"$j" > tmp
	./tri-1.0/tri_sequentiel -p10 -t -r -q < tmp >> tri_seq.csv
done