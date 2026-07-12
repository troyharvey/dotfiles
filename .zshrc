# Instructions for Claude Code: Add exports in ~/.exports.zsh. Please do not add exports here.
# Performance profiling (uncomment zprof at bottom to enable)
# zmodload zsh/zprof

# Startship.rs prompt
eval "$(starship init zsh)"

# fzf Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Aliases
[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh

# Exports
[ -f ~/.exports.zsh ] && source ~/.exports.zsh

# Credentials
[ -f ~/.credentials.zsh ] && source ~/.credentials.zsh

# zsh completion - optimized with caching
fpath+=~/.zsh/completions
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null) ]; then
  compinit
else
  compinit -C
fi

# zsh config
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt EXTENDED_HISTORY          # Write timestamp to history
setopt SHARE_HISTORY             # Share history across terminals
setopt HIST_IGNORE_DUPS          # Don't record duplicates
setopt HIST_IGNORE_ALL_DUPS      # Delete old duplicates
setopt HIST_FIND_NO_DUPS         # Don't display duplicates in search
setopt HIST_IGNORE_SPACE         # Don't record commands starting with space
setopt HIST_SAVE_NO_DUPS         # Don't save duplicates
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks

# Added by dbt installer
export PATH="$PATH:/Users/troyharvey/.local/bin"

# dbt aliases
alias dbtf=/Users/troyharvey/.local/bin/dbt

# pnpm
export PNPM_HOME="/Users/troyharvey/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(fnm env --use-on-cd)"
