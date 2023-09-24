#!/bin/bash

. ./cpu_usage.sh
. ./disk_free_space.sh
. ./ram_usage.sh

while true; do
    rm metrics/prometheus.html 2>/dev/null
    disk_free_space
    ram_usage
    cpu_usage
    sleep 4;
done
    