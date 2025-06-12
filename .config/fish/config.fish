set fish_greeting
set -gx XDG_CONFIG_HOME ~/.config
set -gx EDITOR nvim
set -gx TERM xterm-256color
set -x GPG_TTY (tty)

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

if status is-interactive
    source $XDG_CONFIG_HOME/fish/abbreviations.fish
    source $XDG_CONFIG_HOME/fish/alias.fish

    if test -e $HOME/.secrets/config.fish.local
        source $HOME/.secrets/config.fish.local
    end
end

# vim: set filetype=fish:
