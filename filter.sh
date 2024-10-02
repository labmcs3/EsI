#!/bin/bash

echo " " > fileInput.dat
for pl in $*
do
#   aggiungere GM    
    grep -A3 SOE ephemerides/$pl.txt | tail -2 >> fileInput.dat
    echo " " >> fileInput.dat
done
