# Prompt starship.rs
eval "$(starship init zsh)"

# fzf keybindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Aliases
[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh

# Exports
[ -f ~/.exports.zsh ] && source ~/.exports.zsh

# GitHub gpg commit signing. Restart agent to prevent this error:
# error: gpg failed to sign the data
# fatal: failed to write commit object
pkill -9 gpg-agent

# zsh completion
autoload -Uz compinit && compinit

# zsh config
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
