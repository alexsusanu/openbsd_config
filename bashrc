#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#set editor vim
export EDITOR=vim

#ignore duplicates in bash history
export HISTCONTROL=ignoredups

#PS1 conf
PS1='\[\e[1;91m\][\u@\h \w]\[\e[0m\]\[\e[32m\]$(parse_git_branch)\[\e[00m\]$'

parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
PS1='[\[\033[01;32m\]\u@\h\[\033[00m\]]'
PS1=$PS1'[\033[01;31m\]\t\033[00m\]]'
PS1=$PS1'[\[\033[01;34m\]\w\033[00m\]]:\033[01;33m\]$(parse_git_branch)\[\033[00m\]\n\$ '
PS2='\[\033[01;36m\]>'
#end PS1 conf

#activate bash_aliases
if [ -f ~/.bash_aliases ]
then
	source ~/.bash_aliases
fi
