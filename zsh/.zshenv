export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"
[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh


# Setup Capistrano to deploy as a different user because my machine name is different than VPN uname
export DEPLOY_AS=jknipp

eval "$($HOME/dev/alf/bin/alf init -)"
