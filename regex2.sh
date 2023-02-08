#Here are some examples of shell scripts using regular expressions (regex):

#1. Matching a pattern in a string:

#!/bin/bash

string="Hello, World!"

if [[ "$string" =~ "Hello" ]]; then
  echo "Match found."
else
  echo "Match not found."
fi

#2. Extracting a sub-string from a string:

#!/bin/bash

string="Hello, World!"

if [[ "$string" =~ ([A-Z][a-z]+), ]]; then
  name="${BASH_REMATCH[1]}"
  echo "Name: $name"
else
  echo "Name not found."
fi

#3. Replacing text in a string:

#!/bin/bash

string="Hello, World!"

new_string="${string//World/Friend}"

echo "Original string: $string"
echo "New string: $new_string"

#In these examples, the =~ operator is used to match a regular expression pattern against a string. The [[ "$string" =~ "Hello" ]] syntax is used to test whether the string "$string" contains the pattern "Hello". The ([A-Z][a-z]+), pattern is used to extract the first word in the string that starts with a capital letter and is followed by lowercase letters. The "${BASH_REMATCH[1]}" syntax is used to retrieve the first matched sub-string (i.e., the first capturing group). The "${string//World/Friend}" syntax is used to replace all occurrences of the string "World" with the string "Friend".
