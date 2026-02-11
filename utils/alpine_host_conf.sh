#!/bin/sh
# this is a shell script which will be sourced at boot
hostname Alpine
# configurable user account
USERNAME=cisco
PASSWORD=cisco

# configurable network parameters
IP_ADDRESS=172.17.10.101
NETMASK=255.255.255.0
DEFAULT_GATEWAY=172.17.10.1

# Configure a static IP address and a default gateway on eth0
# See https://wiki.alpinelinux.org/wiki/Configure_Networking#Interface_configuration
cat <<EOF > /etc/network/interfaces
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
    address $IP_ADDRESS 
    netmask $NETMASK 
    gateway $DEFAULT_GATEWAY
EOF
rc-service networking restart

# Configure SSH config with matching key exchange method and host key type
grep -q "KexAlgorithms" /etc/ssh/ssh_config || 
cat <<EOF >> /etc/ssh/ssh_config
KexAlgorithms +diffie-hellman-group-exchange-sha1,diffie-hellman-group14-sha1
HostkeyAlgorithms +ssh-rsa
EOF
