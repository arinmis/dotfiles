# dotfiles 

All the necessary dotfiles and programs for a new Ubuntu machine.

## Install config files  
```
make configs
```

## Install usefull programs 
```
make programs
```

## Synchronize local configs with the repository
```
make sync
```

### Quick setup
```
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential git -y
git clone https://github.com/arinmis/dotfiles.git
cd dotfiles
make 
```

Also run `PluginInstall` command in `Vim` command mode

    
