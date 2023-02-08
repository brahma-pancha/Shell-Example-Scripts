#Here is an example shell script that demonstrates how to check the connectivity of a remote server

#!/bin/bash

# Set the target server and port
server="google.com"
port=80

# Use the telnet command to check the connectivity
result=$(echo "" | telnet $server $port 2>&1)

# Check the result and display a message accordingly
if [[ $result == *"Connected"* ]]; then
  echo "The server is up and running."
else
  echo "The server is not reachable."
fi

#In this script, the server variable is set to the target server, and the port variable is set to the target port. The telnet command is used to check the connectivity, and the echo command is used to provide an empty input to the telnet command. The output of the telnet command is stored in the result variable. The if statement is used to check the content of the result variable, and display a message indicating whether the server is up and running or not reachable
