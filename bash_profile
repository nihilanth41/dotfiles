# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


PATH=$PATH:$HOME/bin
PATH=$PATH:/students/4/zrrm74/local/texlive/2014/bin/x86_64-linux	#For TeX/LaTeX
export PATH

SBCL_HOME=/students/4/zrrm74/lib/sbcl
export SBCL_HOME
