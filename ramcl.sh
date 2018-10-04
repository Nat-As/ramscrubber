#!/bin/bash
#RAM CL - RAM Clearing tool
#BY: James Andrews

clear
printf "clearing page cache...\n"
sync; echo 3 > /proc/sys/vm/drop_caches
sleep 2
printf "Done!\n"

printf "clearing dentries and inodes...\n"
sync; echo 2 > /proc/sys/vm/drop_caches
sleep 2
printf "Done!\n"

printf "clearing everything else...\n"
sync; echo 1 > /proc/sys/vm/drop_caches
sleep 2
printf "Done!\n"
