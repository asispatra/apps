#!/bin/bash

WORKSPACE=/tmp/asis
mkdir -p ${WORKSPACE}
cd ${WORKSPACE}
git clone https://github.com/parthsl/schbench && cd schbench/schbench && make

wget "https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/download_run_scripts.sh" -O - | bash
taskset -a -c 0-7 bash run_schbench.sh

cd ${WORKSPACE}
#python3 -u server.py
sleep infinity
