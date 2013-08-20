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

# Ruby performance improvements
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_FREE_MIN=600000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.25
# export RUBY_GC_MALLOC_LIMIT=79000000
export RUBY_GC_MALLOC_LIMIT=1000000000
