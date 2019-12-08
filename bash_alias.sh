#
# Bash aliases: ~/.bash/bash_alias
#

alias ls='ls --color=auto'
alias l='ls --color=auto -lh'
alias la='ls --color=auto -alh'
alias grep='grep --color=auto'

# Safety features
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias crontab='crontab -i'

# less will pickup LESS environment variable
export LESS=' -i -g -n -R'

#USER DEFINED ALIASES
alias c='clear'
alias e='FAT_EMACS=1 emacsclient -s scorpio -t'
alias ek='emacsclient -s scorpio -e "(kill-emacs)"'
alias ec='FAT_EMACS=1 emacsclient -s scorpio -c'
alias gsl='git svn log'
alias vig='vim -u ~/.vigor'
alias ln='~/.local/bin/ln.sh'
