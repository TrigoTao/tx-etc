#!/bin/sh

cp -r .vim .bashrc .vimrc .screenrc ~

#deploy vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
