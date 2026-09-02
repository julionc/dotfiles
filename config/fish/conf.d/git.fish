# git

# abbr --add --command git --regex br     -- git-br     branch
abbr --add --command git --regex ci     -- git-ci     commit -m
abbr --add --command git --regex co     -- git-co     checkout
abbr --add --command git --regex st     -- git-st     status -sb
abbr --add --command git --regex ws     -- git-ws     workspace

# git

abbr -a ga  'git add'
abbr -a gaa 'git add .'
abbr -a gci 'git commit -m'
abbr -a gca 'git commit --amend'
abbr -a gcl 'git clone'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a giff 'git diff'
abbr -a gds 'git diff --staged'
abbr -a gl  'git pull'
abbr -a glr 'git pull --rebase'
abbr -a glo 'git log --oneline'
abbr -a gp  'git push'
abbr -a gpf 'git push --force-with-lease'
abbr -a gst 'git status -sb'
abbr -a gss 'git stash'
abbr -a gsp 'git stash pop'
abbr -a gsw 'git switch'
abbr -a gswc 'git switch -c'
abbr -a grb 'git rebase'
abbr -a grbi 'git rebase -i'
abbr -a gl  'git pull'
abbr -a gp  'git push'
abbr -a gpf 'git push --force-with-lease'
abbr -a gt  'git tag'
abbr -a gtl 'git tag --list'
abbr -a gpo 'git push origin HEAD'
abbr -a gpl 'git pull origin HEAD'
abbr -a grh 'git reset HEAD'
abbr -a grs 'git restore'
abbr -a grst 'git restore --staged'
abbr -a gst  'git status -sb'
abbr -a gws  'git workspace'

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
