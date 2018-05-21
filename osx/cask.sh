#!/usr/bin/env bash

# Programming
brew cask install github
brew cask install iterm2
brew cask install macvim
brew cask install phpstorm
brew cask install rubymine
brew cask install sourcetree
brew cask install sequel-pro
brew cask install visual-studio-code

# Productivity
brew cask install evernote
brew cask install rescuetime
brew cask install slack

# Everything Else
brew cask install adobe-creative-cloud
brew cask install caffeine
brew cask install cyberduck
brew cask install dropbox
brew cask install jumpshare
brew cask install skitch
brew cask install spotify
brew cask install the-unarchiver
brew cask install transmission
brew cask install tunnelbear

# Virtualization
brew cask install virtualbox
brew cask install vagrant
# brew cask install chefdk

# Remove outdated versions from the Cellar
brew cleanup
brew cask cleanup
