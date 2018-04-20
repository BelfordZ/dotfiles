if [ -e ~/.zshrc ]
then
  echo "zsh already installed... skipping"
else
  echo "Installing oh-my-zsh"

  if [ $OSTYPE == "darwin" ]; then
    brew install zsh
    curl -L https://github.com/powerline/fonts/raw/master/Meslo/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.otf --output /Library/Fonts/MesloPowerline.otf
    brew tap caskroom/fonts && brew cask install font-source-code-pro
    brew install autojump
  fi
  
  if [ $OSTYPE == "linux-gnu" ]; then
    sudo apt-get install zsh
    mkdirp ~/.local/share/fonts
    git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.local/share/fonts/adobe-fonts/source-code-pro
    sudo apt-get install autojump
  fi

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  rm -f ~/.zshrc
  rm -f ~/.zshenv
  ln -s ../.zshrc ~/.zshrc
  ln -s ../.zshenv ~/.zshenv
  source ~/.zshrc
fi

