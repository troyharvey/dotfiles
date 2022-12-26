# Environment variables direnv.net
eval "$(direnv hook zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$(brew --prefix)/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$(brew --prefix)/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "$(brew --prefix)/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="$(brew --prefix)/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

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

# GNU "make" has been installed as "gmake".
# If you need to use it as "make", you can add a "gnubin" directory
# to your PATH from your zshrc like:
PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

# zsh completion
autoload -Uz compinit && compinit

# zsh config
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

