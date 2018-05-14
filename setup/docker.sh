#!/bin/bash

if [[ $OSTYPE == "darwin" ]]; then
  brew install docker
  brew install docker-machine
fi

if [[ $OSTYPE == "linux-gnu" ]]; then
  sudo apt-get install docker
fi

