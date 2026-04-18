# Manage dotfiles like a boss

## Getting Started

### Install

Clone the repo and run the install script:

```bash
git clone https://github.com/nathanmyles/Dotfiles.git
cd ~/Dotfiles
./install.sh
```

The script will back up any existing dotfiles to `<file>.backup` and symlink everything from the repo into `$HOME`.

### Adding a new dotfile

To add a file or folder to your dotfiles, use the `add` command:

```bash
./install.sh add ~/.zshrc
./install.sh add ~/.config/nvim/lua/config/keymaps.lua
```

This will copy the file into the repo, set up the symlink, and remind you to commit it.

### Neovim

No need to install LazyVim manually. Just run the install script, open nvim, and it will bootstrap itself automatically.

## Fork the Repo

Create a fork of this repo so you can have your own set of configuration!

__Make sure you edit the zsh-theme in `antigenrc` to point to your fork__

