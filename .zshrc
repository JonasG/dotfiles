# Mac specific
eval "`dircolors -b`"
alias ls='ls --color=always'
alias ll='ls --color=always -l'
alias la='ls --color=always -A'
alias less='less -R'
alias ls='ls --color=always'
alias grep='grep --color=always'
alias egrep='egrep --color=always'
alias fgrep='fgrep --color=always'
alias zgrep='zgrep --color=always'

autoload -U compinit
compinit

autoload -U promptinit
promptinit
prompt adam1

export HISTSIZE=65000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

unsetopt beep
