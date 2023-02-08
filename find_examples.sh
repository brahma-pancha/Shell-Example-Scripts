#Here is a simple shell script that uses the find command to find files and directories


#!/bin/bash

search_dir="/path/to/search_directory"
search_pattern="*.txt"

find $search_dir -name $search_pattern -print

#The search_dir variable holds the path to the directory in which you want to search for files and directories. The search_pattern variable holds the pattern to search for. The -name option is used to search for files and directories with names that match the specified pattern. The -print option is used to print the names of the files and directories that are found.

#This script will search for all files with the .txt extension in the search_dir directory and its subdirectories, and print the names of the files that are found.
