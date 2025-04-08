#!/bin/sh

# ensure homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "Homebrew is not installed. Install it from https://brew.sh/"
  exit 1
fi

brew update

# Homebrew formulae (CLI tools, libraries, etc.)
formulae=(
  entr
  fd
  fzf
  git
  go
  httpie 
  jless 
  lazygit
  lsd
  node
  nvim
  pure
  prettier
  ripgrep # used by nvim-telescope
  stylua
  tree
  typescript
  yarn
  zsh
  zsh-syntax-highlighting
  zsh-vi-mode
  zsh-autosuggestions
)

# Homebrew casks (GUI apps, fonts, etc.)
casks=(
  1password-cli
  1password
  flipper
  inkscape
  slack
  google-chrome
  transmission
  whatsapp
  spotify
  font-hack
  kitty
  karabiner-elements
)

# Install formulae
for formula in "${formulae[@]}"; do
  echo "Installing formula: $formula"
  brew install "$formula"
done

# Install casks
for cask in "${casks[@]}"; do
  echo "Installing cask: $cask"
  brew install --cask "$cask"
done

 
