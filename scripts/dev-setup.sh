#!/bin/bash

# Ask for sudo password
echo 'Checking credentials...'
sudo echo 'ok!'

# Install homebrew
if ! command -v brew >/dev/null 2>&1; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi
brew update
brew upgrade

# Install GNU utils and git
brew install grc coreutils findutils git
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Remove outdated versions from the cellar
brew cleanup

# Install/update RVM
if ! command -v rvm >/dev/null 2>&1; then
    \curl -L https://get.rvm.io | bash -s stable
    source ~/.rvm/scripts/rvm
else
    rvm get stable
fi

# Install Bundler
gem install bundle
