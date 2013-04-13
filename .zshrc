# Path to your ZSH Custom folder configuration.
ZSH=$HOME/.dotfiles/zsh

# Set name of the ZSH Framework to load.
# Look in ~/.dotfiles/zsh

#ZSH_FRAMEWORK="oh-my-zsh"
ZSH_FRAMEWORK="prezto"

source $ZSH/$ZSH_FRAMEWORK/.zshrc

# Customize to your needs...
for conf (~/.dotfiles/zsh/conf.d/*(N.)) source $conf
#for func (~/.dotfiles/zsh/func.d/*(N.)) autoload -U ${func:t}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# zsh_private
if [ -e "$HOME/.zsh_private" ]; then
  source "$HOME/.zsh_private"
fi

# vim: set ft=zsh:
