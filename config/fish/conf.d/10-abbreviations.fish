
# common
# abbr -a cat bat
abbr -a man tldr
abbr -a vim nvim
abbr -a web python -m http.server 8000
abbr -a which "type -a"

# abbv : homebrew & homebrew-cask
if type -q brew
    abbr -a brewi brew install
    abbr -a brewif brew info
    abbr -a brewl brew list
    abbr -a brews brew search
    abbr -a brewu brew update
    abbr -a brewx brew uninstall
    abbr -a caski brew install --cask
    abbr -a caskl brew list --cask
    abbr -a caskx brew uninstall --cask
end

# abbv : pacman & yay
if type -q pacman
    abbr -a paci sudo pacman --noconfirm -S
    abbr -a pacif sudo pacman -Si
    abbr -a pacl sudo pacman -Qe
    abbr -a pacs sudo pacman -Ss
    abbr -a pacx sudo pacman -R
    # abbv : yay
    abbr -a yayi yay --noconfirm --batchinstall -S
    abbr -a yayif yay -Si
    abbr -a yayl yay -Qqem
    abbr -a yays yay -Ss
    abbr -a yayx yay --noconfirm --batchinstall -R
end

# git
# abbr --add --command git --regex br     -- git-br     branch
abbr --add --command git --regex ci     -- git-ci     commit -m
abbr --add --command git --regex co     -- git-co     checkout
abbr --add --command git --regex st     -- git-st     status -sb
