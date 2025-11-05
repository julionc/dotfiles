# docker
alias dport='docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a'
alias drmcons='docker rm "$(docker ps -a -q)"'
alias dlogs='docker logs --follow --tail 100'

