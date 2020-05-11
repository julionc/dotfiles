set fish_greeting

# iTerm integration
if test (uname) = 'Darwin'
  source "$HOME/.config/fish/iterm2_shell_integration.fish"
  set PATH $PATH "$HOME/.iterm2"
end

# abbv
abbr -a gst git status
abbr -a giff git diff
abbr -a j z
abbr -a vim nvim
abbr -a cat bat
abbr -a man tldr
abbr -a web python -m SimpleHTTPServer 8000
# abbv : homebrew & homebrew-cask
abbr -a brewi brew install
abbr -a brewl brew list
abbr -a brews brew search
abbr -a brewx brew uninstall
abbr -a caski brew cask install
abbr -a caskl brew cask list
abbr -a caskx brew cask uninstall

# abbv : youtube-dl
alias ytd='youtube-dl'
alias yta='youtube-dl -x --audio-quality 0 '
alias yt2mp3='youtube-dl -x --audio-format mp3'
alias yt2mp4='youtube-dl --format mp4 --max-quality mp4'

# StarShip
starship init fish | source

# vim: set filetype=fish:
