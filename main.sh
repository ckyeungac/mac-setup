#!/bin/zsh

# install brew if not exist
if [[ $(command -v brew) == "" ]]; then
    echo "'brew' not found. Install it now."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    yes | /bin/bash -c "$(curl -fsSL $BREW_URL)"

# update brew if exist
else
    echo "Updating 'brew'"
    brew update
fi

# install desired app via Brewfile
brew bundle install --file=./Brewfile


# setup terminal command
cp .zprofile ~/.zprofile
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

# setup vscode
zsh ./install_vscode_plugin.sh


echo "All Done :)"
