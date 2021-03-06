#!/bin/sh

set -e

make -kj6 -f av.mak BLDENV=lnx_acc acc

ld -m elf_i386 -r -o libav_lnx32eg.a  ./hi_bdy1.o ./hi_bdy2.o ./hi_bdy3.o ./hi_ex_ms.o ./hi_ptui.o ./hi_ptmi.o ./hi_id.o ./smhiptmi.o ./eg_li.o ./eg_ptli.o ./eg_tpt.o ./eg_ui.o ./eg_ptui.o ./eg_id.o ./eg_ptmi.o ./eg_cpm.o ./eg_tunn.o ./eg_util.o ./eg_ex_ms.o ./eg_mi.o ./eg_dbutl.o ./eg_dbs3.o ./eg_dbs4.o ./eg_dbs5.o ./eg_dbs10.o ./eg_dbs11.o ./eg_dbsm.o ./eg_dbsn.o ./eg_dbsi.o ./eg_dbs16.o ./eg_edm.o ./eg_tmr.o ./egt_util.o ./smegptmi.o ./cm_gen.o ./cm_lib.o ./cm_hash.o ./cm_llist.o ./cm_bdy5.o ./cm_inet.o ./cm_tpt.o ./cm_tkns.o ./cm_mblk.o ./cm_dns.o ./hit.o ./leg.o ./lhi.o ./egt.o

make -f av.mak BLDENV=lnx_acc acc

echo
echo Build successful.
