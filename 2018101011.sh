#!/bin/bash
 file=$1
 mkdir $2/{Bad,Good,Average,Awesome}

while read -r line; 
  do
      name=$line
      movies_rating=$( echo $name|cut -d ":" -f2 )
      movie_name=$( echo $name|cut -d ":" -f1)
      
     x1=$( echo "$movies_rating < 5" |bc )
     x2=$( echo "$movies_rating < 8" |bc )
     x3=$( echo "$movies_rating < 9" |bc )
    
     if [ $x1 = 1 ]; 
       then
          mv $2/$movie_name $2/Bad
     elif [ $x2 = 1 ];
       then
          mv $2/$movie_name $2/Average
     elif [ $x3 = 1 ]; 
       then
          mv $2/$movie_name $2/Good
     else
          mv $2/$movie_name $2/Awesome
     fi

done < $file
