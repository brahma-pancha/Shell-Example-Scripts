#Here are some examples of shell scripts that use wildcards

#1. A script to list all files in a directory with a certain extension

#!/bin/bash

# Define the directory path and file extension
dir_path="/path/to/dir"
file_extension="*.txt"

# List all files in the directory with the specified extension
ls "$dir_path"/"$file_extension"

#In this script, the dir_path and file_extension variables hold the path to the directory and the file extension to search for, respectively. The script uses the ls command to list all files in the directory with the specified extension. The wildcard * matches zero or more characters, so the *.txt pattern will match all files with the .txt extension in the directory.

#2. A script to remove all files in a directory older than a specified number of days

#!/bin/bash

# Define the directory path and the number of days
dir_path="/path/to/dir"
days=30

# Remove all files in the directory older than the specified number of days
find "$dir_path" -type f -mtime +"$days" -delete

#In this script, the dir_path variable holds the path to the directory, and the days variable holds the number of days to use as a threshold. The script uses the find command to remove all files (-type f) in the directory that are older than the specified number of days (-mtime +"$days"). The + symbol in -mtime +"$days" means "more than", so the find command will match files that were last modified more than $days days ago.

#3. A script to rename all files in a directory with a certain extension:

#!/bin/bash

# Define the directory path, file extension, and new file extension
dir_path="/path/to/dir"
old_extension="*.txt"
new_extension=".doc"

# Rename all files in the directory with the specified extension
for file in "$dir_path"/"$old_extension"; do
  mv "$file" "${file%.txt}$new_extension"
done

#In this script, the dir_path, old_extension, and new_extension variables hold the path to the directory, the old file extension, and the new file extension, respectively. The script uses a for loop to iterate over all files in the directory with the specified old extension. The mv command is used to rename each file, and the ${file%.txt} syntax is used to remove the .txt extension from each file name. The new extension is then appended to each file name to complete the rename.
