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
