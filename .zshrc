export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=30
ENABLE_CORRECTION="true"

plugins=(aws bower brew common-aliases docker gitfast git-extras git-hubflow node autojump docker zsh-syntax-highlighting)

# User configuration
export DEFAULT_USER=$(id -un)
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/$GOPATH/bin"

source $ZSH/oh-my-zsh.sh

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='emacs'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR=~/.nvm
. /usr/local/opt/nvm/nvm.sh


for file in $HOME/dotfiles/.{emacs,git,docker}.sh; do
    echo "loading file $file... "
    source "$file"
done

nvm use 4 > /dev/null

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
