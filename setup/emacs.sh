!#/bin/sh

echo "Installing spacemacs"
if [[ $OSTYPE == "darwin" ]]; then 
  brew tap d12frosted/emacs-plus
  brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
  brew linkapps
fi

if [[ $OSTYPE == "linux-gnu" ]]; then 
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install gcc build-essentials libncurses5-dev
  wget http://ftpmirror.gnu.org/emacs/emacs-25.3.tar.gz
  tar -xvzf ./emacs-25.3.tar.gz
  pushd
  cd emacs-25.3
  ./autogen.sh
  ./configure
  make
  make install
  popd
  rm -rf emacs-25.3
fi


git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

ln -s ../../.emacs.d ${HOME}/.
ln -s ../../.spacemacs ${HOME}/.
ln -s ../../.tmux.conf ${HOME}/.
ln -s ../../.zshrc ${HOME}/.
ln -s ../../.zshenv ${HOME}/.

