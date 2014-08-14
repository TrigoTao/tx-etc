#!/bin/sh

cp .bashrc .vimrc .screenrc ~

if [ ! -d "$HOME/.vim" ]; then
  cp -r .vim ~
fi

#deploy vundle
if [ ! -d "$HOME/.vim/bundle/vundle" ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

#install ctags
if dpkg-query -W "exuberant-ctags"; then 
  echo "installed"; 
else
  apt-get install exuberant-ctags
fi
