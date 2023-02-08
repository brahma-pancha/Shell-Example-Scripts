#Here is an example shell script that demonstrates how to use scp to copy files from a remote server to the local system

#!/bin/bash

# Set the remote server and file path
remote_server="user@remote.example.com"
remote_file="/path/to/file.txt"

# Set the local file path
local_file="~/Downloads/file.txt"

# Use the scp command to copy the file from the remote server to the local system
scp $remote_server:$remote_file $local_file

# Check the exit status of the scp command
if [ $? -eq 0 ]; then
  echo "The file was successfully copied."
else
  echo "The file was not copied. Check the logs for more information."
fi

#In this script, the remote_server variable is set to the remote server, and the remote_file variable is set to the path of the file to copy. The local_file variable is set to the local file path. The scp command is used to copy the file from the remote server to the local system. The if statement is used to check the exit status of the scp command, and display a message indicating whether the file was successfully copied or not
