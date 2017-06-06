#!/bin/sh
EVIL_COMMAND_AND_CONTROL_SERVER="lbarman.ch" # this is actually just my webpage

while true
do
    echo "Initiating connection to server $EVIL_COMMAND_AND_CONTROL_SERVER ..."
    ciphers=$(nmap --script ssl-enum-ciphers -p 443 $EVIL_COMMAND_AND_CONTROL_SERVER)
    hasTLS1_2=$(echo "$ciphers" | grep TLSv1.2 | wc -l)

    if [ "$hasTLS1_2" -eq "1" ]; then
        echo "Connected with TLS 1.2."
        echo "Exchanging secret stuff..."
        echo "Done.                         (your downgrade attack failed)"
    else
        echo "TLS 1.2 has been disabled. Connecting with TLS 1.1..."
        echo "Success !                     (your downgrade attack worked!)"
        echo "Exiting."
        exit 0
    fi
    sleep 10
done
