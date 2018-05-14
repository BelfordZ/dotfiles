alias c="git commit -m"
alias ga="git add"
alias f="git fetch"
alias branch="git branch | grep ^\* | sed 's/* //'"

# Aliases that use other git aliases
alias grh='git fetch && git reset --hard origin/$(branch)'
alias gp='git push origin $(branch)'
