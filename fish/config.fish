set fish_greeting

# iTerm integration
if test (uname) = 'Darwin'
  source "$HOME/.config/fish/iterm2_shell_integration.fish"
  set PATH $PATH "$HOME/.iterm2"
end

# abbv
abbr -a gst git status
#abbr -a giff git diff
abbr -a giff gd
abbr -a squash git rebase -i HEAD~
abbr -a vim nvim
abbr -a cat bat
abbr -a man tldr
abbr -a web python -m SimpleHTTPServer 8000

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

set -x GPG_TTY (tty)

# StarShip
starship init fish | source

# asdf
source /usr/local/opt/asdf/asdf.fish

# vim: set filetype=fish:
