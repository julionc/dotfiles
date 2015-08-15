
alias myip='curl http://ifconfig.me/ip'
alias myip2='curl -s https://secure.internode.on.net/webtools/showmyip\?textonly=1'

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
