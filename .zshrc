export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=10
ENABLE_CORRECTION="true"

plugins=(aws bower brew common-aliases docker gitfast git-extras git-hubflow node autojump docker zsh-syntax-highlighting)

# User configuration
export DEFAULT_USER=$(id -un)

source $ZSH/oh-my-zsh.sh

echo "Setting Aliases"
for file in $HOME/dotfiles/aliases/*.sh; do
    source "$file"
done
echo "Setting Aliases Done!"
