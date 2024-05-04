#!/bin/bash

# Array of IP addresses to ping
IP_ADDRESSES=("192.168.1.1" "192.168.1.2" "192.168.1.3")

# Email address to send notification
EMAIL="your.email@example.com"

# Log file path
LOG_FILE="/opt/script/ping.log"

# Function to send email
send_email() {
    SUBJECT="Ping $1 for $2"
    BODY="Ping to $2 $1."
    echo "$BODY" | mail -s "$SUBJECT" "$EMAIL"
}

# Loop through each IP address
for IP_ADDRESS in "${IP_ADDRESSES[@]}"; do
    # Ping the IP address
    ping -c 4 "$IP_ADDRESS" > /dev/null

    # Check the exit status of ping
    if [ $? -eq 0 ]; then
        echo "Ping successful for $IP_ADDRESS!"
        send_email "successful" "$IP_ADDRESS"
        echo "$(date): Ping successful for $IP_ADDRESS" >> "$LOG_FILE"
    else
        echo "Ping failed for $IP_ADDRESS."
        send_email "failed" "$IP_ADDRESS"
        echo "$(date): Ping failed for $IP_ADDRESS" >> "$LOG_FILE"
    fi
done
