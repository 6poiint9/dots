# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.


#export XDG_RUNTIME_DIR=/run/user/$(id -u) 

# Set prompt color to white
#PS1='\[\033[0;37m\]\u@\h\[\033[0m\] \[\033[0;35m\]\w \[\033[0;35m\]$ \[\033[0m\]'
PS1='\[\033[0;94m\]\u@\h\[\033[0m\] \[\033[0;35m\]\w \[\033[0;35m\]$ \[\033[0m\]'
#PS1='\[\033[0;37m\]\u@\h\[\033[0m\] \[\033[0;35m\]\w \[\033[0;35m\]$ \[\033[0m\]'


PATH=$PATH:$HOME/.scripts 



# Bash completion from https://github.com/akinomyoga/ble.sh
source ~/.local/share/blesh/ble.sh

