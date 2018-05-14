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
