#Here's an example of a shell script that can be used to harden a Linux machine:

#!/bin/bash

# Update the system
apt-get update
apt-get upgrade

# Install firewalld and configure it
apt-get install firewalld
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --permanent --add-service=ssh
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload

# Install and configure fail2ban
apt-get install fail2ban
systemctl start fail2ban
systemctl enable fail2ban
cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sed -i 's/bantime  = 600/bantime  = 3600/' /etc/fail2ban/jail.local
systemctl restart fail2ban

# Disable root login and password authentication
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
systemctl restart ssh

# Enable automatic security updates
apt-get install unattended-upgrades
dpkg-reconfigure --priority=low unattended-upgrades

# Disable core dumps
echo "* hard core 0" >> /etc/security/limits.conf
ulimit -c 0

# Enable the auditd service
apt-get install auditd
systemctl start auditd
systemctl enable auditd

# Configure the auditd rules
echo "-w /etc/group -p wa -k identity" >> /etc/audit/rules.d/audit.rules
echo "-w /etc/passwd -p wa -k identity" >> /etc/audit/rules.d/audit.rules
echo "-w /etc/shadow -p wa -k identity" >> /etc/audit/rules.d/audit.rules
echo "-w /etc/sudoers -p wa -k identity" >> /etc/audit/rules.d/audit.rules
systemctl restart auditd

#In this script, the system is updated using apt-get update and apt-get upgrade. The firewalld service is installed and configured to allow only SSH, HTTP, and HTTPS traffic. The fail2ban service is installed and configured to ban IP addresses that make too many failed login attempts. The root login and password authentication are disabled for SSH. Automatic security updates are enabled using the unattended-upgrades package. Core dumps are disabled by setting the core dump limit to 0. The auditd service is installed, enabled, and configured to monitor changes to important system files such as the /etc/group, /etc/passwd, /etc/shadow, and /etc/sudoers files.
