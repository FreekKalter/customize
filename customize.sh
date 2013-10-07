#!/bin/sh
apt-get install git zsh tmux
cd ~
git clone git@github.com:FreekKalter/zsh-conf zsh-conf
git clone git@github.com:FreekKalter/vim .vim
git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
git clone https://github.com/clvv/fasd.git fasd
cp ~/fasd/fasd /usr/bin/fasd

cd ~/zsh-conf
./create_hooks.sh
./create_links.sh
chsh -s zsh

cd ~/.vim
./create_hooks.sh
./create_links.sh
git submodule init
git submodule update

