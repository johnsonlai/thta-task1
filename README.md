# Task1-A
1.Download the script to local server /usr/local/bin or the preferred script folder.<br/>
2.Update the script file parameter of the apache server log, default should be /var/log/apache/access.log<br/>
3.Make bash script executable: chmod +x /usr/local/bin/checkhttp.sh<br/>
4.Assume that cron service and postfix email service are installed and running.<br/>
5.To add the cron job in terminal: sudo crontab -e<br/>
6.Add new cron job to the last line of the cron table to run the script on every hour: 0 * * * * /usr/local/bin/checkhttp.sh<br/>


