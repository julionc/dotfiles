#!make
.PHONY: all setup clean install dump help

help: ## Show available commands
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

all: clean dump ## Clean and dump brew bundle

setup: ## Run macOS setup script
	sh setup.sh

clean: ## Clean up brew cache
	brew cleanup

dump: ## Dump Brewfile
	brew bundle dump --force --no-vscode

install: ## Install from Brewfile
	brew bundle
