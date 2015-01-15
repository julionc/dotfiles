
export EDITOR=vim
export VISUAL=subl

# rbenv
if [ -d "$HOME/.rbenv" ] ; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

if [[ -s "$HOME/.nvm/nvm.sh" ]]; then
	source "$HOME/.nvm/nvm.sh"
	export NVM_DIR=~/.nvm
fi


#[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh  # This loads NVM

#source $(brew --prefix nvm)/nvm.sh
#export NVM_DIR=~/.nvm

