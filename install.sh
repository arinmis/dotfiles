#!/bin/bash

set -e

function programs() {
  apt update && apt upgrade -y
  apt install -y vim tmux ripgrep xclip tree curl jq fzf nomacs neovim
}

function conf() {
  cp configs/.vimrc ~ 
  cp configs/.tmux.conf ~ 
  cp configs/.bashrc ~ 
  cp configs/.gitignore ~ 
  cp -r configs/ ~/.config/nvim
  git config --global core.excludesfile ~/.gitignore
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true
  echo "==> Installing runtime configs is completed!!!"
}

function sync() {
  cp ~/.vimrc configs 
  cp ~/.tmux.conf configs
  cp ~/.bashrc configs
  cp ~/.gitignore configs
  cp -r ~/.config/nvim configs
  echo "==> Updating config files is completed!!!"
}

case "$1" in
  all)
    programs
    conf
    ;;
  programs)
    programs
    ;;
  conf)
    conf
    ;;
  sync)
    sync
    ;;
  *)
    echo "Usage: $0 {all|programs|conf|sync}"
    exit 1
esac








































