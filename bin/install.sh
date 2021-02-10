#!/bin/sh

SCRIPT_DIR_FULL="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install/replace backup files in ~/bin
mkdir -p ~/bin
rm -f ~/bin/rsync.sh ~/bin/backup_to_external_hd.sh
ln -s ${SCRIPT_DIR_FULL}/rsync.sh ~/bin/rsync.sh
ln -s ${SCRIPT_DIR_FULL}/backup_to_external_hd.sh ~/bin/backup_to_external_hd.sh
ln -s ${SCRIPT_DIR_FULL}/rsync_exclude.txt ~/bin/rsync_exclude.txt

# create log folder
mkdir -p ~/log

# install/replace crontab
crontab ${SCRIPT_DIR_FULL}/../conf/crontab.txt
