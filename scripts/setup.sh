#!/bin/bash

#
# Dev environment setup
#

# Ask for sudo password
echo 'Checking credentials...'
sudo echo 'ok!'

# Install homebrew
if ! command -v brew >/dev/null 2>&1; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi
brew update
brew upgrade

# Install GNU core utilities
brew install grc coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install git
brew install git

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install fasd
brew install fasd

# Install z
brew install z

# Remove outdated versions from the cellar
brew cleanup


#
# NodeJS
#

# Install nvm
brew install nvm
echo "Don’t forget to add export NVM_DIR=~/.nvm to .bash_profile"
echo "Don’t forget to add . $(brew --prefix nvm)/nvm.sh to .bash_profile"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Install node 5.5.0
nvm install 5.5.0
nvm use 5.5.0
nvm alias default 5.5.0

# Update npm
npm install -g npm


#
# Ruby
#

# Install/update RVM
if ! command -v rvm >/dev/null 2>&1; then
    \curl -L https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
else
    rvm get stable
fi

# Install Ruby via RVM
rvm install 1.9.3
rvm install ruby
rvm use --default ruby

# Install Bundler
gem install bundler

# Install pow (as an Apache proxy)
echo 'export POW_DST_PORT=88' >> ~/.powconfig; source ~/.powconfig
sudo curl https://raw.github.com/gist/1058580/zzz_pow.conf -o /etc/apache2/other/zzz_pow.conf
sudo apachectl restart
curl get.pow.cx | sh

# Install powder
gem install powder


#
# Clojure
#

brew install clojure

# Install Leiningen
brew install leiningen
