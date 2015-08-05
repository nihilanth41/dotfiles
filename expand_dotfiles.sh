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
	#if file exists
	if [ -f $HOME/$DOTFILE ]; then 
		echo "$DOTFILE already exists in $HOME"
		read -r -p "Overwrite? [y/N] " yn
		case $yn in
			[Yy]* ) ln -sf $file $HOME/$DOTFILE; continue;; 
			[Nn]* ) continue;;
			* ) echo "Please enter yes or no.";;
		esac
	fi
done 

