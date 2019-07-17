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

# ssh-add -K ~/.ssh/id_rsa

# node -v

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/petecorreia/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/petecorreia/Downloads/google-cloud-sdk/path.fish.inc'; end

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish