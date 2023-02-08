#Here is an example shell script that demonstrates how to use the case statement to make decisions based on multiple possibilities


#!/bin/bash

# Example 1: Choose a color
echo "Enter a color (red, green, or blue):"
read color
case $color in
  red)
    echo "You chose red";;
  green)
    echo "You chose green";;
  blue)
    echo "You chose blue";;
  *)
    echo "Invalid color";;
esac

# Example 2: Choose a number
echo "Enter a number (1, 2, or 3):"
read number
case $number in
  1)
    echo "You chose 1";;
  2)
    echo "You chose 2";;
  3)
    echo "You chose 3";;
  *)
    echo "Invalid number";;
esac


#In this script, the case statement is used to match the value of a variable with a list of possibilities. The variable is specified after the case keyword, and the list of possibilities is specified after the in keyword. Each possibility is followed by a ), and the commands to be executed if the possibility is matched are specified on the following lines. The ;; symbol is used to separate each possibility. The *) symbol is used to match any value that does not match any of the other possibilities.
