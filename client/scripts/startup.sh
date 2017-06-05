#!/bin/sh
while true
do
    echo "Initiating connection to server $URL"
    ciphers=$(nmap --script ssl-enum-ciphers -p 443 $URL)
    hasTLS1_2=$(echo "$ciphers" | grep TLSv1.2 | wc -l)

    if [ "$hasTLS1_2" -eq "1" ]; then
        echo "TLS 1.2 enabled"
    else
        echo "Success ! TLS 1.2 has been disabled"
    fi
    sleep 10
done
