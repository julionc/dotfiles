set fish_greeting

# abbv
abbr -a gst git status
#abbr -a giff git diff
abbr -a giff gd
abbr -a squash git rebase -i HEAD~
#abbr -a vim nvim
#abbr -a cat bat
abbr -a man tldr
abbr -a web python -m http.server 8000

# abbv : homebrew & homebrew-cask
abbr -a brewi brew install
abbr -a brewl brew list
abbr -a brews brew search
abbr -a brewu brew update
abbr -a brewx brew uninstall
abbr -a caski brew install --cask
abbr -a caskl brew list --cask
abbr -a caskx brew uninstall --cask

# abbv : youtube-dl
alias ytd='youtube-dl'
alias yta='youtube-dl -x --audio-quality 0 '
alias yt2mp3='youtube-dl -x --audio-format mp3'
alias yt2mp4='youtube-dl --format mp4'

# magento2
alias m2='php bin/magento'
alias m2up='m2 setup:upgrade && m2 setup:di:compile && m2 cache:flush'

# Cache
alias m2cf='m2 cache:flush'
alias m2cc='m2 cache:clean'
alias m2ir="m2 index:reindex"
alias m2static='m2 setup:static-content:deploy -f --area="frontend" es_PE --theme Movistar/TelefonicaHispan && m2 setup:static-content:deploy -f --area="adminhtml" && m2 c:f'
alias n98-magerun2='./n98-magerun2.phar'

set -x GPG_TTY (tty)

# StarShip
starship init fish | source

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# vim: set filetype=fish:
