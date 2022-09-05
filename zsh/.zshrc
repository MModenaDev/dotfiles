export ZSH="$HOME/.oh-my-zsh"

eval $(/opt/homebrew/bin/brew shellenv)

plugins=(git z fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_profile
source $(brew --prefix nvm)/nvm.sh

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
