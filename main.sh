#!/bin/bash

# install app
bash scripts/install_app.sh

# setup terminal command
cp scripts/.zprofile ~/.zprofile
source ~/.zprofile

# setup vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# setup conda basic setting
conda init zsh
exec "$SHELL"
conda config --set auto_activate_base false

# setup git
git config --global user.name "Kit Yeung"
git config --global user.email "ckyeungac@gmail.com"