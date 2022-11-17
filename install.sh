#!/bin/bash

# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone the repo
git clone https://github.com/BDHU/vimrc.git /tmp/vimrc

cp /tmp/vimrc/linux/.vimrc ~/

# install all plugins using vimplug
vim -E -s -u ~/.vimrc +PlugInstall +qall
