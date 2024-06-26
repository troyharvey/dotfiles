## SHORTCUTS

alias p="cd ~/Projects"
alias kanban="open -a Safari 'https://carta1.atlassian.net/jira/your-work'"
alias ds-api="cd ~/Projects/ds-api;conda activate ds-api"
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
