# fish_config theme save "Catppuccin Frappe"
# fish_config theme save "Catppuccin Latte"
# fish_config theme save "Catppuccin Macchiato"
# fish_config theme save "Catppuccin Mocha"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
    alias ls "exa -g --icons"
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

alias vim nvim
alias gitac "git add . && git commit -m"
alias pcupgrade "sudo apt-get update && sudo apt-get upgrade -y && sudo apt full-upgrade -y"
alias rg grep

source ~/.asdf/asdf.fish

# Path for Cargo
export PATH="$HOME/.cargo/bin:$PATH"

starship init fish | source
