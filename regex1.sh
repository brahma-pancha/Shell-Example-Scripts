#Here is a simple shell script that will search for a specific keyword in each file in the current directory and print the name of the file along with the matching lines:

#!/bin/bash

keyword=$1

for file in *; do
  if [ -f "$file" ]; then
    if grep -q "$keyword" "$file"; then
      echo "$file"
      grep "$keyword" "$file"
    fi
  fi
done

#You can run the script by providing the keyword as an argument, like this:
./script.sh keyword

#This script uses a for loop to iterate over all files in the current directory (*). For each file, it first checks if it's a regular file (-f "$file") to avoid directories, symlinks, etc. If it is a regular file, it uses grep to check if the keyword is present (grep -q "$keyword" "$file") and if it is, it prints the file name and the matching lines (grep "$keyword" "$file"). The -q option for grep makes it quiet and only returns an exit status indicating whether the keyword was found or not.
