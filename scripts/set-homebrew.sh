#!/bin/bash

brew update
brew upgrade

# Install GNU core utilities
brew install git grc coreutils

# Install PHP 5.4
brew tap josegonzalez/homebrew-php
brew install php54

# Remove outdated versions from the cellar
brew cleanup
