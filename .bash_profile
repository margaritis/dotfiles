# Add `~/bin` to the `$PATH`
export PATH="/usr/local/sbin:$HOME/bin:$HOME/.rvm/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Load nvm script
if [[ -s $(brew --prefix nvm)/nvm.sh ]]; then
  # Set download NVM dir
  export NVM_DIR=~/.nvm;

  source $(brew --prefix nvm)/nvm.sh

  # Enable bash completion
  [[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

  # Set NVM to use node on start up (non interactive mode can use nvm).
  # In case you are not using default node for your shell uncomment
  # the following line to use node or a specific version of node.
  # nvm use node
fi

# Add z
. `brew --prefix`/etc/profile.d/z.sh

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true;
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache;

export VIRTUAL_ENV_DISABLE_PROMPT=1

# Add dev virtualenv
source ~/Envs/DevVirtualEnv/bin/activate;

# Enable bash completion for pip
# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

#Git-flow bash completion
source ~/init/git/git-flow-completion.sh

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# Profile currently not used
# source ~/.profile;

# RVM bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Powerline feature for Bash
if [ -d "$HOME/Envs/DevVirtualEnv/lib/python2.7/site-packages/powerline" ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    source /Users/breath/Envs/DevVirtualEnv/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
