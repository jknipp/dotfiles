#!/bin/bash

# Java must be manually installed first from Oracle... Ugh.
# http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

# http://www.jenv.be/
brew install jenv

# Add to bash
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(jenv init -)"' >> ~/.bash_profile

# Add to zsh
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/
jenv global 1.8

