# dotfiles

Config files for fish, git, personal toolbox and so on.

## Install

Run:

```sh
git clone https://github.com/julionc/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make
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
