# disable `gamed` daemon
launchctl unload /System/Library/LaunchAgents/com.apple.gamed.plist
defaults write com.apple.gamed Disabled -bool true

# Keystone Fetch / ksfetch - once a week
defaults write com.google.Keystone.Agent checkInterval 604800
