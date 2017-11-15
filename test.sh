#!/bin/sh

for i in 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
do
	touch tris"$i".csv
	echo "taille;tempsMachine;TempsUser" > tris"$i".csv
	j=1000
	until [ "$j" -gt 1000000 ]
	do
	    for k in `seq 1 30`;
	    do
		touch tmp 
	        ./tri-1.0/creer_vecteur -s$j > tmp
	        ./tri-1.0/tri_threads -p$i -t -r -q < tmp >> tris"$i".csv
	    done
	    j=$(( $j+100000 ))
	done
	echo "$i threads fait"
done


touch tri_seq.csv
echo "taille;tempsMachine;TempsUser" > tri_seq.csv
j=1000
until [ "$j" -gt 1000000 ]
do
    for k in `seq 1 30`;
    do
	touch tmp 
	./tri-1.0/creer_vecteur -s$j > tmp
	./tri-1.0/tri_sequentiel -t -r -q < tmp >> tri_seq
    done
    j=$(( $j+100000 ))
done
echo "sequentiel fait"
