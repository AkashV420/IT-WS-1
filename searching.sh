#!/bin/bash
  if [[ $( wget $2 -O- ) ]] 2>/dev/null ;then
    g=$( wget -qO- $2 | sed -e 's/<[^>]*>//g' | grep -i -o $1 | wc -l )  
    echo $1 $g
   else
    echo "404 ERROR PAGE NOT FOUND"      
  echo $g
fi
