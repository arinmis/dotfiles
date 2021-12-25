
echo "                      ___             __ _"
echo "  /\/\  _   _        / __\___  _ __  / _(_) __ _ ___"
echo " /    \| | | |_____ / /  / _ \| '_ \| |_| |/ _  / __|"
echo "/ /\/\ \ |_| |_____/ /__| (_) | | | |  _| | (_| \__ \ "
echo "\/    \/\__, |     \____/\___/|_| |_|_| |_|\__, |___/"
echo "        |___/                              |___/"
echo ""

# install given parameter program with 'apt'
install () {
    if ! [ -x "$(command -v $1)" ]; 
    then
        sudo apt install $1  
        echo "==> $1 installed"
    else 
        echo "==> $1 already exist"
    fi
}

echo "==> Here we go..."

# install required programs 
install gvim
install tmux 
install xclip 
install tree 

# install runtime configs
cp config-files/.vimrc ~ 
cp config-files/.tmux.conf ~ 
# terminal theme
dconf load /org/gnome/terminal/legacy/profiles:/ < config-files/gnome-terminal-profiles.dconf

echo "==> Setup is compeleted!!!"
