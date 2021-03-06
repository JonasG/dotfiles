# oh-my-zsh configuration
ZSH=$HOME/bin/oh-my-zsh
ZSH_THEME="geoffgarside"
plugins=(git)
source $ZSH/oh-my-zsh.sh

eval "`dircolors -b`"
alias ls='ls --color=always'
alias ll='ls --color=always -l -h'
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

# Edit the current command-line with the editor
autoload edit-command-line && zle -N edit-command-line
bindkey '\ee' edit-command-line && zle -N edit

unsetopt CORRECTALL

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
alias svn-revert="svnmod | cut -d ' ' -f 8 | pipe.vim | xargs svn revert"
alias svn-commit="svnmod | cut -d ' ' -f 8 | pipe.vim | xargs svn commit"

# lftp put function
function ftp_put()
{
	lftp <<- EOF
		open $1
		cd "$2"
		put $3
		bye
	EOF
}

function hex2dec() { python -c "print int('$1', 16)"; }

alias pomodoro="sleep 25m && echo DONE"

source $HOME/.zshlocal
