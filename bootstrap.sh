#!/usr/bin/env bash
#
# Run all dotfiles installers.

# ── Rooting  ────────────────────────────────────────────────────────

export HISTIGNORE='*sudo -S*'

set -euo pipefail

read -rs -p "Password: " SUDO_PASSWORD
echo "${SUDO_PASSWORD}" | sudo -S -v &>/dev/null || {
  echo "Error: Invalid sudo password or no sudo privileges."
  exit 1
}

# ── Dotfiles Installer ─────────────────────────────────────────────

REPO_URL="https://github.com/julionc/dotfiles.git"
DOTFILES_DIR="${HOME}/.dotfiles"
DOTFILES_ROOT=$(pwd -P)
PLATFORM="$(uname -s | tr '[:upper:]' '[:lower:]')"

# ── Colors ─────────────────────────────────────────────────────────

SWITCH="\033["
RED="${SWITCH}0;31m"
GREEN="${SWITCH}0;32m"
YELLOW="${SWITCH}1;33m"
NORMAL="${SWITCH}0m"

# ── UI Helpers ─────────────────────────────────────────────────────

info () {
  printf "\r${YELLOW}⚙ $1${NORMAL}\n"
}

success () {
  printf "\r${GREEN}✓ $1${NORMAL}\n"
}

error () {
  printf "\r${RED}✖ $1${NORMAL}\n"
  exit 1
}

suggestion () {
  [[ "$PLATFORM" == "linux" ]] && echo "→ sudo apt install $1" || echo "→ brew install $1"
}

# ── Run Setups ─────────────────────────────────────────────────────

configure_system () {
  if [[ -f .setup ]]; then
    info "Setup already completed, skipping."
    return
  fi

  info "Running system setup for the current platform..."

  if [[ "$PLATFORM" == "darwin" && -d osx ]]; then
    make -C osx setup
  elif [[ "$PLATFORM" == "linux" && -d linux/archlinux ]]; then
    make -C linux/archlinux setup
  elif [[ "$PLATFORM" == "linux" && -d linux/cachyos ]]; then
    make -C linux/cachyos setup
  fi

  touch .setup
  success "Setup completed successfully"
}

# ── Run Installers ─────────────────────────────────────────────────

install_packages () {
  info "Running installers..."

  if [[ "$PLATFORM" == "darwin" && -d osx ]]; then
    make -C osx install
  elif [[ "$PLATFORM" == "linux" && -d linux/archlinux ]]; then
    make -C linux/archlinux install
  elif [[ "$PLATFORM" == "linux" && -d linux/cachyos ]]; then
    make -C linux/cachyos install
  fi

  success "Installers complete successfully"
}

# ── Dependency Check ───────────────────────────────────────────────

DEPENDENCIES=(git stow)

check_dependencies () {
  info "Checking required dependencies..."

  for dep in "${DEPENDENCIES[@]}"; do
    # if ! command -v "$dep" > /dev/null; then
    if ! command -v "$dep" > /dev/null 2>&1; then
      error "$dep is not installed."
      suggestion "$dep"
    fi
  done

  success "All dependencies are installed"
}

# ── Git Clone ───────────────────────────────────────────────

git_clone_dotfiles() {
  if [[ -d "$DOTFILES_DIR/.git" ]]; then
    info "Updating dotfiles..."
    git -C "$DOTFILES_DIR" pull --rebase
  else
    info "Cloning dotfiles..."
    git clone "$REPO_URL" "$DOTFILES_DIR"
  fi
}

# ── Git Config Setup ───────────────────────────────────────────────

setup_gitconfig () {
  if [[ ! -f home/.gitconfig.local ]]; then
    info "Setting up Git local configuration..."

    git_credential="cache"
    [[ "$PLATFORM" == "darwin" ]] && git_credential="osxkeychain"

    printf " - GitHub author name: "
    read -r git_authorname
    printf " - GitHub email: "
    read -r git_authoremail
    printf " - GPG key (optional): "
    read -r git_gpgkey

    sed -e "s/AUTHORNAME/$git_authorname/g" \
        -e "s/AUTHOREMAIL/$git_authoremail/g" \
        -e "s/SIGNINGKEY/$git_gpgkey/g" \
        -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" \
        home/.gitconfig.local.example > home/.gitconfig.local

    success ".gitconfig.local has been generated"
  else
    info ".gitconfig.local already exists"
  fi
}

# ── Run Git submodule ───────────────────────────────────────────────

update_git_submodules () {
  info "Updating git submodules..."

  git submodule update --init --recursive
  git submodule foreach --recursive git pull origin main || true

  success "Git Submodules updated"
}

# ── Dotfiles Symlinking ────────────────────────────────────────────

stow_dotfiles () {
  info "Linking dotfiles using stow..."

  stow -v -t "$HOME/.config" config --adopt
  stow -v -t "$HOME" home --adopt

  success "Dotfiles linked successfully"
}

# ── Configure User Shell ────────────────────────────────────────────

configure_user_shell () {
  info "Configuring user shell..."

  local shell_path=$(which fish 2>/dev/null)
  if [[ -n "$shell_path" ]]; then
    sudo chsh -s "$shell_path" "${USER}"
    success "Shell changed to Fish"

    if [[ "$PLATFORM" == "darwin" ]]; then
      # fish_add_path /opt/homebrew/bin
      # echo "fish_add_path /opt/homebrew/bin" > "$HOME/.config/fish/conf.d/homebrew.fish"
      success "Homebrew path added to Fish"
    fi
  fi
}

# ── Main ───────────────────────────────────────────────────────────

main () {
  configure_system
  install_packages
  check_dependencies
  git_clone_dotfiles
  setup_gitconfig
  update_git_submodules
  stow_dotfiles
  configure_user_shell

  echo ""
  success "Installation complete"
  info "Start a new shell session to apply changes"
}

main
