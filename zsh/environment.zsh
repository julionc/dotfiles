export EDITOR=vim
export VISUAL=vim

# rbenv
if [ -d "$HOME/.rbenv" ] ; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

# nvm
if [[ -s "$HOME/.nvm" ]]; then
	if [[ "$(uname)" == "Darwin" ]]; then
		export NVM_DIR=$(brew --prefix nvm)
		source "$NVM_DIR/nvm.sh"
	else
		export NVM_DIR="$HOME/.nvm"
		source "$NVM_DIR/nvm.sh"
	fi
fi

# jenv
if [[ -s "$HOME/.jenv" ]]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi

# GoLang
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
