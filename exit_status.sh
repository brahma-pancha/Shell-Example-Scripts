#Here is an example shell script that demonstrates how to use the exit status to check the success or failure of commands


#!/bin/bash

# Example 1: Check the exit status of a command
ls /non_existent_dir
if [ $? -ne 0 ]; then
  echo "The command failed with exit status $?"
else
  echo "The command succeeded with exit status $?"
fi

# Example 2: Use exit status in a loop
for i in {1..3}; do
  echo "Iteration $i"
  false
  if [ $? -ne 0 ]; then
    echo "The loop failed with exit status $?"
    exit 1
  fi
done
echo "The loop succeeded with exit status $?"

# Example 3: Use exit status to return a value
function my_function {
  echo "Running my_function"
  return 0
}
my_function
if [ $? -ne 0 ]; then
  echo "my_function failed with exit status $?"
else
  echo "my_function succeeded with exit status $?"
fi


#In this script, the exit status of a command is stored in the $? variable. The if statement is used to check the value of the exit status and execute different commands depending on whether the exit status is 0 (success) or non-zero (failure). The exit command is used to exit the script with a specified exit status. The exit status of a function is returned using the return command
