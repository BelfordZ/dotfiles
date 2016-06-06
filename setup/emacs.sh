!#/bin/sh

echo "Installing spacemacs"
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

ln -s ${HOME}/dotfiles/.emacs.d ${HOME}/.emacs.d
ln -s ${HOME}/dotfiles/.spacemacs ${HOME}/.spacemacs
