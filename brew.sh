#!/usr/bin/env bash

###############################################################################
# Apps and Programms                                                          #
###############################################################################

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Commandline tools
# http://docs.python-guide.org/en/latest/starting/install3/osx/
binaries=(
	python 
	node
	gnupg
)

echo "Installing binaries..."
brew install ${binaries[@]}

# Remove outdated versions from the cellar
brew cleanup

# Enable cask installations
# https://stackoverflow.com/a/32811065
brew tap caskroom/versions

# Apps
apps=(
	java8
)

brew cask install ${apps[@]}
