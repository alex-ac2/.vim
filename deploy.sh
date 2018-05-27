#!/bin/bash

# Deploy Vim configuration

mkdir ~/.vim/bundle

# Clone Vundle Package
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create symbolic link 
ln -s ~/.vim/vimrc ~/.vimrc


