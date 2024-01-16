#!/bin/bash

nginx_alias="nginx-master"
log_file="/etc/keepalived/health_check.log"

if ping -c 1 "$nginx_alias" > /dev/null
then
    echo "$(date): Health check passed" >> "$log_file"
    exit 0  # 返回0表示成功
else
    echo "$(date): Health check failed" >> "$log_file"
    exit 1  # 返回非0表示失败
fi
