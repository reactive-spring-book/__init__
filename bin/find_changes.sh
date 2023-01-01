#!/usr/bin/env bash
start=`pwd`
# find . -maxdepth 1 -mindepth 1 -type d | while read l ; do
find .  -iname ".git" -type d | while read l ; do
	cd $start/$l/..
	repo=`pwd`
	S=`git status --porcelain`
	[[  $S != '' ]] && echo "there are changes in $repo"
done
