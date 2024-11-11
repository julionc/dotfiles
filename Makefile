DIR="${HOME}/.dotfiles"
CONFIG_BACKUP_DIR="${HOME}/.config-bkp"
CONFIG_DIR="${HOME}/.config"

COLOUR_GREEN=\033[0;32m
COLOUR_RED=\033[0;31m
COLOUR_BLUE=\033[0;34m
END_COLOUR=\033[0m

.PHONY : arch mac clean all

all:
	@echo "Run things individually!"

.ONESHELL:
rm_config_backup:
	if [ -d "${CONFIG_BACKUP_DIR}" ]; then \
		rm -r ${CONFIG_BACKUP_DIR}; \
	fi \

.ONESHELL:
mkdir_config:
	if [ -d "${CONFIG_DIR}" ]; then \
		rm -r ${CONFIG_DIR}; \
		mv -R ${CONFIG_DIR} ${CONFIG_BACKUP_DIR}; \
		mkdir -p ${CONFIG_DIR}; \
	fi \

clean: rm_config_backup mkdir_config

fresh:
	@echo "$(COLOUR_RED)Cleaning config directory...$(END_COLOUR)"
	$(MAKE) clean

arch:
	$(MAKE) fresh
	@echo "$(COLOUR_GREEN)Creating symbolic links...$(END_COLOUR)"
	ln -nsf $(DIR)/fish ~/.config/fish
	ln -nsf $(DIR)/hypr ~/.config/hypr
	ln -nsf $(DIR)/kitty ~/.config/kitty

mac:
	$(MAKE) fresh
	@echo "$(COLOUR_GREEN)Creating symbolic links...$(END_COLOUR)"
	ln -nsf $(DIR)/fish ~/.config/fish
