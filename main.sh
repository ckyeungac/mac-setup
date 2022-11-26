#!/bin/zsh

# setup terminal command
if [[ $(head -n 1 ~/.zprofile) != '### Kit Custom zprofile ###' ]]; then
    cp .zprofile ~/.zprofile
    source ~/.zprofile
    exec "$SHELL"
fi

# install brew if not exist
if [[ $(command -v brew) == "" ]]; then
    echo "'brew' not found. Install it now."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    yes | /bin/bash -c "$(curl -fsSL $BREW_URL)"
else
    echo "Updating 'brew'"
    brew update
fi

# install desired app via Brewfile
brew bundle install --file=./Brewfile

# set shortcut to Sublime
cat >> ~/.zprofile << EOL
# open Sublime as `subl`
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

EOL

# setup vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# setup conda basic setting
if [[ $(command -v conda == "conda" )]]; then
    conda init zsh
    conda config --set auto_activate_base false
fi

# setup vscode
zsh ./vscode/install_vscode_plugin.sh

echo "All Done :)"
