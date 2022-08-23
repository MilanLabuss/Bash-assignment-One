# Bash-assignment-One
This is a repository for the first assignment of my Systems Scirpting module which will include 3 tasks.

-Task One
Write a bash script that searches for patterns in files located in a folder. The script should be 
called with two input parameter arguments. Make sure that the arguments are provided before 
proceeding. The first parameter should be a path to a folder and the second parameter should 
be a string pattern.      

-Task Two
 Write an interactive bash script that implements a set of menus for creating and writing contents 
into  a  file,  outputting  to  the  terminal  the  content  of  a  file,  change  file  permission  and  to 
terminate  the  script.  The  write,  output  and  permission  change  operations  should  be 
implemented using functions.  
When the user selects the write option, the script should demand for a file name, create it if it 
does not exist, and continuously demand for inputs and write them to the file until the user 
enters the word “stop” then the script should finish writing and return back to the menu options.                 
 
When the output option is selected, the script should demand for the name of the file to be 
printed and output its content. The script should ensure that the file exist and not empty before 
outputting all of its content to the screen. Then return back to the menu options. 
 
When the permission option is selected, the script should demand for a name of the file, check 
if the file exist and assign execution permission to the file if not already assigned. In case 
execution permission is already assigned, simply report it. The terminate option should end the 
script with a goodbye message. Properly comment your code. 

-Task Three

Write a bash script that automates the creation and deletion of user accounts. The script should 
accept as input argument, a file containing a list of user names to be created on the system. 
Enforce that the user provides this input file when running the script.  
 
The  script  should  check  if  the  usernames  already  exist  on  the  system  before  creating  the 
accounts. If a user account exit, the script should notify the user and skip that user name to the 
next one. Make sure to create a home directory as well. When the input list has been exhausted 
and all the user account created, output the content of “/etc/passwd” file and “/home” directory 
to the terminal for verification.  
 
In a next step, the script should ask if user wants to delete the newly created accounts? If yes, 
the script should delete the accounts including their home directories and output again the 
content of “/etc/passwd” file and “/home” directory for verification. If no, the script should 
terminate with appropriate message.  
 
Use functions to implement the account creation and deletion operations. The functions should 
in each case accept one parameter. This script should only be tested/executed with root user 
privileges. Ensure its enforcement.  Properly comment your code. 
