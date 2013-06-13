#!/usr/bin/env bash

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
#brew tap homebrew/dupes
#brew install homebrew/dupes/grep

# Install Packages
brew install ack
brew install git
brew install heroku-toolbelt
brew install rename
brew install tree
brew install ctags

# Install Native apps with Brew Cask
brew tap phinze/homebrew-cask
brew install brew-cask

#brew cask install virtualbox
#brew cask install dropbox
brew cask install skype

brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install iterm2
brew cask install macvim
brew cask install sublime-text
brew cask install alfred

# Remove outdated versions from the cellar
brew cleanup
