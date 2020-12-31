![](http://i.giphy.com/KCh9Kkf2MILK0.gif)

See [dotfiles.github.io](https://dotfiles.github.io) for a full explanation of what's going on here.

## Usage

1. Homebrew & all the packages in `Brewfile`.

    ./brew.sh
    brew bundle

1. Prompt, bash completion, bash aliases, etc. (Each time you make changes, just run this command again.)

    ./bootstrap.sh

1. Additional packages.

    ./npm.sh
    ./pip.sh

1. OS X defaults.

    ./.osx

## Maintenance

1. Update Brewfile with current Homebrew state.

    brew bundle dump

1. Save Visual Studio extensions list

    code --list-extensions > vscode/extensions.txt

