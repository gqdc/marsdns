# marsdns-client
Bash script which make a curl request to a server that will change a HAproxy backend server ip.

Usage :

1. Edit marsdns.sh, to set mandatory settings.
2. Execute marsdns.sh manually and check the log file : `bash /usr/local/share/marsdns.sh ; tail /var/log/marsdns.log`
3. If results are correct, add a new task in your crontab to execute marsdns.sh, for example, every 5 minutes : `*/5 * * * * bash /usr/local/share/marsdns.sh`
