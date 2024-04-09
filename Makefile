.SILENT: sync configs configs

all: programs configs

# install required programs 
programs: 
	apt update && apt upgrade -y
	apt install -y vim tmux ripgrep xclip tree curl jq fzf nomacs 

# install runtime configs
configs:
	cp configs/.vimrc ~ 
	cp configs/.tmux.conf ~ 
	cp configs/.bashrc ~ 
	cp configs/.gitignore ~ 
	git config --global core.excludesfile ~/.gitignore
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	echo "==> Installing runtime configs is completed!!!"

# repository with local configs
sync: 
	cp ~/.vimrc configs 
	cp ~/.tmux.conf configs
	cp ~/.bashrc configs
	cp ~/.gitignore configs
	echo "==> Updating config files is completed!!!" 
