# Home Data Backup

## What is it?
Shell scripts + crontab to backup my mac user data (Applications, home folder, `/Library`, and an external SSD) to an external hard drive, every night.

## Quick install
``
git clone https://github.com/jeromejaglale/home-data-backup.git

# move the folder to its final location and cd into it
..

# launch quick install
bin/install.sh
``

Warning: creates `~/bin` and `~/log` if necessary, and will overwrite any existing user crontab.
