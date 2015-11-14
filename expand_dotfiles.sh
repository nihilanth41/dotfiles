#!/usr/bin/env bash 
# Install dotfiles onto new system 

# NOTE:
# This script mostly works but still doesn't handle symlinking directories properly
# Ex, when if a symlink [ ~/.icewm -> /home/user/dotfiles/icewm ]already exists, the script will make a new link:
# ~/.icewm -> /home/user/dotfiles/icewm/icewm  

# Name of calling script 
scriptname=${0##*/}

FILES=$HOME/dotfiles/*
for file in $FILES 
do
	
	# Name of file (without path)
	filename=${file##*/}
	
	# Ignore the calling script and README
	if [ "$filename" == "$scriptname" ] || [ "$filename" == "README.md" ]; then
		continue; 
	else
		echo "Processing $filename..."
		
		#get name after last '/' in path and prepend a '.' 
		DOTFILE=.${file##*/} 
		
		#if file exists prompt for overwrite
		if [ -f $HOME/$DOTFILE ] || [ -d $HOME/$DOTFILE ]; then 
			echo "$DOTFILE already exists in $HOME"
			read -r -p "Overwrite? [y/N/q] " ynq
			case $ynq in
				[Yy]* ) printf "Symlinked \'%s\' -> \'%s\'\n" "$HOME/$DOTFILE" "$file"; ln -sf "$file" "$HOME/$DOTFILE"; continue;; 
				[Nn]* ) continue;;
				[Qq]* ) break;;
				    * )	continue;;
				#* ) echo "Please enter yes or no.";;
			esac
		else
			printf "Symlinked \'%s\' -> \'%s\'\n" "$HOME/$DOTFILE" "$file" 
			ln -sf "$file" "$HOME/$DOTFILE"
		fi
	fi
done 

