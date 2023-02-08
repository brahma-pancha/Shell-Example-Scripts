#Here is a simple shell script that demonstrates deleting files and folders from different locations, as well as using globbing to find specific files and delete them

#!/bin/bash

# Delete a specific file
rm /path/to/file1.txt

# Delete a directory and its contents
rm -rf /path/to/directory1

# Change to another directory
cd /path/to/directory2

# Delete all files with a specific extension
rm *.txt

# Change back to the previous directory
cd ..

# Delete a directory and its contents using globbing to find specific files
rm -rf /path/to/directory2/subdirectory{1..3}


#This script deletes a specific file (rm /path/to/file1.txt), deletes a directory and its contents (rm -rf /path/to/directory1), changes to another directory (cd /path/to/directory2), deletes all files with a specific extension (rm *.txt), changes back to the previous directory (cd ..), and deletes a directory and its contents using globbing to find specific files (rm -rf /path/to/directory2/subdirectory{1..3}). The -rf options to rm are used to remove a directory and its contents, including subdirectories and files. The globbing pattern /path/to/directory2/subdirectory{1..3} matches directories named /path/to/directory2/subdirectory1, /path/to/directory2/subdirectory2, and /path/to/directory2/subdirectory3.
