# Sublime Text 2 configuration

### Installation

Clone the repo:

    $ git clone https://github.com/Darep/dotfiles.git ~/.dotfiles
    
Remove old packages and configuration (if any):

    $ rm -rf ~/Library/Application \Support\Sublime\ Text\ 2
    $ mkdir -p ~/Library/Application \Support\Sublime\ Text\ 2
  
Create symlinks to "Installed Packages" and "Packages" directories.

    $ ln -s ~/.dotfiles/Sublime\ Text\ 2/Installed\ Packages \
      ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages
    $ ln -s ~/.dotfiles/Sublime\ Text\ 2/Packages \
      ~/Library/Application\ Support/Sublime\ Text\ 2/Packages

Start Sublime Text 2 and Sublime will install the stock packages. Enjoy!
