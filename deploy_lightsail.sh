#! /bin/bash

INSTANCE_NAME=$1


aws lightsail create-instances \
    --instance-name $INSTANCE_NAME \
    --availability-zone us-east-1a \
    --blueprint-id amazon_linux_2 \
    --bundle-id micro_2_0 \
    --user-data file://lightsail_startup.sh \

while true; do
  INSTANCE_STATUS=$(aws lightsail get-instance-state --instance-name $INSTANCE_NAME --query state.name --output text)
  if [[ $INSTANCE_STATUS == "running" ]]; then
    echo "Instance $INSTANCE_NAME is now running"
    break
  else
    echo "Instance $INSTANCE_NAME is still $INSTANCE_STATUS"
    sleep 10
  fi
done

# Harsh Doorstop
aws lightsail open-instance-public-ports --instance-name $INSTANCE_NAME \
    --port-info fromPort=7777,toPort=7777,protocol=udp \

aws lightsail open-instance-public-ports --instance-name $INSTANCE_NAME \
    --port-info fromPort=7779,toPort=7779,protocol=tcp \

aws lightsail open-instance-public-ports --instance-name $INSTANCE_NAME \
    --port-info fromPort=27005,toPort=27005,protocol=udp

# Counter-Strike
aws lightsail open-instance-public-ports --instance-name $INSTANCE_NAME \
    --port-info fromPort=27015,toPort=27015,protocol=all