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
brew install autojump
brew install ctags
brew install git
brew install git-extras
brew install heroku-toolbelt
brew install htop-osx
brew install nmap
brew install nvm
brew install rename
brew install ranger
brew install rbenv
brew install ruby-build
brew install tree
brew install vim
brew install wireshark --with-qt
brew install zsh

# Install Binary apps with homebrew-binary
brew tap homebrew/binary
brew install docker
brew install packer

# Install Native apps with Brew Cask
brew install caskroom/cask/brew-cask

# Install Alternative versions of Cask
brew tap caskroom/versions

# Install NTFS support
#brew install homebrew/fuse/ntfs-3g
#brew install Caskroom/cask/osxfuse

# Syslink
brew linkapps

# Remove outdated versions from the Cellar
brew cleanup
