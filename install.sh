#!/usr/bin/env bash

set -euo pipefail

# install homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# install zsh
brew install zsh

# install oh my zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

# install pure prompt
brew install pure

# install some nice zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# remove default zshrc
rm -rf "$HOME/.zshrc"

ln -nfs "$HOME/dotfiles/.bashrc"  "$HOME/.bashrc"
ln -nfs "$HOME/dotfiles/.editorconfig"  "$HOME/.editorconfig"
ln -nfs "$HOME/dotfiles/.gitconfig"  "$HOME/.gitconfig"
ln -nfs "$HOME/dotfiles/.gitignore"  "$HOME/.gitignore"
ln -nfs "$HOME/dotfiles/.hushlogin"  "$HOME/.hushlogin"
ln -nfs "$HOME/dotfiles/.zshrc"  "$HOME/.zshrc"

echo "zsh installed, run: chsh -s /bin/zsh"
