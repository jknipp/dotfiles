###############################################################################
# Backup old machine's dotfiles                                               #
###############################################################################
mkdir -p ~/migration/home
cd ~/migration

# Backup anything we may alter
cp -R ~/.ssh ~/migration/home
cp -R ~/Documents ~/migration?
cp ~/.gitconfig ~/migration

###############################################################################
# XCode Command Line Tools                                                    #
###############################################################################

if ! xcode-select --print-path &> /dev/null; then

  # Prompt user to install the XCode Command Line Tools
  xcode-select --install &> /dev/null

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Wait until the XCode Command Line Tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  print_result $? 'Install XCode Command Line Tools'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Point the `xcode-select` developer directory to
  # the appropriate directory from within `Xcode.app`
  # https://github.com/alrra/dotfiles/issues/13

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  print_result $? 'Make "xcode-select" developer directory point to Xcode'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Prompt user to agree to the terms of the Xcode license
  # https://github.com/alrra/dotfiles/issues/10

  sudo xcodebuild -license
  print_result $? 'Agree with the XCode Command Line Tools licence'

fi


###############################################################################
# Homebrew                                                                    #
###############################################################################

$HOME/dotfiles/brew/brew.sh
$HOME/dotfiles/brew/brew-cask.sh

###############################################################################
# Bundle Exec                                                                    #
###############################################################################

curl -L https://github.com/gma/bundler-exec/raw/master/bundler-exec.sh > ~/.bundler-exec.sh

###############################################################################
# OSX defaults                                                                #
# https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
###############################################################################

sh osx/set-defaults.sh

###############################################################################
# Symlinks to link dotfiles into ~/                                           #
###############################################################################

sh setup.sh

