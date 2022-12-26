# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# fzf colors https://minsw.github.io/fzf-color-picker/
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#a599e9,bg:#2d2b55,hl:#ffee80
 --color=fg+:#a599e9,bg+:#1e1e3f,hl+:#fad000
 --color=info:#ff9d00,prompt:#fb94ff,pointer:#fb94ff
 --color=marker:#a5ff90,spinner:#ff9d00,header:#3AD900'
