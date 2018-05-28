#!/bin/bash

# Deploy Vim configuration
echo 
echo

echo "*** Begin Vim config deployment ***"
echo 

# Check if Vundle is installed
if [ -e ~/.vim/bundle/Vundle.vim ] 
then 
    echo "Vundle is installed."
else
   if [ ! -d ~/.vim ] 
   then
       mkdir -p  ~/.vim/bundle
       # Clone Vundle Package
       git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   fi
   if [ ! -d ~/.vim/bundle ] 
   then
       mkdir ~/.vim/bundle
       # Clone Vundle Package
       git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   fi
fi

if [ ! -e ~/.vimrc ] 
then
    # Create symbolic link 
    ln -s ~/.vim/vimrc ~/.vimrc
else
    echo ".vimrc already exists, remove to create system link"
    echo "Use command 'ln -s ~/.vim/vimrc ~/.vimrc'"
fi

echo
echo "********** COMPLETED **********"
echo 
echo
echo "Brought to you by: "
echo " 
  _____    ____            _      
 |  __ \  |  _ \     _    | |    
 | |__) | | |_) |  _| |_  | |     
 |  ___/  |  _ <  |_   _| | |     
 | |      | |_) |   |_|   | |____ 
 |_|      |____/          |______|
                                         
                                     

"
