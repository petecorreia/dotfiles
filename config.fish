############################################
# ALIASES
############################################

# navigation
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# listings
alias ll "ls -laF"

# enable aliases to be sudo’ed
alias sudo "sudo "

# add ssh keys
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1

# Docker
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

# Rust
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

# Go
export GOPATH=$HOME/go
set -U fish_user_paths $GOPATH/bin $fish_user_paths

set -g fish_user_paths "/Users/petecorreia/workspace/istio-1.6.1/bin" $fish_user_paths
set -g fish_user_paths "/Users/petecorreia/workspace/sonar-scanner-4.4.0.2170-macosx/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/libpq/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/petecorreia/google-cloud-sdk/path.fish.inc' ]; . '/Users/petecorreia/google-cloud-sdk/path.fish.inc'; end
