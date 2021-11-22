#!/bin/bash
NAME="<name>"
EMAIL="<email@example.com>"
PASSPHASE="<passphrase>"
SSH_DIR="$HOME/.ssh"
SSH_CONFIG_PATH="$SSH_DIR/config"
SSH_KEY_PATH="$SSH_DIR/id_ed25519"

git config --global user.name $NAME
git config --global user.email $EMAIL

if [ ! -f $SSH_KEY_PATH ]; then
    ssh-keygen -t ed25519 -C $EMAIL -N "$PASSPHASE" -f $SSH_KEY_PATH
fi 

# adding SSH key to the ssh-agent
eval "$(ssh-agent -s)"

if [ ! -f $SSH_CONFIG_PATH ]; then
    touch $SSH_CONFIG_PATH
fi

cat > $SSH_CONFIG_PATH << EOL
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ${SSH_KEY_PATH}
EOL

ssh-add --apple-use-keychain ${SSH_KEY_PATH}


# add key to github
gh auth login --hostname github.com