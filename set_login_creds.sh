#!/bin/bash

# Set server login credentials
server=<server_name_or_IP>
username=<username>
password=<password>

# Login to server using ssh
sshpass -p "$password" ssh "$username@$server" << EOF
cd /path/to/file/system
EOF

#Note: The sshpass tool is used here to automate the password prompt during the ssh login. It needs to be installed on the system where the script is executed.

