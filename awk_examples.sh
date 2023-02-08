#Here are some examples of shell scripts that use the awk utility to perform various operations on a file

#1. A script to count the number of lines in a file:

#!/bin/bash

# Define the input file
input_file="/path/to/input_file.txt"

# Count the number of lines in the input file
line_count=$(awk 'END {print NR}' "$input_file")

# Print the result
echo "The number of lines in the input file is: $line_count"

#In this script, the input_file variable holds the path to the input file. The script uses the awk utility to count the number of lines in the input file. The 'END {print NR}' expression is used to specify that the value of the NR (number of records) variable should be printed after all records have been processed. The $( ... ) syntax is used to capture the output of the awk command, which is assigned to the line_count variable. Finally, the result is printed to the console.

#2. A script to sum the values in the second column of a file:

#!/bin/bash

# Define the input file
input_file="/path/to/input_file.txt"

# Sum the values in the second column of the input file
sum=$(awk '{sum+=$2} END {print sum}' "$input_file")

# Print the result
echo "The sum of the values in the second column is: $sum"

#In this script, the input_file variable holds the path to the input file. The script uses the awk utility to sum the values in the second column of the input file. The '{sum+=$2} END {print sum}' expression is used to accumulate the values in the second column of each record into the sum variable, and to print the final sum after all records have been processed. The $( ... ) syntax is used to capture the output of the awk command, which is assigned to the sum variable. Finally, the result is printed to the console.

#3. A script to extract the unique values in the first column of a file:

#!/bin/bash

# Define the input file
input_file="/path/to/input_file.txt"

# Extract the unique values in the first column of the input file
unique_values=$(awk '!seen[$1]++' "$input_file" | awk '{print $1}')

# Print the result
echo "The unique values in the first column are: $unique_values"

#In this script, the input_file variable holds the path to the input file. The script uses the awk utility to extract the unique values in the first column of the input file. The first awk command '!seen[$1]++' is used to keep track of the unique values in the first column, using an associative array seen[]. The second awk command '{print $1}' is used to print the unique values. The | operator is used to pipe the output of the first awk command to the second awk command. The $( ... ) syntax is used to capture the
