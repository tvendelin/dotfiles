test -s ~/.alias && . ~/.alias || true
export EDITOR=/usr/bin/vim

set -o vi

alias ll='ls -lhF'
alias l='ls -lahF'
alias vi=vim

# FZF
export FZF_DEFAULT_OPTS='--extended --height=100% --reverse --preview="cat {}" --preview-window=right:60%:wrap --bind="ctrl-o:become(vim {} < /dev/tty > /dev/tty)"'
export FZF_DEFAULT_COMMAND='fd'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# export PS1="\w>"
export PS1='\w\[\033[33m\]$(__git_ps1 ":%s")\[\033[00m\]>'

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL=ignoredups:erasedups
