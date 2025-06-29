# darwin specific fixes / alignments

# Darwin ls command does not support --color option.
alias ls=' ls'
#alias myls=' ls'
# use gnu ls instead of bsd ls
alias myls=' gls -C -F -h --color=always'

# The OSX way for ls colors.
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
