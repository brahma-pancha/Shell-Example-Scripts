#Here's an example of a shell script that combines multiple system utility commands to accomplish a task

#!/bin/bash

# Define the input file
input_file="/path/to/input_file.txt"

# Get the total number of lines, the number of lines containing the word "error",
# and the total size of the file
line_count=$(wc -l "$input_file" | awk '{print $1}')
error_count=$(grep -c "error" "$input_file")
file_size=$(du -h "$input_file" | awk '{print $1}')

# Print the results
echo "The total number of lines in the input file is: $line_count"
echo "The number of lines containing the word 'error' is: $error_count"
echo "The size of the input file is: $file_size"

#In this script, the input_file variable holds the path to the input file. The wc command is used to get the total number of lines in the file, and the awk command is used to extract the first field from the output, which is the line count. The grep command is used to count the number of lines containing the word "error". The du command is used to get the size of the file, and the awk command is used to extract the first field from the output, which is the file size. Finally, the results are printed to the console.
