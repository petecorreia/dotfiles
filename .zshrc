# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Disable theme as we'll use "pure"
ZSH_THEME=""

plugins=(
	git
	docker
	docker-compose
	gcloud
	golang
	kubectl
	npm
	nvm
	zsh-autosuggestions
	zsh-history-substring-search
	zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ".."="cd .."
alias "..."="cd ../.."
alias "...."="cd ../../.."
alias "....."="cd ../../../.."
alias "ll"="ls -la"

# alias python shit
alias "python"="python3"
alias "pip"="pip3"

export LSCOLORS=exfxcxdxbxegedabagacad

# fix pure on m1 mac
fpath+=/opt/homebrew/share/zsh/site-functions

# load the pure prompt
autoload -U promptinit; promptinit

# fix autocomplete colors
zstyle ':completion:*:default' list-colors \
  "di=34" "ln=35" "so=32" "pi=33" "ex=31" "bd=34;46" "cd=34;43" \
  "su=30;41" "sg=30;46" "tw=30;42" "ow=30;43"

prompt pure

export EDITOR="code -w"

# JDK
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export USE_GKE_GCLOUD_AUTH_PLUGIN="True"

# Deno
export DENO_INSTALL="/Users/petecorreia/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"

 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/petecorreia/.bun/_bun" ] && source "/Users/petecorreia/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# npm
npm set fund false
npm set audit false
export DISABLE_OPENCOLLECTIVE=1
export ADBLOCK=1

# Go
export PATH=$HOME/go/bin:$PATH

# Use node version from .nvmrc if available
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Added by Windsurf
export PATH="/Users/petecorreia/.codeium/windsurf/bin:$PATH"
