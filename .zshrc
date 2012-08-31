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
alias diff-dirs='diff -qr'

# exts prints a list of the number of times extensions occur in dir and subdirs
alias exts='find . -type f -name "*\.???" |rev |cut -c1-3 |rev |sort |uniq -c'

autoload -U compinit
compinit

autoload -U promptinit
promptinit
prompt adam1

# Edit the current command-line with the editor
autoload edit-command-line && zle -N edit-command-line
bindkey '\ee' edit-command-line && zle -N edit

export PATH=$HOME/bin:$PATH

export EDITOR=vim
export HISTSIZE=65000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

unsetopt beep

# Use emacs key-bindings. By default, zsh looks at the $EDITOR flag to decide which
# to use which is not what I want.
setopt emacs

# Settings for z
. $HOME/bin/z/z.sh
function precmd () {
	_z --add "$(pwd -P)"
}

# Subversion
alias svnmod="svn status | grep ^M"

source .zshlocal
