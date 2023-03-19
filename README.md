# OperationHarshDoorstopServer
A dockerized server for "Operation: Harsh Doorstop"

This is a work in progress and has been tested on AWS Lightsail, as of this commit the server is in a working state.

# Official Server Docs
https://docs.google.com/document/d/1JFxwBBBJoiBqQ9bgAFAGCLd_lpu8FXD6XxaKcMiZgg8/edit

# Quick Setup on Lightsail
1. Create a new instance
2. Select the "OS Only" option
3. Select Amazon Linux 2
4. Install Docker and Git using the following command
```
sudo yum update -y && sudo yum install docker git -y
```
5. Start the docker service
```
sudo service docker start
```
6. Clone this repository
```
git clone https://github.com/JoshuaSchlichting/OperationHarshDoorstopServer.git
```
7. Change directory into the repository
```
cd OperationHarshDoorstopServer
```
8. Build the docker image
Execute `run.sh`
