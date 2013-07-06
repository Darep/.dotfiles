#!/bin/bash
#
# Dev environment setup
#

# Ask for sudo password
echo 'Checking credentials...'
sudo echo 'ok!'

# Install homebrew
if ! command -v brew >/dev/null 2>&1; then
    ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
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

# Install PHP 5.4
brew tap josegonzalez/homebrew-php
brew install php54

# Install fasd
brew install fasd

# Remove outdated versions from the cellar
brew cleanup


#
# NodeJS
#
brew install node

# Install Grunt
if ! command -v grunt >/dev/null 2>&1; then
    npm install -g grunt
fi

# Install YALR
if ! command -v yalr >/dev/null 2>&1; then
    npm install -g yalr
fi


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
rvm install 2.0.0
rvm use --default 2.0.0

# Install/update rbenv
#brew install rbenv
#brew install ruby-build

# Install Bundler
gem install bundler

# Install Compass
gem install compass

# Install Foreman
gem install foreman

# Install Rails
gem install rails

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


#
# Databases
#
#open http://postgresapp.com/download
