#!/bin/bash

# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone the repo
git clone https://github.com/BDHU/vim_setting.git /tmp/

cp /tmp/vim_setting/Linux/.vimrc ~/

# install all plugins using vimplug
vim +PlugInstall
