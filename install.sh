#!/bin/bash

# install brew
/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh) >/dev/null

echo -ne '>>>                       [20%]\r'

# install packages & cask with brew
xargs brew install <brew/packages.txt

echo -ne '>>>>>>>                   [40%]\r'

# install python versions
asdf plugin-add python
asdf install python 3.10.14
asdf global python 3.10.14

# install python global packages
pip install -r python/global-requirements.txt
asdf reshim python

echo -ne '>>>>>>>>>>>>>>            [60%]\r'

# setup zsh & oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp zshell/.zshrc ~/.zshrc

echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'

# setup vscode
cat vscode/extensions.txt | grep -v '^#' | xargs -L1 code --install-extension
cp vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
echo -ne '\n'

# restart zsh
exec zsh
