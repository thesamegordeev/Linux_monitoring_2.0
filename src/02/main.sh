#!/bin/bash

inside_start_time=`date +%s`
display_start_time=`date +%T`

. ./input_checker
. ./free_space_checker
. ./generator

input_checker $@

free_space=$(free_space_checker)

if [[ $free_space == "OK" ]]; then
    folder_letters=$1
    file_letters=$2
    filesize="${3%Mb}"
    folders_generator $folder_letters $file_letters $filesize 2>/dev/null

else
    echo "Недостаточно места, необходимо более 1GB"
fi

display_end_time=`date +%T`
inside_end_time=`date +%s`
script_runtime=$((inside_end_time-inside_start_time))

echo "Время начала работы скрипта: $display_start_time"
echo "Время окончания работы скрипта: $display_end_time"
echo "Время работы скрипта: $script_runtime"

echo "Start time of the script: $display_start_time" >> logfile.log
echo "End time of the script: $display_end_time" >> logfile.log
echo "Runtime of the script: $script_runtime" >> logfile.log
