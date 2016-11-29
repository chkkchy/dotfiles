#!/bin/sh

# jobs
sh _brew.sh
sh _brewcask.sh
sh _lnvim.sh
sh _lndots.sh

# copy tmuxinator dir
cp -r ${SRC_DIR}/tmuxinator ~/.tmuxinator

# deoplete needs neovim-python (https://github.com/Shougo/deoplete.nvim)
pip3 install neovim

# sync vim with nvim
mkdir -p ${HOME}/.vim
mkdir -p ${HOME}/.config/nvim
ln -snfv ${HOME}/.vim ${HOME}/.config/nvim/
ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
