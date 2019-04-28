#!/bin/sh

if [ $# -ne 1 ]
then
    echo "usage: $0 <verilog_file>"
    exit 1
fi

YOSYS=/usr/bin/yosys

mname=$(basename $1 ".v")


# 1. Run yosys to generate spice and blif files.

cat <<EOF | $YOSYS > ${mname}.log
#read_verilog rtl/$1 lib/FIFO2_1.v rtl/module_fnBitNodeCore.v
#read_verilog lib/$1
read_verilog rtl/$1
hierarchy -check -top ${mname}
proc; opt; memory; opt; fsm; opt
techmap; opt
splitnets -ports
dfflibmap -liberty mycells.lib
abc -liberty mycells.lib
clean
write_verilog -renameprefix ag ${mname}.vg
show ${mname}
#write_blif ${mname}.blif
#write_spice raw_${mname}.spice
EOF
