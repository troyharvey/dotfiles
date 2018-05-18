#!/usr/bin/env bash

# Exit when any of these fail
set -e
set -o pipefail

# Install Homebrew
if ! hash brew  > /dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install apps from Brewfile using Homebrew Bundle
brew bundle

# Remove outdated versions from the cellar.
brew cleanup
brew prune
brew doctor
brew cask doctor
