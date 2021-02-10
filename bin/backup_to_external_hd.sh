#!/bin/sh

# destination for backups
externalHDPath='/Volumes/wd_external_2tera_01'

logFolder="~/log"

# just to easily calculate script duration: https://stackoverflow.com/questions/8903239/how-to-calculate-time-elapsed-in-bash-script
SECONDS=0

echo "**************************************************************************************"
echo `date +%Y-%m-%d_%HH%M` "Starting backups to $externalHDPath.."

# backup /Volumes/WD_SSD_1TB_01
startDate=`date +%Y-%m-%d_%HH%M`
logFilePath=${logFolder}/backup_${startDate}.log
~/bin/rsync.sh /Volumes/WD_SSD_1TB_01/ ${externalHDPath}/backups/WD_SSD_1TB_01 >> $logFilePath 2>&1

# backup /Users/jerome
startDate=`date +%Y-%m-%d_%HH%M`
logFilePath=${logFolder}/backup_${startDate}.log
~/bin/rsync.sh /Users/jerome/ ${externalHDPath}/backups/HD/jerome >> $logFilePath 2>&1

# backup /Library
startDate=`date +%Y-%m-%d_%HH%M`
logFilePath=${logFolder}/backup_${startDate}.log
~/bin/rsync.sh /Library/ ${externalHDPath}/backups/HD/Library >> $logFilePath 2>&1

# backup /Applications
startDate=`date +%Y-%m-%d_%HH%M`
logFilePath=${logFolder}/backup_${startDate}.log
~/bin/rsync.sh /Applications/ ${externalHDPath}/backups/HD/Applications >> $logFilePath 2>&1

echo `date +%Y-%m-%d_%HH%M` "All finished"
duration=$SECONDS
echo 'Total time:' "$(($duration / 60)) min" "$(($duration % 60))" 'sec'
echo "**************************************************************************************"
