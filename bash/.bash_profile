# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# git
source ~/.git_complete

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Maven & Java
export M2_HOME=/usr/local/Cellar/maven/3.0.4/libexec
export M2=$M2_HOME/bin
export JAVA_HOME=/Library/Java/Home/
export PATH=$PATH:$M2:/Applications/XAMPP/xamppfiles/bin

# z
. `brew --prefix`/etc/profile.d/z.sh

# MariaDB
export MARIADB_CONFIG_PATH=/usr/local/Cellar/mariadb/10.0.13/bin/mysql_config

# boot2docker
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2376
export DOCKER_CERT_PATH=/Users/ajk/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# nvm
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
