#!/bin/sh

# Configurable network parameters
DEVICE=eth0
IP_ADDRESS=172.17.10.101
PREFIX_LENGTH=24
NETWORK=172.17.0.0/16
DEFAULT_GATEWAY=172.17.10.1

ip address add ${IP_ADDRESS}/${PREFIX_LENGTH} dev $DEVICE
ip link set dev $DEVICE up
ip route add $NETWORK dev $DEVICE
ip route add default via $DEFAULT_GATEWAY
