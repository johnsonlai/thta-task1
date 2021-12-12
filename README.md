# Task1-A
# Download the script to local server /usr/local/bin or the preferred script folder.
# Update the script file parameter of the apache server log, default should be /var/log/apache/access.log
# Make bash script executable.
chmod +x /usr/local/bin/checkhttp.sh
# Assume that cron service and postfix email service are installed and running. Add the cron job to
sudo crontab -e, add new cron job to the last line of the cron table to run the script on every hour.
0 * * * * /usr/local/bin/checkhttp.sh


# Task 1-B

Check what are the applications installed in the server and the app configuration of the log folder.
Check if the application allow to automatically backup or archive the application data and log files. If not, we will do manual log files archival.
Check if the application support log rotation and if it does, we can set rotation to every day to keep the log file into managable size. If it is a single file log, we can try to use logrotate to copy current log file to centralized log folder and truncate the current log file. We can create scripts to zip the files/folder to the date and archive them to centralized log repository/backup server every 90 days or 3 months.
In the centralized log repository or backup server, we would have to keep the backup log files at least 7 years in either online storage or offline storage media like backup tapes.
If the server has hit a certain storage threshold, example 90% or 95%, we will have to immediately archive the log files into a separate backup server or using authorized offline storage media. We can then delete the current log files and free up the disk space for the application and server to continue work properly.

