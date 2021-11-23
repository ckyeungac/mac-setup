# Setup New Mac

This repo aim to ease the setup effort of a new mac by running

## Setup Basic Environment for General Use and Development

1. Comment out any unwanted app in `scripts/install_app.sh`
2. Run

    ~~~sh
    zsh main.sh
    ~~~

## Setting up Github SSH Key

1. Copy `setup_git_default.sh` to `setup_git.sh`.
2. Change the `NAME`, `EMAIL` and `PASSPHRASE` in `scripts/setup_git.sh`.
3. Run

    ~~~sh
    zsh setup_git.sh
    ~~~

There is manual input from you to autheticate on Github when running `setup_git.sh`.

Reference: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

## Setting up VSCode Plugin

1. Comment out any unwanted app in `install_vscode_plugin.sh`
2. Run

    ~~~sh
    zsh install_vscode_plugin.sh
    ~~~
