#!/bin/sh
ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
echo 1 Hello from $ip4
nc 172.18.0.2 90
# echo 2 Hello from $ip4
