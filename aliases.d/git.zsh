# git {{{1

alias g='git'
alias gad='git add'
alias gP='git push'
alias gci='git commit'
alias giff='git diff'
alias gp='git pull'
alias gst='git st'
alias gl='git log --oneline'

if [[ $OSTYPE == darwin* ]]; then
    alias gg='gitx --all'
else
    alias gg='gitk --all&'
fi
