#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

set -e

if [ "$(uname)" != "Darwin" ]; then
  echo "Not macOS — skipping Homebrew installation."
  exit 0
fi

# Check for Homebrew
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."

  # Install Homebrew (official script)
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "✅ Homebrew installed successfully."
else
  echo "✅ Homebrew already installed."
fi

exit 0
