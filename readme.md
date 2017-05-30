![](http://i.giphy.com/KCh9Kkf2MILK0.gif)

See [dotfiles.github.io](https://dotfiles.github.io) for a full explanation of what's going on here.

## Usage

1. Homebrew & all the packages in `Brewfile`.

    ```bash
    ./brew.sh
    brew bundle
    ```
2. Prompt, bash completion, bash aliases, etc. (Each time you make changes, just run this command again.)

    ```bash
    ./bootstrap.sh
    ```
2. Additional packages.

    ```bash
    ./npm.sh
    ./pip.sh
    ```
3. OSX defaults.

    ```bash
    ./.osx
    ```
