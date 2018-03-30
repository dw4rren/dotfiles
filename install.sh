#!/usr/bin/env bash

# TODO: install prereqs (vim, tmux, git) if they aren't installed

#
# vim
#

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy .vimrc
cp .vimrc ~/.vimrc

echo "Don't forget to run :PlugInstall in vim afterward"

#
# tmux
#
cp .tmux.conf ~/.tmux.conf
