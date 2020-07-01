#!/bin/bash

cd schbench/schbench
wget "https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/download_run_scripts.sh" -O - | bash
taskset -a -c 0-7 bash run_schbench.sh

cd
#python3 -u server.py
sleep infinity
