#* === initialize ===
cached_activation_init

#* === Activations ===
cached_activation _brew /opt/homebrew/bin/brew shellenv
cached_activation _try ruby ~/.local/try.rb init ~/src/tries
cached_activation _fzf fzf --zsh
cached_activation _starship starship init zsh
cached_activation _zoxide zoxide init zsh --cmd cd