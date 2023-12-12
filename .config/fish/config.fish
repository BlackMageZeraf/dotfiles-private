if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ll='ls -alFh --color=auto'
alias ls='ls --color=auto'

starship init fish | source
