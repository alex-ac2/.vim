#!/bin/bash

# Deploy Vim configuration
echo
echo

echo "*** Begin Vim config deployment ***"
echo
echo "...determining operating system."
echo
os_system=$OSTYPE
if [[ $os_system == "darwin"* ]]
then
  echo "You're using a Mac computer."
fi

if [[ $os_system == "linux"* ]]
then
  echo "You're using a Linux computer."
fi
echo
echo
echo "------ Update Vim ------"
echo
# Update for Mac
if [[ $os_system == "darwin"* ]]
then
  versionNumber="$(vim --version | awk 'NR==1 { print $5 }')"
  if [[ $versionNumber > 8.0 ]]
  then
    echo
    echo "Vim is up to date."
    echo
  else
    git clone https://github.com/vim/vim.git
    cd vim/src
    make
    sudo make install
  fi
fi
# Update for Linux
if [[ $os_system == "linux"* ]]
then
    cd ~
    git clone https://github.com/vim/vim.git
    cd vim
    ./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp=yes \
        --enable-python3interp=yes \
        --with-python3-config-dir=/usr/lib/python3.5/config \
        --enable-perlinterp=yes \
        --enable-luainterp=yes \
        --enable-gui=gtk2 \
        --enable-cscope \
        --prefix=/usr/local
    make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
    cd ~/vim
    make
    sudo make install
fi
echo
echo "------ Vim Updated ------"
echo
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
vim +PluginInstall +qall
echo "Finished installing Vim plugins."
echo
echo "********** DEPLOYMENT COMPLETED **********"
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
