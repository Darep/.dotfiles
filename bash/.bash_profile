# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,aliases,functions,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

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
