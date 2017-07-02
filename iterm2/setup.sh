# https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Homebrew.itermcolors
# ^^ Set the preset profile colors for iTerm2

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/com.googlecode.iterm2.plist"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true