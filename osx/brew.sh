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
brew install ctags
brew install git
brew install git-extras
brew install heroku-toolbelt
brew install nmap
brew install rename
brew install tree
brew install zsh
brew install rbenv
brew install ruby-build

# RSS Readers
brew install quiterss
brew install vienna

# Install Binary apps with homebrew-binary
brew tap homebrew/binary
brew install docker
brew install packer

# Remove outdated versions from the Cellar
brew cleanup
