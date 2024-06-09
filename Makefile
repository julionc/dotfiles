DIR="${HOME}/dotfiles"

all:
	@echo "Run things individually!"

fish:
	@ln -nsf $(DIR)/fish ~/.config/fish
