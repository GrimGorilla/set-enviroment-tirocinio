#!/bin/bash
sudo echo "lory ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/users
curl -fsSL https://pyenv.run | bash
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"
sudo apt -y install vim bash-completion git make tar wget curl gcc libffi8 libffi-dev zlib1g zlib1g-dev libssl-dev libreadline-dev libzip-dev lbzip2 patch libncurses-dev libncurses6 libsqlite3-dev tk-dev xz-utils unzip liblzma5 liblzma-dev
pyenv install 3.13.4
pyenv virtualenv 3.13.4 ansible
pyenv activate ansible
pip3 install --upgrade pip
pip3 install ansible==11.8.0

