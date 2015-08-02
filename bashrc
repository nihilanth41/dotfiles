# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific prompt

# User specific aliases and functions
alias l="ls -la"
alias ls="ls --color=auto"
alias dir="ls"	#because why not? 
alias grep="grep --color=always" #colors matched string
alias hidden="ls -a | grep '^\.'"

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 5)\]\u\[$(tput setaf 4)\]@\[$(tput setaf 5)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 4)\]]\\$ \[$(tput sgr0)\]"
