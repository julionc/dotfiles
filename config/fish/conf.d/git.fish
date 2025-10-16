# git {{{1

alias gP='git push'
alias gp='git pull'
alias gl='git log --oneline'

# abbr -a squash git rebase -i HEAD~
# abbr -a main git checkout main

# Git
abbr -a ga  'git add'
abbr -a gaa 'git add .'
abbr -a gb  'git branch'
abbr -a gba 'git branch -a'
abbr -a gc  'git commit -m'
abbr -a gca 'git commit --amend'
abbr -a gcl 'git clone'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a gci 'git commit -m'
abbr -a giff 'git diff'
abbr -a gds 'git diff --staged'
abbr -a gl  'git pull'
abbr -a glr 'git pull --rebase'
abbr -a gp  'git push'
abbr -a gpf 'git push --force-with-lease'
abbr -a gst 'git status -sb'
abbr -a gss 'git stash'
abbr -a gsp 'git stash pop'
abbr -a gsw 'git switch'
abbr -a gswc 'git switch -c'
abbr -a gt  'git tag'
abbr -a gtl 'git tag --list'
abbr -a gpo 'git push origin HEAD'
abbr -a gpl 'git pull origin HEAD'
abbr -a grh 'git reset HEAD'
abbr -a grs 'git restore'
abbr -a grst 'git restore --staged'

# Logs
abbr -a glog 'git log --oneline --graph --decorate --all'

# Cleanup
abbr -a gclean 'git clean -fd'
abbr -a gpristine 'git reset --hard && git clean -fd'

# Rebase & merge
abbr -a grb 'git rebase'
abbr -a grbi 'git rebase -i'
abbr -a gm  'git merge'
abbr -a gma 'git merge --abort'
