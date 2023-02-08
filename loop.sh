#Here is an example shell script that demonstrates how to use the for loop to iterate over a range of numbers and a list of items


#!/bin/bash

# Example 1: Print numbers 1 to 10
for i in {1..10}; do
  echo $i
done

# Example 2: Print the items in a list
list="apple banana cherry"
for item in $list; do
  echo $item
done

# Example 3: Print the files in a directory
directory="/bin"
for file in $directory/*; do
  echo $file
done

# Example 4: Print the contents of a file
filename="file.txt"
for line in $(cat $filename); do
  echo $line
done


#In this script, the for loop is used to iterate over a range of numbers, a list of items, the contents of a directory, and the contents of a file. The for keyword is followed by the name of a variable, which is used to store the current value of the iteration. The in keyword is followed by the range of numbers or list of items to be iterated over. The commands to be executed for each iteration are specified on the following lines and are enclosed in a do and done block
