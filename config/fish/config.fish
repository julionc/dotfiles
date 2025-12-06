# If not running interactively, don't do anything
status is-interactive; or exit

set -g fish_greeting

set -gx XDG_CONFIG_HOME ~/.config
set -gx EDITOR nvim
set -gx TERM xterm-256color
set -x GPG_TTY (tty)

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# PNPM
set -gx PNPM_HOME $HOME/.local/share/pnpm
set -gx PATH $PNPM_HOME $PATH

set -gx GIT_WORKSPACE $HOME/projects

# Added by LM Studio CLI (lms)
set -gx PATH $PATH $HOME/.lmstudio/bin
# End of LM Studio CLI section

# Local secrets
if test -f "$HOME/.secrets/config.local.fish"
    source "$HOME/.secrets/config.local.fish"
end

# Added by Antigravity
fish_add_path $HOME/.antigravity/antigravity/bin

# vim: set filetype=fish:
