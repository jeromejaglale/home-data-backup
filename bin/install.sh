#!/bin/sh

SCRIPT_DIR_FULL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install/replace backup scripts in ~/bin
mkdir -p ~/bin
rm -f ~/bin/rsync.sh ~/bin/backup_to_external_hd.sh
ln -s ${SCRIPT_DIR_FULL}/rsync.sh ~/bin/rsync.sh
ln -s ${SCRIPT_DIR_FULL}/backup_to_external_hd.sh ~/bin/backup_to_external_hd.sh

# install/replace rsync exclude file list in ~/conf
mkdir -p ~/conf
rm -f ~/conf/rsync_exclude.txt
ln -s ${SCRIPT_DIR_FULL}/../conf/rsync_exclude.txt ~/conf/rsync_exclude.txt

# create log folder
mkdir -p ~/conf/log

# install/replace crontab
crontab ${SCRIPT_DIR_FULL}/../conf/crontab.txt
