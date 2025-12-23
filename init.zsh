# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH


# Path to Customization
export ZSH_CUSTOM="$HOME/zsh-dotfiles/custom"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

plugins=(
    # git
    #python
    zsh-autosuggestions
    zsh-syntax-highlighting
    # docker
)

ZSH_THEME="ultima"

# # 名前で色を付けるようにする
# autoload colors
# colors
 
# # LS_COLORSを設定しておく
# export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
 
# ファイル補完候補に色を付ける
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# # completion setting
# autoload -Uz compinit
# ZSH_COMPDUMP=~/.cache/zsh/.zcompdump-${ZSH_VERSION}
# compinit -d $ZSH_COMPDUMP
# autoload -U compinit && compinit -i

# Path to your Oh My Zsh installation.
export ZSH="$(dirname $0)/oh-my-zsh"

source $ZSH/oh-my-zsh.sh