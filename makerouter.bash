 #!/bin/bash
 ifconfig  ens1 20.30.40.1
 ifconfig  ens1 netmask 255.255.255.0
 ifconfig  ens1 broadcast 20.30.40.255
 echo “1” >  /proc/sys/net/ipv4/ip_forward
 iptables -A FORWARD -i ens33 -j ACCEPT     	
 iptables -A FORWARD -o ens33 -j ACCEPT    	
 iptables -t nat -A POSTROUTING -o ens33 -j MASQUERADE