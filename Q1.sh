#!/bin/bash
touch Songs_list.csvi
echo "add | edit | viewAll | exit"
while true;
do
	echo "Enter the command"
	read -r input
	if [[ "$input" == "add" ]];then
 		echo "Enter the song name :-"
   		read -r add1
	   #	echo $add1 >> Songs_list.csv
 		echo "Enter the artist name :-"
   		read -r add2
	   	#echo $add2 >> Songs_list.csv
 		echo "Enter thr Genre :-"
   		read -r add3
	   	echo "$add1" , "$add2" , "$add3" >> Songs_list.csv
	elif [[ "$input" == "edit" ]]
 	then
 		echo "Enter the file name & artist name & Genre to edit :-"
                read -r edit1 edit2 edit3
      		#edit1=$delete1                  
 	     #	edit2=$delete2
	    #	edit3=$delete3
	 	sed -i '/'$edit1'/d' Songs_list.csv
                sed -i '/'$edit2'/d' Songs_list.csv
                sed -i '/'$edit3'/d' Songs_list.csv
 		echo "Enter a new song name:-"
                read -r addedit1
	 	echo $addedit1 >> Songs_list.csv
 		echo " enter a new artist name:-"
                read -r addedit2
	 	echo $addedit2 >> Songs_list.csv
	 	echo "enter a new genre name"
                read -r addedit3
	 	echo $addedit3 >> Songs_list.csv
 
	elif [[ "$input" == "viewAll" ]] 
	then
	  	cat Songs_list.csv | column -t -s,
	elif [[ "$input" == "exit" ]]
  	then
   		break
	fi
done

