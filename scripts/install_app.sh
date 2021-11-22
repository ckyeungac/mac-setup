#!/bin/zsh

# ask for sudo upfront
sudo -v

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

#   -----------------------------
#   Basic App
#   -----------------------------
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask nordvpn
brew install --cask spotify

#   -----------------------------
#   Documentation App
#   -----------------------------
brew install --cask notion
brew install --cask quip

#   -----------------------------
#   Video Conferencing App
#   -----------------------------
brew install --cask webex
brew install --cask zoom

#   -----------------------------
#   Messaging App
#   -----------------------------
brew install --cask signal
brew install --cask slack
brew install --cask telegram
brew install --cask wechat
brew install --cask whatsapp

#   -----------------------------
#   Password Manager App
#   -----------------------------
brew install --cask 1password
# brew install --cask lastpass

#   -----------------------------
#   Development Tool
#   -----------------------------
brew install awscli
brew install docker
brew install docker-compose
brew install git
brew install gh
brew install pre-commit
brew install wget
brew install --cask anaconda
brew install --cask dbeaver-community
brew install --cask google-cloud-sdk
brew install --cask sublime-text
brew install --cask tableau
brew install --cask visual-studio-code

echo "All Done :)"
