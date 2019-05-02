#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035
#-------------------------------------------

# /usr/local/share/qflow/scripts/synthesize.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035/source/mkLdpcCore.v || exit 1
# /usr/local/share/qflow/scripts/placement.sh -d /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/router.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/migrate.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/drc.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/lvs.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
/usr/local/share/qflow/scripts/gdsii.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
# /usr/local/share/qflow/scripts/display.sh /home/nirajns/work/courses/EE705/ee705-ldpc/qflow-035 mkLdpcCore || exit 1
