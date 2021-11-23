#!/bin/zsh

if [ ! -f "/usr/local/bin/code" ]; then
    sudo ln -fs "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/
fi

#   -----------------------------
#   Python
#   -----------------------------
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension kevinrose.vsc-python-indent
code --install-extension oderwat.indent-rainbow
code --install-extension njpwerner.autodocstring

#   -----------------------------
#   Web Development
#   -----------------------------
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension hex-ci.stylelint-plus
code --install-extension dbaeumer.vscode-eslint
code --install-extension naumovs.color-highlight
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension ritwickdey.LiveServer
code --install-extension erikphansen.vscode-toggle-column-selection
code --install-extension file-icons

#   -----------------------------
#   Markdown
#   -----------------------------
code --install-extension yzhang.markdown-all-in-one
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension mushan.vscode-paste-image
code --install-extension davidanson.vscode-markdownlint
