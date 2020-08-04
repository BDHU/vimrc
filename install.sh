#!/bin/bash

# install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone the repo
git clone https://github.com/BDHU/Vim_Setting.git

cd Vim_Setting/Linux/

cp .vimrc ~/

# install universal ctag for debian based system
sudo apt install universal-ctags
sudo apt install cscope

# install all plugins using vimplug
vim +PlugInstall
