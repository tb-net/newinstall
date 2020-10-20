#!/bin/bash

# Bash script to push updates to remote git repository
# Only execute in a folder with .git


if [ $# -eq 2 ]; then
	if [ $2 == 'encode' ]; then
		python ~/scripts/encode.py
	fi
fi

git add *
git commit -m '$1'
git push -u origin master

