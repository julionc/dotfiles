abbr -a myip 'curl http://ifconfig.me/ip'

# View HTTP traffic
abbr -a sniff "sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
abbr -a httpdump "sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""