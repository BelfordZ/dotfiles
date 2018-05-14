osx_only=(osx brew iterm)
linux_only=()

if [[ $OSTYPE == "darwin" ]]; then 
  for f in ${osx_only[@]}; do 
    source $f.sh
  done
fi

if [[ $OSTYPE == "linux-gnu" ]]; then 
  for f in ${linux_only[@]}; do 
    source $f.sh
  done
fi

source $(pwd)/zsh.sh
source $(pwd)/emacs.sh
source $(pwd)/ruby.sh
source $(pwd)/node.sh
source $(pwd)/java.sh
source $(pwd)/docker.sh

ln -s ../.zshrc ~/
ln -s ../.spacemacs ~/
ln -s ../.tmux.conf ~/
ln -s ../.zshenv ~/
