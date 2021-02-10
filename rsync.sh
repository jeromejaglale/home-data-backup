#!/bin/sh

originalFolder="$1"
targetFolder="$2"

# list of files to ignore
EXCLUDES_LIST='/Users/jerome/conf/rsync_exclude.txt'

# just to easily calculate script duration: https://stackoverflow.com/questions/8903239/how-to-calculate-time-elapsed-in-bash-script
SECONDS=0

echo "**************************************************************************************"
echo `date +%Y-%m-%d_%HH%M` " - rsync $originalFolder to $targetFolder"
echo "**************************************************************************************"

# -a: archive mode - keeps permissions, symlinks, etc 
rsync -v -a --exclude-from "$EXCLUDES_LIST" --delete --ignore-errors "$originalFolder" "$targetFolder"

echo '* Done at' `date +%Y-%m-%d_%HH%M`
duration=$SECONDS
echo '* Total time:' "$(($duration / 60)) min" "$(($duration % 60))" 'sec'
