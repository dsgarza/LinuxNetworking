#!/bin/bash
touch status.txt
systemctl –no-pager status dhcpd >> status.txt
systemctl -no-pager status sshd >> status.txt
systemctl -no-pager status vsftpd >> status.txt
cat status.txt