VIMRC  := ~/.vimrc
NVIMRC := ~/.config/nvim/init.vim
NVIM_PATH = ~/.config/nvim

all: install plug

install:
	@echo "\033[1;34m==>\033[0m Creating symlinks"; \
		[ ! -f $(VIMRC) ] && ln -sf ~/.vim/init.vim $(VIMRC) && echo "\033[32m[✔]\033[0m Successfully installed $(VIMRC) for Vim"; \
		[ ! -f $(NVIMRC) ] && ln -sf ~/.vim ~/.config/nvim && echo "\033[32m[✔]\033[0m Successfully installed $(NVIMRC) for NeoVim"

uninstall:
	@echo "\033[1;34m==>\033[0m Uninstall symlinks"; \
		[ -f $(VIMRC) ] && rm -rf $(VIMRC) && echo "\033[32m[✔]\033[0m Successfully removed $(VIMRC) for Vim"; \
		[ -d $(NVIM_PATH) ] && rm -rf $(NVIM_PATH) && echo "\033[32m[✔]\033[0m Successfully removed $(NVIM_PATH) for NeoVim"

plug:
	@echo "\033[1;34m==>\033[0m Installing vim-plug and VIM plugins"; \
		nvim +PlugInstall +qall
		@echo "\033[32m[✔]\033[0m Successfully installed plugins for NeoVim"; \

.PHONY: install uninstall plug
