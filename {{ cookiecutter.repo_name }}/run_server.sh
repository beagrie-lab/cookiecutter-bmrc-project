#/bin/bash

port_num=$(./get_port.sh)
source env-${MODULE_CPU_TYPE}/bin/activate
jupyter lab --ip=0.0.0.0 --port $port_num --no-browser
