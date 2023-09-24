#!/bin/bash

echo "Выберите способ, которым хотите очистить память:"
echo "1 - По лог файлу"
echo "2 - По дате и времени создания"
echo "3 - По маске имени (т.е. символы, нижнее подчёркивание и дата)."

read PARAM

if ! [[ $PARAM =~ ^[1-3]$ ]]; then
    echo "Параметр должен быть числом от 1 до 3"
    exit 1
fi

case $PARAM in

    1)
        bash logfile_cleaner.sh
        ;;

    2)
        bash timedate_cleaner.sh
        ;;

    3)
        bash namemask_cleaner.sh
        ;;
esac  