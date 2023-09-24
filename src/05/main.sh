#!/bin/bash

echo "Выберите, что хотите вывести на экран:"
echo "1 - Все записи из логов, отсортированные по коду ответа"
echo "2 - Все уникальные IP, встречающиеся в записях"
echo "3 - Все запросы с ошибками (код ответа - 4хх или 5хх)"
echo "4 - Все уникальные IP, которые встречаются среди ошибочных запросов"

read PARAM

if ! [[ $PARAM =~ ^[1-4]$ ]]; then
    echo "Параметр должен быть числом от 1 до 4"
    exit 1
fi

case $PARAM in

    1)
        bash sort_by_code.sh
        ;;

    2)
        bash uniq_ip.sh
        ;;

    3)
        bash err_req.sh
        ;;
    4)
        bash uniq_ip_err_req.sh
        ;;
esac 