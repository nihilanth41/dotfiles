# dotfiles
My work in progress dotfiles collection

# RCM 

## Install 

### Ubuntu 
```
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get install rcm
```

### Source
```
curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.0.tar.gz && \
tar -xvf rcm-1.3.0.tar.gz && \
cd rcm-1.3.0 && \
./configure --prefix=$HOME && \
make && \
sudo make install
```

## Usage 
To install set the path to the rcm config file & run rcup 
```
RCRC=$HOME/dotfiles/rcrc rcup 
```
To add a new file run mkrc 
```
mkrc ~/.new_dotfile 
```

## Vundle 
To install plugins with Vundle, launch vim and run: 
```
:PluginInstall
``` 
or from command line: 
```
vim +PluginInstall +qall
```

Author: Zachary Rump 
