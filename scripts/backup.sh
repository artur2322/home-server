#!/bin/bash

BACKUP_DIR=/backup
mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/etc_$(date +%F).tar.gz /etc
tar -czf $BACKUP_DIR/home_$(date +%F).tar.gz /home

rsync -avz $BACKUP_DIR/ backup@192.168.1.50:/backup/

find $BACKUP_DIR -name "*.tar.gz" -mtime +7 -delete
