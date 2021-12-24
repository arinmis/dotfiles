echo "                      ___             __ _"
echo "  /\/\  _   _        / __\___  _ __  / _(_) __ _ ___"
echo " /    \| | | |_____ / /  / _ \| '_ \| |_| |/ _  / __|"
echo "/ /\/\ \ |_| |_____/ /__| (_) | | | |  _| | (_| \__ \ "
echo "\/    \/\__, |     \____/\___/|_| |_|_| |_|\__, |___/"
echo "        |___/                              |___/"
echo ""

# pull configs files
cp ~/.vimrc config-files 
cp ~/.tmux.conf config-files
dconf dump /org/gnome/terminal/legacy/profiles:/ > config-files/gnome-terminal-profiles.dconf

echo "==> Updating config files is completed!!!" 
