############################################
# ALIASES
############################################

# navigation
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# shortcuts
alias dt "cd ~/Desktop"
alias dl "cd ~/Downloads"
alias w "cd ~/Work"
alias af "cd ~/Work/af-frontend"

# listings
alias ll "ls -laF"

# git
alias gs "git status -s"
alias ga "git add"
alias gc "git commit"

# enable aliases to be sudo’ed
alias sudo "sudo "

# show/hide hidden files in Finder
alias show "defaults write com.apple.finder AppleShowAllFiles -bool true and killall Finder"
alias hide "defaults write com.apple.finder AppleShowAllFiles -bool false and killall Finder"

# show/hide desktop (useful when presenting)
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true and killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false and killall Finder"

set PATH ~/Library/Python/3.7/bin $PATH

ssh-add -K ~/.ssh/id_rsa

node -v
