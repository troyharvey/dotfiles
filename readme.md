![](http://i.giphy.com/KCh9Kkf2MILK0.gif)

See [dotfiles.github.io](https://dotfiles.github.io) for a full explanation of what's going on here.

## Usage

1. Install [Homebrew](https://brew.sh).
1. Install curl.

        brew install curl

1. Save the `Brewfile` and run bundle.

        curl -O https://raw.githubusercontent.com/troyharvey/dotfiles/master/Brewfile
        brew bundle

1. Switch the default shell in iTerm to `/opt/homebrew/bin/bash`
1. Prompt, bash completion, bash aliases, etc. (Each time you make changes, just run this command again.)

        ./bootstrap.sh

1. Additional packages.

        ./npm.sh

1. OS X defaults.

        ./.osx

## Maintenance

1. Update Brewfile with current Homebrew state.

        brew bundle dump

1. Save Visual Studio extensions list

        code --list-extensions > vscode/extensions.txt
