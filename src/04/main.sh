#!/bin/bash

. ./agents
. ./code
. ./ip
. ./method
. ./url

for ((day = 1; day <= 5; day++))
do
    datename=$(date +"%d.%m.%y" -d "-$day day")
    logfile="nginx_log_${datename}.log"
    num_entries=$((RANDOM % 901 + 100))
    sec=0
    echo "Генерация $num_entries записей за ${datename} в $logfile..."

    for ((i = 1; i <= num_entries; i++)); do
        sec=$(($sec + $RANDOM % 5))
        ip=$(ip)
        code=$(code)
        method=$(method)
        url=$(url)
        agents=$(agents)
        date=$(date +"%d/%b/%Y:%H:%M:%S %z" -d "-$day day +$sec sec")

    echo "${ip} - - [${date}] \"${method} ${url} HTTP/1.1\" ${code} $(( $RANDOM % 1025)) \"${agents}\"" >> $logfile
    done
done