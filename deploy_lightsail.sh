#! /bin/bash

SERVER_NAME=${1:-"HarshDoorstopServer"}


aws lightsail create-instances \
    --instance-name $SERVER_NAME \
    --availability-zone us-east-1a \
    --blueprint-id amazon_linux_2 \
    --bundle-id nano_2_0 \
    --user-data file://lightsail_startup.sh
aws lightsail open-instance-public-ports --instance-name $SERVER_NAME \
    --port-info fromPort=7777,toPort=7777,protocol=udp \
    --port-info fromPort=7779,toPort=7779,protocol=tcp \
    --port-info fromPort=27005,toPort=27005,protocol=udp
