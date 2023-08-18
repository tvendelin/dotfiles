set -o vi
alias l='ls -la'
alias ll='ls -l'
alias grep=/opt/local/bin/ggrep

listen(){
  lsof -n -i4TCP | grep LISTEN
}

# Eternal history
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=-1 
export HISTFILESIZE=-1
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export PS1="\W\$ "
export LC_ALL=en_US.UTF-8

export PATH="/opt/local/bin:/opt/local/sbin:$HOME/bin:$PATH"

# fzf
. /opt/local/share/fzf/shell/key-bindings.bash
export FZF_DEFAULT_OPTS='--height=100% --reverse --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='fd'

# Needed for Python requests if self-signed certs are used
#export REQUESTS_CA_BUNDLE=~/.CA4python.pem

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

alias mddiff="wdiff -w '~~' -x '~~' -y '**' -z '**'"
