# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git z fzf zsh-autosuggestions)

alias els="exa --icons -la"
alias elsg="exa --icons --long --git --header"
alias els2="exa --icons --tree --level=2"
alias els3="exa --icons --tree --level=3"
alias els4="exa --icons --tree --level=4"

alias ta="tmux attach"
alias tls="tmux list-sessions"
alias tks="tmux kill-session"

alias uu="sudo apt-get update; sudo apt-get upgrade"

alias v="nvim"

bindkey -s ^f "tmux-sessionizer\n"

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_profile

eval "$(starship init zsh)"
