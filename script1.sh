#!/bin/bash
printf "date   time  path\n"
find -ls > file1
awk '{print $6,$7,$8,$9}' file1
apropos -v "lo" | grep "^lo" > a.txt 
cat a.txt > 2018101011.txt         
wc -l 2018101011.txt | cut -f 1 -d" "
wc -L 2018101011.txt | cut -f 1 -d" "
cp 2018101011.txt back_up.bak
 sed -i 's/function/method/g' 2018101011.txt 
