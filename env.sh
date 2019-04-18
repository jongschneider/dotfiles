#!/bin/zsh

# Add commonly used folders to $PATH
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=code

# Create a folder and move into it in one command
function take() { mkdir -p "$@" && cd "$_"; }

# Create a file and open in vscode in one command
function tc() { touch "$1" && code "$1"; }

# Aliases
alias c='code .'
alias g='git'
alias gs='git status'
alias sz='source ~/.zshrc && echo 🔥🔥🔥  ZSH config updated  🔥🔥🔥'
alias cz='code ~/.zshrc'
alias cpwd='pwd|tr -d "\n"|pbcopy'
alias hg='history | grep'
alias ll='ls -l1'

function cs () { cd "$1" && ll; }