#! /bin/bash

# Check "sudo cat /var/log/cloud-init-output.log" for output
su -c "echo 'sudo tail -f /var/log/cloud-init-output.log' >> /home/ec2-user/get-init-log.sh" ec2-user
su -c "chmod +x /home/ec2-user/get-init-log.sh" ec2-user
yum update -y
yes | yum install docker git
service docker start
usermod -a -G docker ec2-user

# Checkout this repo
cd /home/ec2-user
git clone https://github.com/JoshuaSchlichting/SteamServer.git
cd SteamServer

# Temporarily hard coded :)
./harshdoorstop/run.sh "Self Hosted Harsh Doorstop Server"