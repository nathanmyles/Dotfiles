#Manage dotfiles like a boss

##Getting Started

###Prerequisite
1. install `pip`
	- ubuntu - `sudo apt-get install python-pip`
	- mac - `brew install python`
1. update `pip` - `sudo pip install --upgrade pip`
1. install `dotfiles` from `pip` - `sudo pip install dotfiles`
1. install `zsh`
	- ubuntu - `sudo apt-get install zsh`
	- mac - `brew install zsh`
1. make `zsh` your default terminal - `chsh -s $(which zsh)`

###Sync dotfiles
1. clone the repo into your home directory `git clone https://github.com/nathanmyles/Dotfiles.git`
1. sync dotfiles - `dotfiles --sync`
1. `source ~/.zshrc`

###Fork the Repo

create a fork of this repo so you can have your own set of configuration!

__Make sure you edit the zsh-theme in `antigenrc` to point to your fork__

