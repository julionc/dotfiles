# docker
alias dport='docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a'
alias drmcons='docker rm "$(docker ps -a -q)"'
alias dlogs='docker logs --follow --tail 100'

# common
alias tldr='tldr'
alias t='ctags -R'

# yt-dlp
alias ytd='yt-dlp'
alias yta='yt-dlp -x --audio-quality 0 '
alias yt2mp3='yt-dlp -x --audio-format mp3'
alias yt2mp4='yt-dlp --format mp4'

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