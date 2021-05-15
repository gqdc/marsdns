#!/bin/bash
# This script make a curl request to server that will update
# the IP of a server within a HAProxy backedn.
#
# Don't forget to add this script in a crontab, like : 
# */5 * * * * bash /usr/local/share/marsdns.sh
#
# git : https://github.com/gqdc/marsdns

# Please define these settings
# URL to the haproxy update sscript, i.e : https://url_to_haproxy_update_script/
SERVER=""
# User credentials to make basic apache auth on SERVER.
USER=""
PASSWORD=""
# An arbitrary string to authentify the user agent at server side.
NAME=""

# Optional settings (default are good)
# Where to write the log file. Default is /var/log/marsdns.log
LOGFILE="/var/log/${0%%.*}.log"
# Date format. Default correspond to : 2021-05-15T15:54:47+02:00
DATE=`date --iso-8601=seconds`

[ ! -f "$LOGFILE" ] && touch "$LOGFILE"

echo ${DATE} - `curl -fs -AdynDns-${NAME} -u${USER}:${PASSWORD} --url ${SERVER}` >> ${LOGFILE}
