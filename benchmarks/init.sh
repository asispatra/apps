#!/bin/bash

WORKSPACE=/tmp/asis
mkdir -p ${WORKSPACE}
cd ${WORKSPACE}
git clone https://github.com/parthsl/schbench && cd schbench/schbench && make

wget "https://raw.githubusercontent.com/asispatra/asisapps/master/benchmarks/download_run_scripts.sh" -O - | bash
echo "### schbench Starts!"
taskset -a -c 0-7 bash run_schbench.sh
mv logs logs-0-7
taskset -a -c 0-3 bash run_schbench.sh
mv logs logs-0-3
taskset -a -c 0 bash run_schbench.sh
mv logs logs-0

echo "### schbench DONE!"
cd ${WORKSPACE}
#python3 -u server.py
echo "### Going to sleep..."
sleep infinity
