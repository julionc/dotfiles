# disable `gamed` daemon
launchctl unload /System/Library/LaunchAgents/com.apple.gamed.plist
defaults write com.apple.gamed Disabled -bool true
