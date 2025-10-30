#!/bin/bash

# Attacker IP is the first argument passed to the script
ATTACKER_IP=$1

# Check if the IP is empty
if [ -z "$ATTACKER_IP" ]; then
    echo "Error: Attacker IP address not provided."
    exit 1
fi

echo "!! WARNING: Dynamically blocking IP: $ATTACKER_IP for 300 seconds."

# 1. Block the attacker's IP address immediately (DROP all traffic from them)
sudo iptables -I INPUT 1 -s "$ATTACKER_IP" -j DROP

# 2. Schedule the removal of the block after 5 minutes (300 seconds)
# NOTE: The 'at' utility must be installed and running (sudo apt install at)
echo "sudo iptables -D INPUT -s $ATTACKER_IP -j DROP" | at now + 5 minutes
