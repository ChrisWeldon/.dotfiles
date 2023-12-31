export VCPKG_ROOT=~/Library/vcpkg

## External ssd config
export E=/Volumes/T7
export EHOME=$E/$HOME

## ZSH config TODO
export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
#export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

#export EDITOR="nvim"
export VISUAL="nvim"

#export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.

export VCPKG_ROOT="$HOME/Library/vcpkg"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$HOME/Library/vcpkg:$PATH"
