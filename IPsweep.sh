#!/bin/bash

if [ "$1" == "" ]

then
    echo "Please follow syntax: ./IPsweep.sh {first 3 octets of IP range}"

else
    for ip in `seq 1 254`; do
    ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" > availableIPs.txt
done

fi
