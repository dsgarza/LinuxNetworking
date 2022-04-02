#!/bin/bash
systemctl start dhcpd.service
iptables -t nat -A POSTROUTING -s 20.30.40.1 -o eth1 -j MASQUERADE