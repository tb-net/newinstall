#!/bin/bash

# Bash script to push updates to remote git repository
# Only execute in a folder with .git

if [ $# -eq 2 ]; then
	if [ $2 == 'encode' ]; then
		python ~/scripts/python/encode.py
	fi
fi

if [ $# -gt 0 ]; then
	mycomment=$1
else
	mycomment='generic update'
fi

git add *
git commit -m $mycomment
git push -u origin master

