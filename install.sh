#!/bin/bash

# install brew
/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)

# install packages & cask with brew
xargs brew install <brew/packages.txt

# setup zsh & oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# TODO: PowerLevel, NerdFont, zshrc

# install python versions
asdf plugin-add python
asdf install python 3.8.8
asdf global python 3.8.8

# install python global packages
pip install -r python/global-requirements.txt

# setup vscode
cat vscode/extensions.txt | grep -v '^#' | xargs -L1 code --install-extension
cp vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

# restart zsh
source ~/.zshrc
