# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to Customization
export ZSH_CUSTOM="$HOME/zsh-dotfiles/custom"

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_THEME="ultima"
export COMPLETION_CACHE_DIR="${HOME}/.cache/zsh_completions"
fpath+=("${COMPLETION_CACHE_DIR}")

source $ZSH/oh-my-zsh.sh