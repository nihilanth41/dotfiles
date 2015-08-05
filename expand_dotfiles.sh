#!/bin/env bash 

FILES=$HOME/dotfiles/*
for file in $FILES 
do
	if [ "$file" == "expand_files.sh" ]; then
		continue; 
	fi
	echo "Processing $file file..."
	#get name after last '/' in path and prepend a '.' 
	DOTFILE=.${file##*/} 
	echo "Dotfile is: $DOTFILE"
	
	#if file doesn't exist
	#{
	#	symlink $file to ~/.$file
	#}
done 
