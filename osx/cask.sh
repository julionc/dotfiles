#!/usr/bin/env bash

# Music
brew cask install spotify
brew cask install spotifree

# Programming
brew cask install github
brew cask install iterm2
brew cask install macvim
#brew cask install postgres
#brew cask install pgadmin3
#brew cask install robomongo
#brew cask install rubymine
brew cask install sourcetree
#brew cask install sublime-text
brew cask install sequel-pro
brew cask install visual-studio-code

# Productivity
brew cask install evernote
#brew cask install gitter
brew cask install slack
#brew cask install spectacle

# Everything Else
#brew cask install adobe-creative-cloud
brew cask install caffeine
#brew cask install cyberduck
brew cask install dropbox
brew cask install google-chrome
brew cask install gyazo
brew cask install jdownloader
brew cask install rescuetime
brew cask install skype
brew cask install skitch
brew cask install the-unarchiver
#brew cask install transmission
brew cask install tunnelbear

# Games
#brew cask install steam
brew cask install minecraft
#brew cask install teeworlds

# Virtualization
#brew cask install virtualbox
#brew cask install vagrant
#brew cask install chefdk

# Remove outdated versions from the Cellar
brew cleanup
brew cask cleanup
