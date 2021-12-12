#!/bin/sh
LOG_FILE="apache_logs.txt"
THRESHOLD=100
date="`date +%Y_%m_%d_%I_%M_%p`"

if [ -f $LOG_FILE ]; then
    awk '$4 ~ d && $9~/^[4-5]/ {print $ls1 "\t" $2 "\t" $9}' $LOG_FILE > "$date.log"
    TCOUNT=`wc -l "$date.log" | awk '{print $1}'`
        if [[(($TCOUNT -gt $THRESHOLD))]]; then
            mail -s "Hourly HTTP status 4xx/5xx hit threshold, total count $TCOUNT, logfile name $date.log" webadmin@test.com
        else echo "false"
        fi
else
    echo "No FILE_NAME supplied"
    exit 1
fi
