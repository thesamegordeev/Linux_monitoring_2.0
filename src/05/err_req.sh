#!/bin/bash

cat ../04/nginx_log_* >> err_req.tmp
awk '$9 > 399' err_req.tmp >> err_req.log
rm err_req.tmp
cat err_req.log