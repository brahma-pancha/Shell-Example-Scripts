#Here is an example shell script that demonstrates how to use if and else statements to make decisions based on conditions


#!/bin/bash

# Example 1: Check if a number is positive
echo "Enter a number:"
read num
if [ $num -gt 0 ]; then
  echo "$num is positive"
else
  echo "$num is not positive"
fi

# Example 2: Check if a file exists
echo "Enter a file name:"
read filename
if [ -e $filename ]; then
  echo "$filename exists"
else
  echo "$filename does not exist"
fi

# Example 3: Check if a string is empty
echo "Enter a string:"
read string
if [ -z "$string" ]; then
  echo "The string is empty"
else
  echo "The string is not empty"
fi

# Example 4: Check if a string contains a substring
echo "Enter a string:"
read string
echo "Enter a substring:"
read substring
if [[ $string == *"$substring"* ]]; then
  echo "The string contains the substring"
else
  echo "The string does not contain the substring"
fi

#In this script, the if statement is used to check whether a condition is true or false. The condition is specified in square brackets, [ ]. For example, [ $num -gt 0 ] checks whether the value of $num is greater than 0. If the condition is true, the commands following the then keyword are executed. If the condition is false, the commands following the else keyword are executed.
