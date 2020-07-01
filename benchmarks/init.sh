#!/bin/bash

sshpass -p 'XXX' scp -r root@XXX:/root/asis/scripts/ .
cd scripts/schbench/schbench
make
bash run.sh
sshpass -p 'XXX' scp -r logs root@XXX:/root/asis/results
cd
python3 -u server.py

