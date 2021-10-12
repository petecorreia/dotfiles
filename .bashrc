# ~/.bashrc: executed by bash(1) for non-login shells.

# aliases
alias ".."="cd .."
alias "..."="cd ../.."
alias "...."="cd ../../.."
alias "....."="cd ../../../.."
alias "ll"="ls -laF"

# bash prompt theme
__bash_prompt() {
    local userpart='`export XIT=$? \
        && [ "$XIT" -ne "0" ] && echo -n "\[\033[1;31m\]✝" || echo -n "\[\033[1;35m\]▹"`'
    local gitbranch='`\
        export BRANCH=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null); \
        if [ "${BRANCH}" != "" ]; then \
            echo -n "\[\033[1;90m\]${BRANCH}" \
            && if git ls-files --error-unmatch -m --directory --no-empty-directory -o --exclude-standard ":/*" > /dev/null 2>&1; then \
                    echo -n " \[\033[1;95m\]⇡"; \
               fi \
            && echo -n " "; \
        fi`'
    local lightblue='\[\033[1;34m\]'
    local removecolor='\[\033[0m\]'
    PS1="${userpart} ${lightblue}\w ${gitbranch}${removecolor}"
    unset -f __bash_prompt
}
__bash_prompt
export PROMPT_DIRTRIM=4
