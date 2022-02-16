#!/bin/zsh

# setup terminal command
cp .zprofile ~/.zprofile
source ~/.zprofile
exec "$SHELL"

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

# set shortcut to Sublime
cat >> ~/.zprofile << EOL
# open Sublime as `subl`
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

EOL

# setup vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
exec "$SHELL"

# setup conda basic setting
conda init zsh
exec "$SHELL"
conda config --set auto_activate_base false

# setup vscode
zsh ./vscode/install_vscode_plugin.sh

# setup pyenv
cat >> ~/.zprofile << EOL
# pyenv
eval "$(pyenv init --path)"

EOL

cat >> ~/.zshrc << EOL
# pyenv
eval "$(pyenv init -)"

EOL


echo "All Done :)"
