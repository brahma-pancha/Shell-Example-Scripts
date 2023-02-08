#Here is a simple shell script that demonstrates creating multiple files and folders in different locations

#!/bin/bash

# Create a directory
mkdir /path/to/directory1

# Change to the newly created directory
cd /path/to/directory1

# Create a file
touch file1.txt

# Change back to the previous directory
cd ..

# Create another directory
mkdir /path/to/directory2

# Change to the newly created directory
cd /path/to/directory2

# Create a file
touch file2.txt

# Change back to the previous directory
cd ..

# List the contents of the parent directory
ls


#This script creates a directory (mkdir /path/to/directory1), changes to the newly created directory (cd /path/to/directory1), creates a file (touch file1.txt), changes back to the previous directory (cd ..), creates another directory (mkdir /path/to/directory2), changes to the newly created directory (cd /path/to/directory2), creates a file (touch file2.txt), changes back to the previous directory (cd ..), and lists the contents of the parent directory (ls).
