#!/bin/bash

#MILAN LABUS SD2B
#storing path and name of this directory
folder="$(pwd)"


#function for writting to the file
write_file()
{
	echo "enter the file name"
	read filename
	if [ -f $filename.txt ];then   #if the file specified exists
		clear ; loop=y
		while [ "$loop" = y ] ;		
		do		
			echo "enter what you wish to write or enter stop to exit"
			read input
			if [ $input != stop ];then   #if the input isn't equal to stop
			
				echo $input >> $filename.txt	#append it to the file
			else			
				loop=n
			fi
		done
	#else the file doesn't exist
	else
		touch $filename.txt  #create the file
		clear ; loop=y
		while [ "$loop" = y ] ;
		do		
			echo "enter what you wish to write or enter stop to exit"
			read input
			if [ $input != stop ];then
			
				echo $input >> $filename.txt
			else			
				loop=n
			fi
		done
		
	fi 
	
		
		
}
#FUNCTION TO OUTPUT FILE CONTENT
output_content()
{
	echo "enter the file name"
	read filename
	if [[ -f $filename.txt && -s $filename.txt ]];then  #if the file exists and isn't empty
		cat $filename.txt
	else
		echo "this file doesn't exist or is empty"
	fi
}
#FUNCTION TO CHANGE FILE PERMISSION
change_file()
{
	echo "enter the file name"
	read filename
	if [[ -f $filename.txt && -r $filename.txt ]];then  #if the file exists and has read permissions
		echo "This file already has permissions"
	elif [ -f $filename.txt ]; then  #if the file exists
		chmod u+x $filename.txt
	else
		echo "this file doesn't exist"
	fi
}

#switch that leads to the functions depending on which option is selected
clear ; loop=y
while [ "$loop" = y ] ;
do
  echo "Menu";  echo "===="
  echo "W: Write to file"
  echo "O: Output file content."
  echo "C: Change file permission"
  echo "Q: quit."
  echo
  read choice 		
  case $choice in
	W | w) write_file ;;
	O | o) output_content ;;
	C | c) change_file ;;
	Q | q) loop=n ;;
	*) echo "Illegal choice." ;;
  esac
  echo
done 
