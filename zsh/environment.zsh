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

# GoLang
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec/
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# git-extras
if [[ -s /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh ]]; then
  source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh
fi

# Themekit
export PATH=~/.themekit:$PATH

# zsh-completions
# fpath=(/usr/local/share/zsh-completions $fpath)
export PATH=/usr/local/share/zsh-completions:$PATH
