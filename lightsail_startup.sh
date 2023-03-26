#! /bin/bash

GAME_NAME="GAMENAME"
GAME_SERVER_NAME="GAMESERVERNAME"
RCON_PASSWORD="RCONPASSWORD"

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

# if gamename is harshdoorstop then cd into harshdoorstop
if [ "$GAME_NAME" = "harshdoorstop" ]; then
    cd harshdoorstop/
    echo starting with game server name: "$GAME_SERVER_NAME"
    # Temporarily hard coded :)
    ./run.sh "$GAME_SERVER_NAME" "$RCON_PASSWORD"
fi

# if gamename is counterstrike then cd into counterstrike
if [ "$GAME_NAME" = "counterstrike" ]; then
    cd counterstrike/
    echo starting with game server name: "$GAME_SERVER_NAME"
    # Temporarily hard coded :)
    ./run.sh "$GAME_SERVER_NAME" "$RCON_PASSWORD"
fi