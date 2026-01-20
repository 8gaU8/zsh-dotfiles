#! /bin/zsh

# Setup cache directories for completions and activations
export MAX_CACHE_AGE_SECONDS=86400 # 1 day


# Custom Config Locations
export DOTFILES_DIR="$(dirname $0)"
export BASE_CONFIG_DIR="$(dirname $0)/config"

export MISE_GLOBAL_CONFIG_FILE="${BASE_CONFIG_DIR}/mise.global.toml"
export STARSHIP_CONFIG="${BASE_CONFIG_DIR}/starship.toml"
export SHELDON_CONFIG_FILE="${BASE_CONFIG_DIR}/sheldon-plugins.toml"

# Activate mise 
if (( ${+VSCODE_INJECTION} )); then
	eval "$(${HOME}/.local/bin/mise activate zsh --shims)"
else
	eval "$(${HOME}/.local/bin/mise activate zsh )"
fi 

eval "$(sheldon source)"

autoload -Uz compinit && compinit
