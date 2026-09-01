
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

# abbv : pacman
if type -q pacman
  abbr -a paci sudo pacman --noconfirm -S
  abbr -a pacif sudo pacman -Si
  abbr -a pacl sudo pacman -Qe
  abbr -a pacs sudo pacman -Ss
  abbr -a pacx sudo pacman -R
end

# abbv : yay
if type -q yay
  abbr -a yayi yay --noconfirm --batchinstall -S
  abbr -a yayif yay -Si
  abbr -a yayl yay -Qqem
  abbr -a yays yay -Ss
  abbr -a yayx yay --noconfirm --batchinstall -R
end

# git workspace
abbr -a gws git-workspace

# yt-dlp
abbr -a yt2mp3 'yt-dlp -f bestaudio --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" --no-playlist'
abbr -a yt2mp4 'yt-dlp -f "bv*[vcodec^=avc1]+ba[acodec^=mp4a]/b[ext=mp4]" --merge-output-format mp4 --no-playlist'

# docker
abbr -a dport 'docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a'
abbr -a drmcons 'docker rm "$(docker ps -a -q)"'
abbr -a dlogs 'docker logs --follow --tail 100'
