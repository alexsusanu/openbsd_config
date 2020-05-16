# use vim if it's installed, vi otherwise
case "$(command -v vim)" in
  */vim) VIM=vim ;;
  *)     VIM=vi  ;;
esac

export EDITOR=$VIM
export FCEDIT=$EDITOR
export PAGER=less
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000


# nice colored prompt that also sets xterm title
_XTERM_TITLE='\[\033]0;\u@\h:\w\007\]'

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


#aliases
#copies the piped input onto the clipboard 
alias copy='xclip -selection c'
#pastes the clipboards contents into the terminal
alias paste='xclip -selection clipboard -o'

if command -v colorls > /dev/null ; then
    LS='colorls'
else
    LS='ls'
fi
alias ls='$LS -FHh'
alias ll='ls -l'
alias la='ls -lA'


#interactive commands in case deleting by mistake
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

#set links browser default opening to duckduckgo
alias links='links www.duckduckgo.com'

