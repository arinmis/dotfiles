#!/bin/bash

set -e

function programs() {
  apt update && apt upgrade -y
  apt install -y vim tmux ripgrep xclip tree curl jq fzf nomacs gitk meld
  install_neovim
}

function conf() {
  cp config/.vimrc $HOME 
  cp config/.tmux.conf $HOME 
  cp config/.bashrc $HOME 
  cp config/.gitignore $HOME 
  cp -r config/ $HOME/.config/nvim
  git config --global core.excludesfile $HOME/.gitignore
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim || true
  echo "==> Installing runtime config is completed!!!"
}

function sync() {
  cp $HOME/.vimrc config 
  cp $HOME/.tmux.conf config
  cp $HOME/.bashrc config
  cp $HOME/.gitignore config
  rm -rf config/nvim
  cp -r $HOME/.config/nvim config
  echo "==> Updating config files is completed!!!"
}

function install_neovim() {
  local version="v0.10.0"
  local url="https://github.com/neovim/neovim/releases/download/${version}/nvim-linux64.tar.gz"
  local temp_dir=$(mktemp -d)
  echo "Downloading Neovim ${version} from ${url}..."
  curl -L ${url} -o ${temp_dir}/nvim-linux64.tar.gz
  echo "Extracting Neovim..."
  tar -xzvf ${temp_dir}/nvim-linux64.tar.gz -C ${temp_dir}
  echo "Installing Neovim..."
  sudo mv ${temp_dir}/nvim-linux64 /usr/local/nvim
  echo "Creating symlink for Neovim..."
  sudo ln -sf /usr/local/nvim/bin/nvim /usr/local/bin/nvim
  echo "Cleaning up..."
  rm -rf ${temp_dir}
  echo "Neovim ${version} installation completed!"
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
