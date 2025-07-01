.PHONY: clear dump install

clear:
	rm -rf *.txt

dump: clear
	sudo pacman -Qqen >> pkglist-repo.txt
	sudo pacman -Qqem >> pkglist-aur.txt

install:
	grep -vE '^\s*#|^\s*$' pkglist-repo.txt | sudo pacman -S -
	grep -vE '^\s*#|^\s*$' pkglist-aur.txt | yay --noconfirm --batchinstall -S -
