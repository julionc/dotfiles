
# common
# abbr -a cat bat
abbr -a man tldr
abbr -a vim nvim
abbr -a web python -m http.server 8000
abbr -a which "type -a"

# eza
if type -q eza
abbr -a ls 'eza --color=always --group-directories-first'
abbr -a ll 'eza -lF --group-directories-first'
abbr -a la 'eza -laF --group-directories-first'
abbr -a lsd 'eza -d */'
abbr -a lt 'eza -T --level=2'
end

# git
abbr -a gst git status -sb
abbr -a giff git diff
abbr -a squash git rebase -i HEAD~
abbr -a main git checkout main

# abbv : homebrew & homebrew-cask
if type -q brew
abbr -a brewi brew install
abbr -a brewl brew list
abbr -a brews brew search
abbr -a brewu brew update
abbr -a brewx brew uninstall
abbr -a caski brew install --cask
abbr -a caskl brew list --cask
abbr -a caskx brew uninstall --cask
end
