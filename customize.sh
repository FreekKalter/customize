#!/bin/sh
# get packages
apt-get install git zsh tmux

# git configs
git config --global user.name "Freek Kalter"
git config --global user.email "freek@kalteronline.org"
git config --global core.edior vim
git config --global core.pager less
git config --global color.ui true
git config --global color true

# clone all repos
cd ~
git clone git@github.com:FreekKalter/zsh-conf zsh-conf
git clone git@github.com:FreekKalter/vim .vim
git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
git clone https://github.com/clvv/fasd.git fasd
cp ~/fasd/fasd /usr/bin/fasd

# zsh and tmux config files
cd ~/zsh-conf
./create_hooks.sh
./create_links.sh
chsh -s /bin/zsh

# vim submodule inints and .vimrc linking
cd ~/.vim
./create_hooks.sh
./create_links.sh
git submodule init
git submodule update

