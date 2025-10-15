#!/bin/sh
#
# Fish
#
# This installs some of the common dependencies needed (or at least desired)
# using Fish shell.

# Check for Fish shell
if test ! "$(which fish)"
then
  echo "  Installing Fish shell for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    brew install fish
    sudo bash -c 'echo $(which fish) >> /etc/shells'
    chsh -s "$(which fish)"

    # install Fisher
    export XDG_CONFIG_HOME="$HOME/.config"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish --create-dirs -sLo "$XDG_CONFIG_HOME"/fish/functions/fisher.fish > /dev/null
    fish -c 'fisher install jorgebucaran/fisher'
    fish -c 'fisher update'
  fi

fi

exit 0
