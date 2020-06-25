#!/bin/bash

# Allow PORT in firewall
echo "Allow PORT 9999"
firewall-cmd --zone=public --add-port=9999/tcp --permanent 
firewall-cmd --reload

python3 -u server.py

