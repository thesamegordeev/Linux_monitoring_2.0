#!/bin/bash 

path_to_remove=$(cat ../02/logfile.log | grep created | awk -F ' ' '{print $3}')

for elem in $path_to_remove
do
    rm -rf $elem 2>/dev/null
done