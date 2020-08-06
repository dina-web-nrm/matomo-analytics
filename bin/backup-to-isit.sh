#!/bin/bash
source ../.db.env
NOW=`date +"%Y-%m-%d"`
TARGET=../backups

docker exec test-matomo_db_1 bash -c \
	'mysqldump -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}' | gzip > ${TARGET}/${MYSQL_DATABASE}-${NOW}.sql.gz

scp ${TARGET}/${MYSQL_DATABASE}-${NOW}.sql.gz biobackup:/backup/matomo &>>biobackup.log
