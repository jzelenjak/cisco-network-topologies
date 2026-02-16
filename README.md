# Cisco Modeling Labs Network Topologies

This repository contains various network topologies for [Cisco Modeling Labs (CML)](https://www.cisco.com/site/us/en/learn/training-certifications/training/modeling-labs/index.html), which is the Cisco network simulation tool. The goal is to learn networking concepts and different features on Cisco devices running [Cisco Internetwork Operating System (IOS)](https://www.cisco.com/site/us/en/products/networking/software/ios-nx-os/index.html), and, of course, to also have some fun.

If you are new to CML, [Cisco U.](https://u.cisco.com/) provides a (free) introductory course called [Introduction to Network Simulations with Cisco Modeling Labs](https://u.cisco.com/paths/introduction-network-simulations-with-cisco-modeling-labs-243).

In the network topologies, I use the characters from my favourite animated movie [WALL-E](https://www.imdb.com/title/tt0910970) by [Disney](https://movies.disney.com/wall-e)/[Pixar](https://www.pixar.com/wall-e) (usually WALL-E and EVE, but sometimes also other characters like M-O and GO-4). For example, to test connectivity, WALL-E and EVE try to ping each other, or ping and/or connect to some other device in the network.


Note that when you import a lab topology into CML, you might experience some issues that would not happen if you configured the devices yourself. Some of the possible issues that I have observed so far are:
- *SSH is disabled* (per the `show ip ssh` command): Run `crypto key generate rsa modulus 4096` in the global configuration mode on the device to generate RSA keys
- *Interface Vlan X is in the down/down state on a switch* (per the `show ip interface brief` command): Save the running configuration (`copy run start`) and reload the switch (`reload`); this should fix the issue
- *No log messages are displayed in the console session*: Run `logging console` in the global configuration mode on the device to enable console logging; for some reason, when extracting device configurations (in the "Nodes" tab in the top menu), CML overwrites some of the commands that I have manually configured

In general, check the running configuration of the devices for the commands used to configure a specific feature, and refer to the README for a specific lab for comments.
