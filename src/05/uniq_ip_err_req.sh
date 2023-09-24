#!/bin/bash

cat ../04/nginx_log_* >> uniq_ip_err_req.tmp

awk '$9 > 399' uniq_ip_err_req.tmp >> uniq_ip_err_req_notuniq.tmp
rm uniq_ip_err_req.tmp

cat uniq_ip_err_req_notuniq.tmp | awk -F ' ' '{print $1}' | sort -n | uniq >> uniq_ip_err_req.log

rm uniq_ip_err_req_notuniq.tmp
cat uniq_ip_err_req.log
