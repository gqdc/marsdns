# marsdns
Bash script which make a curl request to a server that will change a HAproxy backend server ip.

Usage :

1. Open marsdns.sh, and set mandatory settings (ask the server administrator if needed).
2. Execute marsdns.sh manually and check the log file : `bash /usr/local/share/marsdns.sh ; tail /var/log/marsdns.log`
3. If results are correct, add the line in your crontab : `*/5 * * * * bash /usr/local/share/marsdns.sh`
