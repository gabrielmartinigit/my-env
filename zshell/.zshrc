export ZSH="/Users/martinig/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    docker
    aws
    virtualenv
    vscode
    brew
    python
    pip
    tmux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

. $(brew --prefix asdf)/asdf.sh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon load newline ssh asdf virtualenv)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0bc'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\ue0b6'

alias virtualenv="python /Users/martinig/.asdf/installs/python/3.9.0/lib/python3.9/site-packages/virtualenv"

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
