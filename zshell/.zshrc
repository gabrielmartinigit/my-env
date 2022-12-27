ZSH_DISABLE_COMPFIX="true"
export ZSH="/Users/martinig/.oh-my-zsh"

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

. $(brew --prefix asdf)/libexec/asdf.sh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon load newline ssh asdf virtualenv)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0bc'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\ue0b6'

alias virtualenv='python -m virtualenv'

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
. ~/.asdf/plugins/java/set-java-home.zsh
export PATH="/usr/local/sbin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"
export OPENSSL_ROOT_DIR=/usr/local/opt/openssl@3

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
