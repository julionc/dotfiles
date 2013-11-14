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
brew install zsh
brew install ruby-build
brew install rbenv

# Remove outdated versions from the Cellar
brew cleanup
