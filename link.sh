#!/usr/bin/env bash

set -euo pipefail

ln -nfs "$HOME/dotfiles/.bashrc"  "$HOME/.bashrc"
ln -nfs "$HOME/dotfiles/.editorconfig"  "$HOME/.editorconfig"
ln -nfs "$HOME/dotfiles/.gitconfig"  "$HOME/.gitconfig"
ln -nfs "$HOME/dotfiles/.gitignore"  "$HOME/.gitignore"
ln -nfs "$HOME/dotfiles/.hushlogin"  "$HOME/.hushlogin"
ln -nfs "$HOME/dotfiles/.zshrc"  "$HOME/.zshrc"
