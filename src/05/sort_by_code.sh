#!/bin/bash

cat ../04/nginx_log_* >> sort_by_code.tmp
awk '{print $0 | "sort -nk9"}' sort_by_code.tmp >> sort_by_code.log
rm sort_by_code.tmp
cat sort_by_code.log