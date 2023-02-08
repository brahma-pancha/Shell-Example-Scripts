#Here is a shell script that lists the users who were logged into a Linux server by date

#!/bin/bash

echo "Enter the date (YYYY-MM-DD):"
read date

# Get the list of all logged in users
logged_in_users=$(last | awk '{print $1}' | sort | uniq)

# Loop through the list of users and find the ones who were logged in on the specified date
echo "Users who were logged in on $date:"
for user in $logged_in_users
do
  last_login=$(last $user | grep -w $date | awk '{print $NF}')
  if [ -n "$last_login" ]; then
    echo $user
  fi
done

#This script prompts the user to enter a date and then uses the last command to get the list of all logged in users. The awk command is used to extract the username from the output of the last command, and the sort and uniq commands are used to remove duplicates. The script then loops through the list of users and uses the last command and the grep command to find the ones who were logged in on the specified date. If a user was logged in on the specified date, their username is printed
