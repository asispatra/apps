#!/bin/bash

cd schbench/schbench
wget "https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/download_run_scripts.sh" -O - | bash
bash run_schbench.sh
python3 -u server.py

