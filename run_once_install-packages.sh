#!/bin/sh

# ensure homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "Homebrew is not installed. Install it from https://brew.sh/"
  exit 1
fi

brew update

# homebrew formulae (CLI tools, libraries, etc.)
formulae=(
  docker
  docker-compose
  entr
  fd
  fzf
  git
  go
  httpie 
  insomnia
  jless 
  lazygit
  lsd
  node
  netlify-cli
  nvim
  pipx
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

# homebrew casks (GUI apps, fonts, etc.)
casks=(
  brave-browser
  docker
  duckduckgo
  firefox
  font-hack
  google-chrome
  google-chrome@dev
  hammerspoon
  karabiner-elements
  kitty
  slack
  transmission
  whatsapp
)

# install formulae
for formula in "${formulae[@]}"; do
  echo "Installing formula: $formula"
  brew install "$formula"
done

# install casks
for cask in "${casks[@]}"; do
  echo "Installing cask: $cask"
  brew install --cask "$cask"
done

# other plugins
# vimlike for safari in macos store

 
