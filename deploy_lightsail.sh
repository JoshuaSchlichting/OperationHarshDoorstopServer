#! /bin/bash

SERVER_NAME={$1 | "HarshDoorstopServer"}


aws lightsail create-instances \
    --instance-name $SERVER_NAME \
    --availability-zone us-eat-1 \
    --blueprint-id amazon_linux_2 \
    --bundle-id nano_2_0 \
    --user-data file://lightsail_startup.sh