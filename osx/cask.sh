#!/usr/bin/env bash

# Install Native apps with Brew Cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Programming
brew cask install iterm2
brew cask install macvim
brew cask install sublime-text
brew cask install postgres
brew cask install robomongo

# Virtualization
brew cask install virtualbox
brew cask install vagrant

# Productivity
brew cask install alfred

# Everything Else
brew cask install dropbox
brew cask install google-chrome
#brew cask install google-chrome-canary
brew cask install jdownloader
brew cask install transmission
brew cask install skype
brew cask install vlc

# Remove outdated versions from the Cellar
brew cleanup
