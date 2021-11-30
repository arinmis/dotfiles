# install dependencies
sudo apt install vim-gtk3  
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install runtime configs
cp vimrc ~ 
mv ~/vimrc ~/.vimrc
echo Setup compeleted!!!
