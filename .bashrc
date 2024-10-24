test -s ~/.alias && . ~/.alias || true
export EDITOR=/usr/bin/vim

set -o vi

alias ll='ls -lhF'
alias l='ls -lahF'
alias vi=vim

# FZF
#export FZF_DEFAULT_OPTS='--extended --height=100% --reverse --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_OPTS='--extended --height=100% --reverse' 
export FZF_CTRL_T_OPTS='--preview="cat {}" --preview-window=right:60%:wrap --bind="ctrl-o:become(nvim {} < /dev/tty > /dev/tty)"'
export FZF_DEFAULT_COMMAND='fd'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# export PS1="\w>"
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto"
export PS1='\W$(__git_ps1 ":%s")>'

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL=ignoredups:erasedups
