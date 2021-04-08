export ZSH="/home/gabrielbmartini/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    docker
    aws
    virtualenv
    vscode
    python
    pip
    tmux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon load newline ssh asdf virtualenv)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0bc'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\ue0b6'

alias virtualenv="python $HOME/.asdf/installs/python/3.8.8/lib/python3.8/site-packages/virtualenv"
