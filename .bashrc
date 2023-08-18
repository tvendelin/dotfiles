test -s ~/.alias && . ~/.alias || true
export EDITOR=/usr/bin/vim

set -o vi

# FZF
export FZF_DEFAULT_OPTS='--extended --height=100% --reverse --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='fd'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export PS1="\w>"

export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTCONTROL=ignoredups:erasedups

GOPATH=~/go
PATH=$GOPATH/bin:$PATH

#alias kubectl='minikube kubectl -- '
#source <(kubectl completion bash)

