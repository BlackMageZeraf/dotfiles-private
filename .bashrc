#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -alFh'
alias grep='grep --color=auto'
alias gitac='git add . && git commit -m'
PS1='[\u@\h \W]\$ '

# To start starship prompt
eval "$(starship init bash)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
