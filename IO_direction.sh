#Here is a simple shell script that demonstrates some basic input and output operations in a shell script


#!/bin/bash

# Read input from the user
echo "Enter your name:"
read name

# Display output
echo "Hello $name!"

# Redirect output to a file
echo "This is a message" > message.txt

# Append output to a file
echo "This is another message" >> message.txt

# Read from a file
echo "Contents of message.txt:"
cat message.txt

# Pipe output from one command to another
ls -l | grep ".txt"


#In this script, read is used to read input from the user and store it in a variable. The echo command is used to display output on the screen. The > symbol is used to redirect output to a file, while the >> symbol is used to append output to a file. The cat command is used to display the contents of a file. The ls -l command is used to list the contents of the current directory and the grep ".txt" command is used to filter the output to show only files with the ".txt" extension. The | symbol is used to pipe the output from one command to another.

#This script demonstrates some basic input and output operations in a shell script.
