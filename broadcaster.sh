#!/bin/sh
#
# Broadcasts a UDP message to the network.
#

i=0
while :
do
    echo -e "Count:${i}\tBroadcasting meow meow from ${NAME_HOST_SELF}" | socat - UDP4-DATAGRAM:255.255.255.255:$PORT_UDP_BROADCAST,so-broadcast

    let i++

    sleep $TIME_INTERVAL_SEND
done
