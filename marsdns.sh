#!/bin/bash
# This script make a curl request to a proxy server.
# It is used to make a fake dynDNS.
#
# You must define SERVER, wich is the proxy server
# and add a task in the crontab to run the script
# every 5 minutes.

# Please define these settings
SERVER="" # https://url_to_haproxy_update_script/
USER="" # a usern allowed to make basic apache auth on SERVER
PASSWORD="" # The user's password
NAME="maison" # An arbitrary string to authentify the user agent of the curl command. Used on the server side.

# Optional settings (default are good)
LOGFILE="/var/log/${0%%.*}.log"
DATE=`date --iso-8601=seconds`

[ ! -f "$LOGFILE" ] && touch "$LOGFILE"

echo ${DATE} `curl -fs -AdynDns-${NAME} -u${USER}:${PASSWORD} --url ${SERVER}` >> ${LOGFILE}
