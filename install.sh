#!/usr/bin/env bash

############################################
# HOMEBREW
############################################

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# make sure we’re using the latest homebrew
brew update

# upgrade any already-installed formulae
brew upgrade

# install basics stuff
brew install fish
brew install git
brew install node
brew install ruby
brew install python3

# install other useful things
brew install tree

# remove outdated versions from the cellar
brew cleanup


############################################
# CONFIG
############################################

# add fish to the list of acceptable shells (if not already present)
grep -q /usr/local/bin/fish /etc/shells
if [ $? -ne 0 ]; then
	echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
fi

# change current shell to fish
chsh -s /usr/local/bin/fish

# install fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# install z
fisher add jethrokuan/z
fisher add FabioAntunes/fish-nvm

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
