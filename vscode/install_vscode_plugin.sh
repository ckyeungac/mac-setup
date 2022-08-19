#!/bin/zsh

# check if visual studio code is installed.
if [ ! -d "/Applications/Visual Studio Code.app" ]; then
    echo "Visual Studio Code is not installed. Exit now."
    exit 1
fi

# enable `code` command is installed in Path if it is not done yet.
if [ ! -f "/usr/local/bin/code" ]; then
    sudo ln -fs "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/
fi

#   -----------------------------
#   Productivity
#   -----------------------------
code --install-extension vscode-icons-team.vscode-icons         # prettify file icon
code --install-extension formulahendry.code-runner              # run a code snippet
code --install-extension shan.code-settings-sync                # sync vscode setting cross device
code --install-extension eamodio.gitlens                        # navigate code change in git
code --install-extension donjayamanne.githistory                # trace git commits, message, branches, etc.
code --install-extension ms-vscode-remote.remote-ssh            # open folder on remote machine with SSH
code --install-extension ms-vscode-remote.remote-containers     # open folder inside a docker container
code --install-extension ritwickdey.LiveServer                  # launch local development servers
code --install-extension tabnine.tabnine-vscode                 # AI code completion tool
code --install-extension tomoki1207.pdf                         # display PDF file
code --install-extension MS-vsliveshare.vsliveshare             # pair-programming

#   -----------------------------
#   Formatting and Linting
#   -----------------------------
code --install-extension oderwat.indent-rainbow             # general
code --install-extension esbenp.prettier-vscode             # general linting
code --install-extension dbaeumer.vscode-eslint             # JS
code --install-extension davidanson.vscode-markdownlint     # markdown
code --install-extension hex-ci.stylelint-plus              # CSS
code --install-extension redhat.vscode-yaml                 # yaml
code --install-extension mikestead.dotenv                   # .env
code --install-extension adpyke.vscode-sql-formatter        # SQL

#   -----------------------------
#   Debugging
#   -----------------------------
code --install-extension streetsidesoftware.code-spell-checker       # spell checking
code --install-extension chrmarti.regex                              # regex previewer
code --install-extension hbenl.vscode-test-explorer                  # UI for test

#   -----------------------------
#   Tool-specific
#   -----------------------------

# python
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension njpwerner.autodocstring

# web development
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension naumovs.color-highlight
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension erikphansen.vscode-toggle-column-selection

# markdown
code --install-extension yzhang.markdown-all-in-one
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension mushan.vscode-paste-image

# docker
code --install-extension ms-azuretools.vscode-docker

# terraform
code --install-extension hashicorp.terraform
