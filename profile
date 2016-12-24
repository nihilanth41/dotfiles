# .profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export EDITOR=/usr/bin/vim 
export PATH="$HOME/bin:$HOME/local/bin:$PATH"
export MANPATH=$HOME/man:$MANPATH
