# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


PATH=$PATH:$HOME/bin
# For raspi:
PATH=$PATH:/opt/vc/bin
export PATH

EDITOR=/usr/bin/vim 
export EDITOR 

