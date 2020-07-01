#!/bin/bash

sshpass -p 'passw0rd' scp -r root@ocpbastion.aus.stglabs.ibm.com:/root/asis/scripts/ .
cd scripts/schbench/schbench
make
bash run.sh
sshpass -p 'passw0rd' scp -r logs root@ocpbastion.aus.stglabs.ibm.com:/root/asis/results
cd
python3 -u server.py

