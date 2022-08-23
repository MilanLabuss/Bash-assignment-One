#!/bin/bash


#function to create account
function create_account() {
	usernames=("$@")			#the array of usernames passed
	for i in "${usernames[@]}"
		do
			if [ $(grep -i $i "/etc/passwd") ];then  #if the user already exists
				echo "this user already exists"
			else			#else it doesn't so we add it
				sudo useradd -m $i  #adding the username and making home directory
				echo "added user $i"
			fi
		done
		
		#printing everything after the for loop is finished
		cat /etc/passwd
		
}






#function to delete account
function delete_account() {
	usernames=("$@")			#the array of usernames passed
	for i in "${usernames[@]}"
		do
			
		        sudo userdel -f $i  #deleting user and their home directory
			sudo rm -r /home/$i #deleting their home directory
		done
		
		#printing everything after the for loop is finished
		cat /etc/passwd
		echo /home
		exit 1
}



#asking for the file to be input

clear ; loop=y
while [ "$loop" = y ] ;

do		
	echo "enter the filename"
	read filename
	if [ ! -f $filename.txt ];then   #if the input isn't equal to stop
		echo "incorrect filename entered"
		
	else			
		
		IFS=$'\r\n'
		usernames=( `cat "$filename.txt" `)
		create_account ""${usernames[@]}""
		
		echo "Do you want to delete the users you just created y/n"
		read ans
		if [[ $ans == "Y" || $ans == "y" ]]; then
        		
		    delete_account ""${usernames[@]}""  #calling the delete account function
		fi



		loop=n
	fi
		done
		
	















