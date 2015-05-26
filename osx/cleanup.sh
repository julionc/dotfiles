#!/usr/bin/env bash
# Author: @vinkla
# Taken from at https://github.com/vinkla/dotfiles/blob/master/bin/cleanup

print() { echo -e "\e[0;33m${1}\e[0m"; }

# Ask for the administrator password upfront
sudo -v

print 'Empty the Trash on all mounted volumes and the main HDD...'
sudo rm -rfv /Volumes/*/.Trashes
sudo rm -rfv ~/.Trash

print 'Clear System Log Files...'
sudo rm -rfv /private/var/log/asl/*.asl
sudo rm -rfv /Library/Logs/DiagnosticReports/*
sudo rm -rfv /Library/Logs/Adobe/*
rm -rfv ~/Library/Containers/com.apple.mail/Data/Library/Logs/Mail/*
rm -rfv ~/Library/Logs/CoreSimulator/*

print 'Cleanup iOS Applications...'
rm -rfv ~/Music/iTunes/iTunes\ Media/Mobile\ Applications/*

print 'Remove iOS Device Backups...'
rm -rfv ~/Library/Application\ Support/MobileSync/Backup/*

print 'Cleanup XCode Derived Data and Archives...'
rm -rfv ~/Library/Developer/Xcode/DerivedData/*
rm -rfv ~/Library/Developer/Xcode/Archives/*

print 'Cleanup Homebrew Cache...'
brew cleanup --force -s
rm -rfv /Library/Caches/Homebrew/*
brew tap --repair
