# kubectx
export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/banyan

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# direnv.net (Environment variables)
eval "$(direnv hook zsh)"
export DIRENV_LOG_FORMAT=

# GNU "make" has been installed as "gmake".
# If you need to use it as "make", you can add a "gnubin" directory
# to your PATH from your zshrc like:
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# psql
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# nvm - fully initialize for Claude Code compatibility
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion.d/nvm" ] && \. "$NVM_DIR/bash_completion.d/nvm"

# tar
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"

# Poetry (Python)
export PATH="$HOME/.local/bin:$PATH"

# dbt aliases
alias dbtf=$HOME/.local/bin/dbt

# Default text editor (used by Claude Code)
export EDITOR="/usr/local/bin/code"

# When using the snow cli with OAuth, don't re-authenticate on every execution
# https://docs.snowflake.com/en/developer-guide/snowflake-cli/connecting/configure-connections
export SNOWFLAKE_OAUTH_ENABLE_REFRESH_TOKENS=True

# 1Password SSH Agent for GitHub
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# Teleport tsh: ssh-agent started on demand via `teleport` alias

# Common Fund Admin related commands and aliases
source ~/Projects/fund-admin/.dev/fa-fn.sh
source ~/Projects/fund-admin/.dev/aliases.sh

# dbt Fusion
export PATH="$PATH:/Users/troyharvey/.local/bin"
alias dbtf="$HOME/.local/bin/dbt"

# pnpm
export PNPM_HOME="/Users/troyharvey/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Handle unknown commands by forwarding them to mega-claude for potential execution as a Claude command
command_not_found_handler() {
  mega-claude -c "$*"
  return $?
}
