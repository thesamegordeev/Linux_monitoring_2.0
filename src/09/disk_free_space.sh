#!/bin/bash

function disk_free_space {
    echo "# HELP disk_free_space_kilobytes Disk free space in kilobytes" >> metrics/prometheus.html
    echo "# TYPE disk_free_space_kilobytes gauge" >> metrics/prometheus.html
    echo "disk_free_space_kilobytes $(df / | awk 'NR==2{print $4}')" >> metrics/prometheus.html
}