#!/bin/bash

if [ $# -ne 4 ]
then
	echo "Enter all arguments."
	exit 0
fi

#mkdir $2
cnt=1

ls -lR $1 > directory-info.last
dir_name=$(date +'%Y-%m-%d-%H-%M-%S')
cp -r "$1" "$2/$dir_name"

while true
do
	sleep $3
	ls -lR $1 > directory-info.new
	if cmp -s "directory-info.last" "directory-info.new"
	then
		echo "Directory unchanged."
		continue
	else	
		dir_name=$(date +'%Y-%m-%d-%H-%M-%S')
		echo "Directory changed, creating backup."
		cp -r "$1" "$2/$dir_name"
		cnt=$((cnt+1))
		ls -lR $1 > directory-info.last
		if [[ $cnt -gt $4 ]]
		then
			echo "Max backups reached, deleting oldest backup."
			y=`ls -c1 $2 | tail -1`
			rm -r "$2/$y"
		fi	
	fi
done		
