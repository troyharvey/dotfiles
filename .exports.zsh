# kubectx
export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/banyan

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';

# Conda
eval "$(conda shell.zsh hook)"

# direnv.net (Environment variables)
eval "$(direnv hook zsh)"
export DIRENV_LOG_FORMAT=

# GNU "make" has been installed as "gmake".
# If you need to use it as "make", you can add a "gnubin" directory
# to your PATH from your zshrc like:
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

# Poetry (Python)
export PATH="$HOME/.local/bin:$PATH"

# Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# Java (jenv)
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# GitHub Copoilot CLI
eval "$(github-copilot-cli alias -- "$0")"

# bun completions
[ -s "/Users/troyharvey/.bun/_bun" ] && source "/Users/troyharvey/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
