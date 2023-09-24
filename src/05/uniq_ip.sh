#!/bin/bash

cat ../04/nginx_log_* >> uniq_ip.tmp
cat uniq_ip.tmp | awk -F ' ' '{print $1}' | sort -n | uniq >> uniq_ip.log
rm uniq_ip.tmp
cat uniq_ip.log