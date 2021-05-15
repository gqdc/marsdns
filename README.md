# marsdns-client
Bash script which make a curl request to a server that will change a HAproxy backend server ip.

Usage :

1. Clone `marsdns-client.sh` to `/usr/local/share/` on the system that has a dynamic IP : `cd /usr/local/share/ ; git clone https://github.com/gqdc/marsdns-client/marsdns-client.sh`
2. Edit `marsdns-client.sh`, to set mandatory settings.
3. Execute marsdns.sh manually and check the log file : `bash /usr/local/share/marsdns-client.sh ; tail /var/log/marsdns.log`
4. If results are correct, add a new task in your crontab to execute marsdns.sh, for example, every 5 minutes : `*/5 * * * * bash /usr/local/share/marsdns.sh`
