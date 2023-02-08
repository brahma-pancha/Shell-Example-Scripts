#Here is a simple shell script that uses the find command to search for files and directories by name and size

#!/bin/bash

search_dir="/path/to/search_directory"
search_pattern="*.txt"
file_size="+100M"

# Search for files by name and size
find $search_dir -name $search_pattern -size $file_size -print

# Search for files by name using regular expressions
search_pattern="^[a-z].*\.txt$"
find $search_dir -regex $search_pattern -print

# Search for files by size only
find $search_dir -size $file_size -print


#The search_dir variable holds the path to the directory in which you want to search for files and directories. The search_pattern variable holds the name pattern to search for. The -name option is used to search for files and directories with names that match the specified pattern. The -regex option is used to search for files and directories with names that match the specified regular expression pattern. The file_size variable holds the size criterion used to search for files. The -size option is used to search for files and directories based on size. The + symbol before the size value means to search for files larger than the specified size. The -print option is used to print the names of the files and directories that are found.

#This script will search for all files with the .txt extension larger than 100 MB in the search_dir directory and its subdirectories and print the names of the files that are found. It will also search for files with names starting with a lowercase letter and ending in .txt, and print the names of the files that match the regular expression pattern.
