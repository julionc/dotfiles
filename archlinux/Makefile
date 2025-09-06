.PHONY: all clean install

all: clean dump

clean:
	rm -rf *.txt

dump:
	sudo pacman -Qqen > pkglist-repo.txt
	sudo pacman -Qqem > pkglist-aur.txt

install:
	grep -vE '^\s*#|^\s*$$' pkglist-repo.txt | sudo pacman -S -
	grep -vE '^\s*#|^\s*$$' pkglist-aur.txt | yay --noconfirm --batchinstall -S -
