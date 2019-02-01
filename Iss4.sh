#!/bin/bash                                      		     
if [ "$1" = "create" ]; then                                          #
  temp=$( cat document.csv | wc -l )                                  #
  temp2=j                                                             #
  id=$temp2$temp                                                      #
  echo "Id Assigned to reminder is $id"                               #
  echo $id $2 $3 >> document.csv                                      #
  echo "notify-send "$3"" | at $2 2>/dev/null                         #
#######################################################################
elif [ "$1" = "list" ]                                                #
then                                                                  #
    if (( $# == 1 )); then                                            #
    	sort document.csv                                             #
    else                		                              #
    	grep "$2" document.csv  				      #
    fi								      #		
#######################################################################
elif [ "$1" = "edit" ]               				      #
then                                                                  #
         temp=$2                                                      #  
           grep -v $temp document.csv > output.csv                    #
           mv output.csv document.csv                                 #                                                        
           temp2=$(echo $temp | cut -d "j" -f2)                       #
           atrm $temp2                                                #  
      temp=$( cat document.csv | wc -l )                              #
      temp2=j                                                         #
      id=$temp2$temp                                                  #
      echo "Id Assigned to reminder is $id"                           #
      echo $id $3 $4 >> document.csv                                  #
      echo "notify-send "$4"" | at $3 2>/dev/null                     #
                                                                      #
#######################################################################
elif [ "$1" = "delete" ]                                              #
then                                                                  #                         
       temp=$2                                                        #
       grep -v $temp document.csv > output.csv                        #
       #  sed -i '/$temp/d' document.csv > output.csv                 #
	mv output.csv document.csv                                    #
	temp2=$(echo $temp | cut -d "j" -f2)                          #
       atrm $temp2                                                    #
fi                                        			      #
#######################################################################

