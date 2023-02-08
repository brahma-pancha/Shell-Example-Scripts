#A script to remove an entire line containing a keyword

#!/bin/bash

# Define the input file and the keyword
input_file="/path/to/input_file.txt"
keyword="keyword"

# Remove the line containing the keyword from the input file
sed "/$keyword/d" "$input_file" > "${input_file}.tmp" && mv "${input_file}.tmp" "$input_file"

#In this script, the input_file variable holds the path to the input file, and the keyword variable holds the keyword. The script uses the sed command to remove the line containing the keyword from the input file. The "/$keyword/d" expression is used to specify that the line containing the keyword should be deleted. The output of the sed command is redirected to a temporary file using the > operator, and the mv command is used to replace the original input file with the modified temporary file


#A script to replace a word in a file

#!/bin/bash

# Define the input file, the word to be replaced, and the replacement word
input_file="/path/to/input_file.txt"
old_word="old_word"
new_word="new_word"

# Replace the old word with the new word in the input file
sed "s/$old_word/$new_word/g" "$input_file" > "${input_file}.tmp" && mv "${input_file}.tmp" "$input_file"

#In this script, the input_file, old_word, and new_word variables hold the path to the input file, the word to be replaced, and the replacement word, respectively. The script uses the sed command to replace the old word with the new word in the input file. The "s/$old_word/$new_word/g" expression is used to specify the search and replace operation. The g flag is used to perform the operation globally, i.e., to replace all occurrences of the old word in each line of the file. The output of the sed command is redirected to a temporary file using the > operator, and the mv command is used to replace the original input file with the modified temporary file.



#A script to delete the last line in a file

#!/bin/bash

# Define the input file
input_file="/path/to/input_file.txt"

# Delete the last line in the input file
sed '$d' "$input_file" > "${input_file}.tmp" && mv "${input_file}.tmp" "$input_file"

#n this script, the input_file variable holds the path to the input file. The script uses the sed command to delete the last line in the input file. The '$d' expression is used to specify that the last line of the file should be deleted. The output of the sed command is redirected to a temporary file using the > operator, and the mv command is used to replace the original input file with the modified temporary file.


#Here's an example of a shell script that uses the sed command to delete empty lines from a file:
#!/bin/bash

# Define the input file
input_file="/path/to/input_file.txt"

# Delete empty lines from the input file
sed '/^$/d' "$input_file" > "${input_file}.tmp" && mv "${input_file}.tmp" "$input_file"

#In this script, the input_file variable holds the path to the input file. The script uses the sed command to delete empty lines from the input file. The /^$/d expression is used to specify that lines that match the regular expression ^$ (i.e., lines that consist of nothing but the line terminator character) should be deleted. The output of the sed command is redirected to a temporary file using the > operator, and the mv command is used to replace the original input file with the modified temporary file
