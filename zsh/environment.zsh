
export EDITOR=vim
export VISUAL=vim

# rbenv
if [ -d "$HOME/.rbenv" ] ; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

# NVM
if [[ -s "$HOME/.nvm" ]]; then
	if [[ "$(uname)" == "Darwin" ]]; then
		source "/usr/local/opt/nvm/nvm.sh"
		export NVM_DIR=~/.nvm
	else
		source "$HOME/.nvm/nvm.sh"
		export NVM_DIR=~/.nvm
	fi
fi
