# docker
alias dport='docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a'

# common
alias tldr='tldr'

# Magento2
alias m2='php bin/magento'
alias m2up='m2 setup:upgrade && m2 setup:di:compile && m2 cache:flush'
alias m2cf='m2 cache:flush'
alias m2cc='m2 cache:clean'
alias m2ir="m2 index:reindex"
alias m2static='m2 setup:static-content:deploy -f && m2 setup:static-content:deploy -f --area="adminhtml" && m2 c:f'
alias n98-magerun2='./n98-magerun2.phar'

# yt-dlp
alias ytd='yt-dlp'
alias yta='yt-dlp -x --audio-quality 0 '
alias yt2mp3='yt-dlp -x --audio-format mp3'
alias yt2mp4='yt-dlp --format mp4'