#!/bin/sh
cp _tmux.conf ~/.tmux.conf
cp _gitconfig ~/.gitconfig
cp vimrc ~/.vimrc
# Install Pathogen for vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install Neobundle for vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
