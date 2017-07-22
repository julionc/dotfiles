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
export GOROOT=/usr/local/bin/go
export PATH=$PATH:$GOROOT/bin

PATH=$PATH:/usr/local/opt/go/libexec/bin

# Chromium && CEF
export DEPOT_TOOLS=~/CEF/depot_tools
export PATH=$PATH:$DEPOT_TOOLS

# SlimerJS
export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox

# Themekit
export PATH=~/.themekit:$PATH
