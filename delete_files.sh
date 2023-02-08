#Here is an example shell script that demonstrates how to delete old files with specific criteria, such as age and file type


#!/bin/bash

# Set the directory to be cleaned
directory="/tmp"

# Set the maximum age of files to be deleted (in days)
max_age=7

# Set the file type(s) to be deleted
file_types="*.log"

# Calculate the date of the oldest files to be deleted
delete_date=$(date --date="-$max_age days" +%Y-%m-%d)

# Loop through the directory and delete old files of the specified type
for file in $directory/$file_types; do
  # Check the modification time of the file
  file_date=$(date -r $file +%Y-%m-%d)

  # Delete the file if it is older than the specified age
  if [ "$file_date" \< "$delete_date" ]; then
    rm $file
    echo "Deleted file: $file"
  fi
done

#In this script, the directory variable is set to the path of the directory to be cleaned, the max_age variable is set to the maximum age of the files to be deleted in days, and the file_types variable is set to a list of file types to be deleted. The delete_date variable is calculated as the date max_age days ago. The for loop is used to iterate over all files of the specified type in the directory. The date command is used to check the modification time of each file, and the if statement is used to delete the file if it is older than the specified age. The rm command is used to delete the file, and the echo command is used to display a message indicating that the file was deleted
