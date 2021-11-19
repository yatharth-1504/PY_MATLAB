#!/bin/bash
#this is a script which renames the incorrectly named files correctly.
for n in $(ls); do

if [ "$(file $n|grep gif)" ]; then

echo "Renaming ${n} to ${n%.*}.jpg"
mv ${n} ${n%.*}.jpg

elif [ "$(file $n|grep bmp)" ]; then

echo "Renaming ${n} to ${n%.*}.jpg"
mv ${n} ${n%.*}.jpg

elif [ "$(file $n|grep PNG)" ]; then

echo "Renaming ${n} to ${n%.*}.png"
mv ${n} ${n%.*}.png

elif ["$(file $n| grep JPG)"]; then

echo "Renaming ${n} to {n%.*}.jpg"
mv ${n} ${n%.*}.jpg

elif [ "$(file $n|grep GIF)" ]; then

echo "Renaming ${n} to ${n%.*}.jpg"
mv ${n} ${n%.*}.jpg

elif [ "$(file $n|grep BMP)" ]; then

echo "Renaming ${n} to ${n%.*}.jpg"
mv ${n} ${n%.*}.jpg

else

echo "No Change For ${n}"

fi
done
