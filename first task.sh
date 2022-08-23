#!/bin/bash

#Storing the parameters in variables
	path="$1"
	pattern="$2"
	
#looping through all of the files in the path
	for FILE in $path/*.txt; do
	
	arrfiles=()  #array to hold file names
	grep -l $pattern $FILE;		#SEARCING FOR THE PATTERN IN THE FILE
		if grep -l -c -q $pattern "$FILE";then			
			date -r "$FILE" +"%Y-%m-%d %H:%M:%S"		#DATE OF FILE CREATION
			echo "SIZE: "
			wc -c "$FILE"
			echo "no of times the pattern is found:"					#FILE SIZE
			grep -o -i $pattern "$FILE" | wc -l  		#HOW MANY TIMES THAT PATTERN APPEARED 		
			
		fi


	done
	for FILE in $path/*.txt; do

		if [ $(grep -o -i $pattern "$FILE" | wc -l) -gt 1 ];then	#if the pattern appeared more than once
			arrfiles+=(${arrfiles[@]} "$FILE")	#ADD IT TO THE ARRAY
			echo "contains more than 1 ${arrfiles[@]}"  #PRINTING THE ARRAY
		fi
	done
