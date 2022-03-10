#!/usr/bin/env bash

set -euo pipefail

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install zsh
brew install zsh

# change shell to zsh
chsh -s $(which zsh)

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# remove default zshrc
rm -rf "$HOME/.zshrc"

ln -nfs "$HOME/dotfiles/.bashrc"  "$HOME/.bashrc"
ln -nfs "$HOME/dotfiles/.editorconfig"  "$HOME/.editorconfig"
ln -nfs "$HOME/dotfiles/.gitconfig"  "$HOME/.gitconfig"
ln -nfs "$HOME/dotfiles/.gitignore"  "$HOME/.gitignore"
ln -nfs "$HOME/dotfiles/.hushlogin"  "$HOME/.hushlogin"
ln -nfs "$HOME/dotfiles/.zshrc"  "$HOME/.zshrc"
