set -gx XDG_CONFIG_HOME ~/.config
set -gx EDITOR nvim
set -gx BROWSER firefox
set -gx DIFFPROG delta
set -gx TERM xterm-256color
set -x GPG_TTY (tty)

# fzf
set -gx FZF_CTRL_T_COMMAND 'fd --type f --type d --hidden --exclude ".git/"'
set -gx FZF_DEFAULT_COMMAND 'fd --type f --type d --hidden --exclude ".git/"'
set -gx FZF_ALT_C_COMMAND 'fd --type d --hidden --exclude ".git/"'

# go
set -g GOPATH $HOME/go
# set -gx GOBIN $GOPATH/bin
set -gx PATH $GOPATH/bin $PATH

set -gx BUN_INSTALL $HOME/.bun
set -gx PNPM_HOME $HOME/.local/share/pnpm

# gws
set -gx GIT_WORKSPACE $HOME/projects

# Local secrets
if test -f "$HOME/.secrets/config.local.fish"
    source "$HOME/.secrets/config.local.fish"
end
