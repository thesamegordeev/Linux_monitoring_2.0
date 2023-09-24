#!/bin/bash

. ./input_checker
. ./free_space_checker
. ./generator

input_checker $@

free_space=$(free_space_checker)

if [[ $free_space == "OK" ]]; then
    path=$1
    number_of_folders=$2
    name_of_folders=$3
    folders_generator $path $number_of_folders $name_of_folders

    number_of_files=$4
    name_of_files=$5
    size_of_files=$6
    files_generator $number_of_files $name_of_files $size_of_files
else
    echo "Недостаточно места, необходимо более 1GB"
fi