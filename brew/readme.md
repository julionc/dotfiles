# Mac OSX

## Install Xcode

```properties
# Install xcode
xcode-select --install
```

## Homebrew

Install Homebrew — The missing package manager for OS X

```properties
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```

- [Homebrew — The missing package manager for OS X](http://brew.sh)

- [Homebrew Cask](https://github.com/Homebrew/homebrew-cask)

- [Homebrew Cask Versions](https://github.com/Homebrew/homebrew-cask-versions)

### [Mac App Store command line interface](https://github.com/mas-cli/mas)

```properties
brew install mas
```

## Brew Bundle

```properties
brew bundle install
```

## Using Brew Bundle to Backup and Restore Mac App Store

```properties
brew bundle dump --force
# or
brew bundle dump --describe --force
```

### Install or Restore Apps

```properties
brew bundle
```
