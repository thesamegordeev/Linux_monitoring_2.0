#!/bin/bash

function cpu_usage {
    echo "# HELP cpu_total_usage_percent Total CPU usage as a percentage" >> metrics/prometheus.html
    echo "# TYPE cpu_total_usage_percent gauge" >> metrics/prometheus.html
    echo "cpu_total_usage_percent $(awk '{u=$2+$4; t=$2+$4+$5; if (NR==1){u1=u; t1=t;} else print ($2+$4-u1) * 100 / (t-t1) ; }' <(grep 'cpu ' /proc/stat) <(sleep 1;grep 'cpu ' /proc/stat))" >> metrics/prometheus.html
}