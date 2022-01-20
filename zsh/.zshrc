# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git z fzf zsh-autosuggestions)

alias els="exa --icons"
alias elsg="exa --icons --long --git --header"
alias els2="exa --icons --tree --level=2"
alias els3="exa --icons --tree --level=3"
alias els4="exa --icons --tree --level=4"
alias uu="sudo apt-get update | sudo apt-get upgrade"

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_profile
