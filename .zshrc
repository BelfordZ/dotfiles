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

echo "Initializing Tools"
for file in $HOME/dotfiles/init/*.sh; do
    source "$file"
done
echo "Initialization Done!"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/zacharybelford/Code/ganache/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/zacharybelford/Code/ganache/node_modules/tabtab/.completions/electron-forge.zsh
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
