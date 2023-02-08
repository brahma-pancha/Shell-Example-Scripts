#Here is a shell script that lists out multiple files with a specific keyword in each file

#!/bin/bash

echo "Enter the directory path:"
read dir_path

echo "Enter the keyword to search:"
read keyword

# Get the list of all files in the specified directory
files=$(find $dir_path -type f)

# Loop through the list of files and find the ones that contain the specified keyword
echo "Files containing the keyword '$keyword':"
for file in $files
do
  # Check if the file contains the specified keyword
  if grep -q $keyword $file; then
    echo $file
  fi
done

#This script prompts the user to enter the directory path and the keyword to search for. The find command is used to get the list of all files in the specified directory. The script then loops through the list of files and uses the grep command to check if each file contains the specified keyword. If a file contains the keyword, its name is printed
