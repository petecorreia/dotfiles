#!/usr/bin/env bash

############################################
# HOMEBREW
############################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# make sure we’re using the latest homebrew
brew update

# upgrade any already-installed formulae
brew upgrade

# install basics stuff
brew install fish git go adr-tools kustomize postgresql sqlc gcc golang-migrate pulumi python3 node ruby tree
brew cleanup

############################################
# CONFIG
############################################

# add fish to the list of acceptable shells (if not already present)
grep -q /opt/homebrew/bin/fish /etc/shells
if [ $? -ne 0 ]; then
	echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
fi

# change current shell to fish
chsh -s /opt/homebrew/bin/fish

# install fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# install iterm theme
open "$(pwd)/iterm.itermcolors"

# finally symlink everything
ln -fs "$(pwd)/.editorconfig" ~/.editorconfig
ln -fs "$(pwd)/.gitconfig" ~/.gitconfig
ln -fs "$(pwd)/.gitignore" ~/.gitignore
ln -fs "$(pwd)/.hushlogin" ~/.hushlogin
ln -fs "$(pwd)/config.fish" ~/.config/fish/config.fish
ln -fs "$(pwd)/fish_prompt.fish" ~/.config/fish/functions/fish_prompt.fish
ln -fs "$(pwd)/fish_title.fish" ~/.config/fish/functions/fish_title.fish
