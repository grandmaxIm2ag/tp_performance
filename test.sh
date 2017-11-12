#!/bin/sh

for i in 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
do
	touch tris"$i".csv
	echo "taille;tempsMachine;TempsUser;TempSys" > tris"$i".csv
	j=1
	until [ "$j" -gt 1000000 ]
	do
		touch tmp 
		./tri-1.0/creer_vecteur -s$j > tmp
		./tri-1.0/tri_threads -p$i -t -r -q < tmp >> tris"$i".csv
		
		if [ "$j" -le 100000 ]
		then
		    j=$(( $j+1000 ))
		else
		    j=$(( $j+10000 ))
		fi
	done
	echo "$i threads fait"
done

touch tri_seq.csv
echo "taille;tempsMachine;TempsUser;TempSys" > tri_seq.csv
j=1
until [ "$j" -gt 1000000 ]
do
	touch tmp 
	./tri-1.0/creer_vecteur -s$j > tmp
	./tri-1.0/tri_threads -p10 -t -r -q < tmp >> tris_seq.csv
	if [ "$j" -le 100000 ]
	then
	    j=$(( $j+1000 ))
	else
	    j=$(( $j+10000 ))
	fi
done
