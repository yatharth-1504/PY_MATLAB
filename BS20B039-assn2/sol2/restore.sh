#!/bin/bash
while IFS=" " read -r c1 c2 c3 c4 c5 c6 c7 c8 c9
do
        MODTMPFILE="$(echo $c9 | cut -c 3-)" 
	gunzip /mnt/c/wsl/BS20B039-assn2/sol2/$MODTMPFILE
done < small.txt
