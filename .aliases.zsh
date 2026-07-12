## SHORTCUTS

alias p="cd ~/Projects"
alias scratch="pbpaste > ~/Projects/scratch/$(date -u +"%Y-%m-%dT%H:%M:%SZ").txt"


# Always use color output for `ls`
alias ls="command ls --color"

## STRINGS

alias sql="pbpaste | sqlformat - --reindent --indent_width 4 --comma_first True --use_space_around_operators --keywords=lower | pbcopy"
alias json="pbpaste | jq | pbcopy"
alias b64e="pbpaste | base64 | pbcopy"
alias b64d="pbpaste | base64 --decode | pbcopy"

# GIT STUFF

alias g="git"
alias ga="git add --all --ignore-removal ."
alias gc="git checkout"
alias gcam="git commit -am"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gf="git fetch"
alias gp="git pull"
alias gpo="git push origin"
alias gs="git status"
alias GS="git status"
alias gne="git commit --amend --no-edit"
alias gu="git reset HEAD~"
alias gyolo="git fetch;git add .;git commit --amend --no-edit;git rebase origin/main;git push origin -f;"

# KUBERNETES STUFF

alias kgp="kubectl get pods"

# KEYBINDINGS
# Standard macOS bindings
bindkey "^[[H" beginning-of-line    # Home key (fn+Left)
bindkey "^[[F" end-of-line          # End key (fn+Right)

# Standard word navigation (more common on macOS)
bindkey "^[b" backward-word         # Option+Left Arrow
bindkey "^[f" forward-word          # Option+Right Arrow

# Claude
mega-claude() {
  local model="$1"
  local model_id="claude-sonnet-4-6"
  case "$model" in
    sonnet-4|sonnet-4.6) model_id="claude-sonnet-4-6"; shift ;;
    opus-4.8) model_id="claude-opus-4-8"; shift ;;
    opus-4.6) model_id="claude-opus-4-6"; shift ;;
    sonnet-5) model_id="claude-sonnet-5"; shift ;;
  esac
  claude --dangerously-skip-permissions --remote-control --model "$model_id" "$@"
}

# agent-slack: Bun auto-loads .env from cwd; strip stray SLACK_TOKEN so it
# uses keychain xoxc/xoxd creds instead (fixes invalid_auth)
agent-slack() { SLACK_TOKEN= command agent-slack "$@"; }
