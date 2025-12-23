# Path to Customization
export ZSH_CUSTOM="$HOME/zsh-dotfiles/custom"


plugins=(
    # git
    #python
    zsh-autosuggestions
    zsh-syntax-highlighting
    # docker
)

ZSH_THEME="ultima"

# Path to your Oh My Zsh installation.
export ZSH="$(dirname $0)/oh-my-zsh"

source $ZSH/oh-my-zsh.sh