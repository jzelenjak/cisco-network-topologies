#!/bin/sh

# Configurable network parameters
DEVICE=eth0
IP_ADDRESS=172.17.10.101
NETMASK=255.255.255.0
BROADCAST=172.17.10.255
DEFAULT_GATEWAY=172.17.10.1

ifconfig $DEVICE $IP_ADDRESS netmask $NETMASK broadcast $BROADCAST up
route add default gw $DEFAULT_GATEWAY $DEVICE
