if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
 source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

EDITOR=$(which nvim)

export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf poetry rustup cargo deno hugo)

# Homebrew
#
# Add homebrew to path for completions and directories.
export BREW_PATH=/opt/homebrew/bin
export PATH=$PATH:$BREW_PATH:~/.cargo/bin/

eval "$(brew shellenv)"
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -Uz compinit
compinit
