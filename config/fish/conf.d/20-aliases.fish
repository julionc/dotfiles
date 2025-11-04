# docker
alias dport='docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a'
alias drmcons='docker rm "$(docker ps -a -q)"'
alias dlogs='docker logs --follow --tail 100'

# yt-dlp
alias ytd='yt-dlp'
alias yta='yt-dlp -x --audio-quality 0 '
alias yt2mp3='yt-dlp -x --audio-format mp3'
#alias yt2mp3='yt-dlp -f bestaudio -o '%(title)s.%(ext)s' "$@"'
alias yt2mp4='yt-dlp --format mp4'
