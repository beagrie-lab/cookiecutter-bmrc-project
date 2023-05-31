#/bin/bash

port_num=$(./get_port.sh)
# source env-${MODULE_CPU_TYPE}/bin/activate
echo jupyter lab --port $port_num --no-browser
