This repository contains my personal Vim configuration. If you would like to use mine, please follow the instructions for the manual installation below.

## Requirements
---
* Vim 7.4+

## Manual Installation
---
_Note -- These instructions are for UNIX based systems (macOS and Linux)_

_Note -- If you have old vim configuration files, please create a backup of these files before proceeding:_

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig
---
1. Clone from GitHub:

        git clone https://github.com/nealnorland/dotvim.git ~/.vim

2. Create a symlink for the `vimrc` file to the `$HOME` directory: 

        ln -s ~/.vim/vimrc ~/.vimrc