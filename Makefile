CONFIG_DIR = ~/.config
BACKUP_DIR = ~/.config-bkp

TITLE=\033[1;34m==>\033[0m
ENTRY_OK=\033[32m[✔]\033[0m

MAC_CONFIG_FOLDERS := fish
LINUX_CONFIG_FOLDERS := fish kitty hypr

UNAME := $(shell uname)

all: backup install

backup:
	@echo "Backing up $(CONFIG_DIR) to $(BACKUP_DIR)..."
	@if [ -d $(BACKUP_DIR) ]; then \
		echo "The backup directory already exists. Deleting..."; \
		rm -rf $(BACKUP_DIR); \
	fi; \
	mv $(CONFIG_DIR) $(BACKUP_DIR); \
	mkdir -p $(CONFIG_DIR); \
	echo "Backup done."

install:
	@echo "$(TITLE) $(UNAME) Setup"
	@if [ "$(UNAME)" = "Darwin" ]; then \
		CONFIG_FOLDERS="$(MAC_CONFIG_FOLDERS)"; \
	else \
		CONFIG_FOLDERS="$(LINUX_CONFIG_FOLDERS)"; \
	fi; \
	echo "Installing symlinks for:"; \
	for folder in $$CONFIG_FOLDERS; do \
		$(MAKE) create_symlink folder=$$folder; \
	done

create_symlink:
	@echo "$(ENTRY_OK) $(folder)"
	@ln -nsf $(PWD)/$(folder) $(CONFIG_DIR)/$(folder)

.PHONY: backup install
