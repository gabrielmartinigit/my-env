# ZSH
ZSH_DISABLE_COMPFIX="true"
export ZSH="$HOME/.oh-my-zsh"

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

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon load newline ssh asdf virtualenv)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0bc'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\ue0b6'

source $(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme

export PATH="/usr/local/sbin:$PATH"

# ASDF
. $(brew --prefix asdf)/libexec/asdf.sh

alias virtualenv='python -m virtualenv'

. ~/.asdf/plugins/java/set-java-home.zsh

export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"

# SSL
export OPENSSL_ROOT_DIR=$(brew --prefix openssl@3)

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
