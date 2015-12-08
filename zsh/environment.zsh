export EDITOR=vim
export VISUAL=vim

# rbenv
if [ -d "$HOME/.rbenv" ] ; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

# nvm
if [[ -d "$HOME/.nvm" ]]; then
	if [[ "$(uname)" == "Darwin" ]]
  then
    export NVM_PATH=$(brew --prefix nvm)
  else
    export NVM_PATH="$HOME/.nvm"
  fi

  export NVM_DIR=~/.nvm
  source "$NVM_PATH/nvm.sh"
fi

# jenv
if [[ -s "$HOME/.jenv" ]]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi
