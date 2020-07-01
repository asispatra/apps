#!/bin/bash

cd schbench/schbench
pwd
ls -la
wget "https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/download_run_scripts.sh" -O - | bash
ls -la
taskset -a -c 0-7 bash run_schbench.sh

cd
#python3 -u server.py
sleep infinity
