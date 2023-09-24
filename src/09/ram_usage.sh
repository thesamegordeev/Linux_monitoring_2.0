#!/bin/bash

function ram_usage {
    echo "# HELP ram_free_kilobytes Total free RAM in kb" >> metrics/prometheus.html
    echo "# TYPE ram_free_kilobytes gauge" >> metrics/prometheus.html
    echo "ram_free_kilobytes $(free | awk 'NR==2{print $2}')" >> metrics/prometheus.html
}