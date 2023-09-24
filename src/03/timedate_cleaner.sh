#!/bin/bash

echo "Введите дату и время начала промежутка создания файлов в формате YYYY-MM-DD HH:MM"
echo "Например: 2023-09-03 15:53"

read start_date

if [[ -z $start_date ]]; then
    echo "Введите дату начала."
    exit 1
fi

echo "Введите дату и время окончания промежутка создания файлов в формате YYYY-MM-DD HH:MM"
echo "Например: 2023-09-03 15:55"

read end_date

if [[ -z $end_date ]]; then
    echo "Введите дату окончания."
    exit 1
fi

find / -type f -newermt "$start_date:00" -not -newermt "$end_date:59" -delete 2>/dev/null
find / -type d -newermt "$start_date:00" -not -newermt "$end_date:59" -delete 2>/dev/null