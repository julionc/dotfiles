#!make
.PHONY: all setup clean install dump help

help: ## Show available commands
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

all: clean dump ## Clean and dump package lists

setup: ## Run Arch setup script
	sh setup.sh

clean: ## Remove package list files
	rm -f pkglist-repo.txt pkglist-aur.txt

dump: ## Export current package lists (repo + AUR)
	sudo pacman -Qqen > pkglist-repo.txt
	sudo pacman -Qqem > pkglist-aur.txt

install: ## Install packages from saved lists
	grep -vE '^\s*#|^\s*$$' pkglist-repo.txt | sudo pacman -S --
	grep -vE '^\s*#|^\s*$$' pkglist-aur.txt | yay --noconfirm --batchinstall -S --
