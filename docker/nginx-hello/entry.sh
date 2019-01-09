#!/bin/sh

# start cron
nginx
/usr/sbin/crond -f -l 8
