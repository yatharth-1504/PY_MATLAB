#! /bin/bash
if [ -f ~/$1 ]
then 
	echo "The file exists." 
	#what to backup
	backup_files="S1"

	# Where to backup to.
	dest="/mnt/c/wsl/BS20B039-assn1/sol1/backup"

	# Create archive filename.	
	day=$(date +%T)
	hostname=$(hostname -s)
	archive_file="$hostname-$day.tgz"

	# Print start status message.
	echo "Backing up $backup_files to $dest/$archive_file"
	date
	echo

	# Backup the files using tar.
	tar czf $dest/$archive_file $backup_files

	# Print end status message.
	echo
	echo "Backup finished"
	date

	# Long listing of files in $dest to check file sizes.
	ls -lh $dest 
else 
	echo "The file doesn't exist " 
	touch $1
	echo "The file $1 has been created." 
fi 

