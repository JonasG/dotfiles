set -o vi

# Mac specific
alias ls='ls -G'
alias ll='ls -al'
alias grep='grep --color=always'

autoload -U compinit
compinit

autoload -U promptinit
promptinit
prompt suse

export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

unsetopt beep
