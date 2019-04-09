#!/usr/bin/bash

if [ $# -ne 1 ]
then
    echo "usage: $0 <verilog_file>"
    exit 1
fi

YOSYS=/home/users/mandardatar/local_install/yosys/0.5/bin/yosys

mname=$(basename $1 ".v")


# 1. Run yosys to generate spice and blif files.

cat <<EOF | $YOSYS > ${mname}.log
read_verilog $1
hierarchy -check -top ${mname}
proc; opt; memory; opt; fsm; opt
techmap; opt
splitnets -ports
dfflibmap -liberty mycells.lib
abc -liberty mycells.lib
clean
write_blif ${mname}.blif
write_spice raw_${mname}.spice
EOF
