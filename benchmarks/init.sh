#!/bin/bash

# Allow PORT in firewall
echo "Allow PORT 9999"
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
firewall-cmd --zone=public --add-port=9999/tcp --permanent 
firewall-cmd --reload

python3 -u server.py

