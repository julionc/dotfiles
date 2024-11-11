set fish_greeting

# Environment variables - https://fishshell.com/docs/current/cmds/set.html
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -x GPG_TTY (tty)

if status is-interactive
    source $XDG_CONFIG_HOME/fish/abbreviations.fish

    # https://github.com/starship/starship#fish
    starship init fish | source

    # https://github.com/ajeetdsouza/zoxide
    zoxide init fish | source

    if test -e $HOME/.secrets/config.fish.local
        source $HOME/.secrets/config.fish.local
    end
end

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# vim: set filetype=fish:
