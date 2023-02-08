#Here's a basic shell script to check the disk space usage and clear some space if needed

#!/bin/bash

# Define the threshold for disk usage (in percentage)
threshold=75

# Get the current disk usage
usage=$(df / | awk 'END{print $5}' | sed 's/%//')

# Check if the disk usage is above the threshold
if [[ "$usage" -gt "$threshold" ]]; then
  echo "Disk usage is above the threshold ($threshold%), cleaning up..."

  # Find and remove old logs
  find /var/log -name "*.log" -mtime +30 -delete

  # Remove old backups
  find /backups -name "*.tar.gz" -mtime +7 -delete

  # Remove old packages
  sudo apt-get autoremove -y

  echo "Clean up completed!"
else
  echo "Disk usage is below the threshold ($threshold%)."
fi

#n this script, the threshold variable holds the disk usage threshold in percentage. The script uses the df command to get the current disk usage, and the awk and sed commands to extract the usage value from the output of df. The if statement then checks if the disk usage is above the threshold. If the usage is above the threshold, the script removes old logs, old backups, and old packages using the find and apt-get commands. The script outputs a message indicating whether the disk usage was above the threshold and a clean up was performed, or if the disk usage was below the threshold and no clean up was needed.
