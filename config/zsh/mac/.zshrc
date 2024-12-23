if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
 source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

EDITOR=$(which nvim)

export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf poetry rustup cargo deno hugo)

# Add homebrew to path for completions and directories.
export BREW_PATH=/opt/homebrew/bin
export PATH=$PATH:$BREW_PATH:~/.cargo/bin/

eval "$(brew shellenv)"
source $ZSH/oh-my-zsh.sh

alias love="/Applications/love.app/Contents/MacOS/love"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

autoload -Uz compinit
compinit

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/owais/.opam/opam-init/init.zsh' ]] || source '/Users/owais/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
