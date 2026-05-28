# dotfiles

Config files for fish, git, personal toolbox and so on.

## Requeriments

Install dependencies: git, curl, stow

## Install

Run:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/julionc/dotfiles/main/bootstrap.sh)"
```

## Shell

### Fish

```sh
brew install fish
sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)
```

Add brew binaries in fish path run the command:
```sh
fish_add_path /opt/homebrew/bin
```
