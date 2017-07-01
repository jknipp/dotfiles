#!/bin/bash

# Install packages
apps=(
    1password
    dropbox
    iterm2
    firefox
    google-chrome
    slack
    skitch
    visual-studio-code
)

brew cask install "${apps[@]}"
