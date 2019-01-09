#!/bin/sh

# starts nginx and crond
nginx
/usr/sbin/crond -f -l 8
