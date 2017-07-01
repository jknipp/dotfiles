#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install the Homebrew packages I use on a day-to-day basis.
#
# - Languages: rvm (Ruby), nvm (Node.js)
# - Databases: Postgres, MySQL, Redis
# - Servers: Apache, Nginx
#   that this needs to be added to zsh or bash. See the project README.
# - Tree (http://mama.indstate.edu/users/ice/tree/): A directory listing utility
#   that produces a depth indented listing of files.
# - git-extras (https://vimeo.com/45506445): Adds a shit ton of useful commands #   to git.
# Note that I install nvm (https://github.com/creationix/nvm) instead
# of installing Node directly. This gives me more explicit control over
# which version I'm using.

apps=(
    asdf
    coreutils
    curl
    findutils --with-default-names
    git
    git-extras
    hub                             # Makes you awesomer at Github
    gnu-sed --with-default-names
    gnu-tar --with-default-names
    gnu-which --with-default-names
    grep --with-default-names
    homebrew/completions/brew-cask-completion
    openssh
    openssl
    postgresql
    python
    rbenv
    tree
    wget
    wifi-password
    zsh
    # work only
    gpg1 
    heroku
    influxdb
    kafkacat
    postgresql
    redis
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
