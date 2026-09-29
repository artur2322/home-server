#!/bin/bash

if ! systemctl is-active --quiet nginx; then
    systemctl start nginx
    echo "$(date): Nginx restarted" >> /var/log/check_nginx.log
fi

