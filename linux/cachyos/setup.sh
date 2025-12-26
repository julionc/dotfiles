#!/usr/bin/env bash
#
# CachyOS Pacman & AUR
#
# This installs some of the common dependencies needed (or at least desired)
# using Pacman & AUR.

set -e

if [ "$(uname)" != "Linux" ]; then
  echo "Not Linux — skipping Linux setup."
  exit 0
fi

if ! grep -qi '^ID=cachyos' /etc/os-release; then
  echo "This script only runs on CachyOS Linux."
  exit 0
fi

echo "🔄 Updating the system..."
sudo pacman -Syu --noconfirm

if ! command -v yay &>/dev/null; then
  echo "📦 Installing YAY (AUR helper)..."

  sudo pacman -S --needed --noconfirm git base-devel

  tmpdir=$(mktemp -d)
  git clone https://aur.archlinux.org/yay.git "$tmpdir/yay"
  (cd "$tmpdir/yay" && makepkg -si --noconfirm)
  rm -rf "$tmpdir"

  echo "✅ YAY installed successfully."
else
  echo "✅ YAY already installed."
fi

exit 0
