# dotfiles

My config files for fish, git and so on

# Mac OSX

Xcode

[Homebrew — The missing package manager for OS X](http://brew.sh)

[Homebrew Cask](https://github.com/Homebrew/homebrew-cask)

[Homebrew Cask Versions](https://github.com/Homebrew/homebrew-cask-versions)

[Mac App Store command line interface](https://github.com/mas-cli/mas)

```
brew install mas
brew bundle
```
## Shell

### Fish

```
brew install fish
```

You will need to add:
```
/usr/local/bin/fish
```
to /etc/shells.

Then run:
```
chsh -s /usr/local/bin/fish
```
to make fish your default shell.
