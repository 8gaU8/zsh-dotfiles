#! /bin/zsh

# Activate mise 
if (( ${+VSCODE_INJECTION} )); then
	eval "$(${HOME}/.local/bin/mise activate zsh --shims)"
else
	eval "$(${HOME}/.local/bin/mise activate zsh )"
fi 

# Setup cache directories for completions and activations
export COMPLETION_CACHE_DIR="${HOME}/.cache/zsh_completions"
export ACTIVATE_CACHE_DIR="${HOME}/.cache/zsh_activations"
export MAX_CACHE_AGE_SECONDS=86400 # 1 day

fpath+="${COMPLETION_CACHE_DIR}"

# Custom Config Locations
export BASE_CONFIG_DIR="$(dirname $0)/config"
export SHELDON_CONFIG_FILE="${BASE_CONFIG_DIR}/sheldon-plugins.toml"
export STARSHIP_CONFIG="${BASE_CONFIG_DIR}/starship.toml"

eval "$(sheldon source)"

autoload -Uz compinit && compinit
