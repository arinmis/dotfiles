# install dependencies
sudo apt install vim-gtk3  
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/Arinmis/vim-settings.git

# install runtime configs
cd vim-settings
cp vimrc ~ 
mv ~/vimrc ~/.vimrc
echo Setup compeleted!!!
