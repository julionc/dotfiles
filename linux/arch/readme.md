## Archlinux

## Generate Backup (dump/restore packages)


### Dump packages

Backup packages from official repository

```bash
sudo pacman -Qqen > pkglist-repo.txt
```

Backup packages from arch user repository (AUR)

```bash
sudo pacman -Qqem > pkglist-aur.txt
```
