#!/bin/bash
read -p ‘New host name: ” Name
sed -i "s/$quantumforce/$Name/g" /etc/hosts
sed -i "s/$quantumforce/$Name/g" /etc/hostname