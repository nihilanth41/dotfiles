# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias l="ls -la"
alias ll="l"
alias ls="ls --color=auto"
alias sl="ls" 
alias dir="ls"	
alias hidden="ls -a | grep '^\.'"
alias tmuxa="tmux a" 
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 5)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 5)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 4)\]]\\$ \[$(tput sgr0)\]"
