
export EDITOR=vim
export VISUAL=subl

# rbenv
if [ -d "$HOME/.rbenv" ] ; then
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
fi

#[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh  # This loads NVM

source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm

