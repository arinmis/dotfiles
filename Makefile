.SILENT: sync install programs clean

all: install

# install required programs 
programs: 
	sudo apt update && upgrade
	install git 
	install tmux 
	install xclip 
	install tree 
	install curl

# install runtime configs
install:
	echo "==> Here we go... installing runtime configs"
	cp configs/.vimrc ~ 
	cp configs/.tmux.conf ~ 
	cp configs/.bashrc ~ 
	cp configs/.alacritty.yml ~ 
	# global gitignore file
	cp configs/.gitignore ~ 
	git config --global core.excludesfile ~/.gitignore
	# terminal theme
	dconf load /org/gnome/terminal/legacy/profiles:/ < configs/gnome-terminal-profiles.dconf
	# set background
	gsettings set org.gnome.desktop.background picture-options 'none'
	gsettings set org.gnome.desktop.background primary-color '#000000'
	# set python3 default python version 
	sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
	# vim plugin manager: Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# syncronize repository with local configs, update the repository
sync: 
	cp ~/.vimrc configs 
	cp ~/.tmux.conf configs
	cp ~/.bashrc configs
	cp ~/.alacritty.yml configs
	cp ~/.gitignore configs
	dconf dump /org/gnome/terminal/legacy/profiles:/ > configs/gnome-terminal-profiles.dconf
	echo "==> Updating config files is completed!!!" 


# remove all the dot files
clean: 
	cp ~/.vimrc configs 
	cp ~/.tmux.conf configs
	cp ~/.bashrc configs
	cp ~/.alacritty.yml configs
	cp ~/.gitignore configs
	echo "==> All the dot files are removed!!!" 
