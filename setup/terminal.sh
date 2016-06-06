!#/bin/sh
if [ -e /Applications/iTerm.app ]
then
  echo "Iterm already installed... skipping"
else
  echo "Installing iTerm2..."
  curl -L0k https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip --output iterm.zip 
  unzip iterm.zip
  rm iterm.zip
  mv iTerm.app /Applications/iTerm.app
  echo "iTerm2 installed!"
fi

if [ -e ~/.zshrc ]
then
  echo "zsh already installed... skipping"
else
  echo "Installing oh-my-zsh"
  brew install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  curl -L https://github.com/powerline/fonts/raw/master/Meslo/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.otf --output /Library/Fonts/MesloPowerline.otf

  rm -f ~/.zshrc
  ln -s ${HOME}/dotfiles/.zshrc ${HOME}/.zshrc
  source ~/.zshrc
fi
