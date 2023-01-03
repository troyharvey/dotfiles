<p align="center">
        <img width="692" alt="image" src="https://user-images.githubusercontent.com/530530/210425970-ccb1ad92-99fa-480b-be52-d0c7c0525d7e.png">
</p>

## Usage

See [dotfiles.github.io](https://dotfiles.github.io) for a full explanation of what's going on here.

1. Install [Homebrew](https://brew.sh).
1. Install all the software in `Brewfile`.

        brew bundle

1. Switch the default shell in iTerm to `/usr/local/bin/zsh`
1. Copy all the dotfiles to `~/`

        ./bootstrap.sh

1. Override the macOS defaults.

        ./.osx

1. Import `shades-of-purple.itermcolors` into iTerm2.
1. Install Visual Studio Code extensions in `vscode`.

## Maintenance

1. Update Brewfile with current Homebrew state.

        brew bundle dump

1. Save Visual Studio extensions list

        code --list-extensions > vscode/extensions.txt
