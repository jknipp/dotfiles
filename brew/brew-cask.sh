#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    1password
    dropbox
    iterm2
    firefox
    google-chrome
    slack
    visual-studio-code
    # Work Only
    vagrant
    virtualbox
)

brew cask install "${apps[@]}"
