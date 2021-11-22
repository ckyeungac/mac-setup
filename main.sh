#!/bin/zsh

# install app
bash scripts/install_app.sh

# setup terminal command
cp scripts/.zprofile ~/.zprofile
source ~/.zprofile
exec "$SHELL"

# setup vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
exec "$SHELL"

# setup conda basic setting
conda init zsh
exec "$SHELL"
conda config --set auto_activate_base false
