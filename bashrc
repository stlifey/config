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

source /etc/bash/bashrc

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CCACHE_DIR=/ccache/users
export HISTFILE=/dev/null

alias sync="sudo sync"
alias pacman="sudo pacman"
alias yaourt="sudo yaourt"
alias emerge="sudo emerge"
alias qsearch="sudo qsearch"
alias smart-live-rebuild="sudo smart-live-rebuild"

alias smb-192.168.11.2-share="udevil mount smb://Administrator:123@192.168.11.2/share"
