# bash
rm ~/.bash_profile
ln -sv ~/.dotfiles/bash/.bash_profile ~/.bash_profile

# git
rm ~/.gitconfig
ln -sv ~/.dotfiles/git/.gitconfig ~/.gitconfig

# zsh
rm ~/.zshrc
ln -sv ~/.dotfiles/zsh/.zshrc ~/.zshrc

# oh-my-zsh
rm ~/.oh-my-zsh/custom/themes
ln -sv ~/.dotfiles/zsh/themes ~/.oh-my-zsh/custom/themes

# vim
rm ~/.config/nvim/init.vim
ln -sv ~/.dotfiles/vim/init.vim ~/.config/nvim/init.vim

# atom
rm ~/.atom/config.cson
ln -sv ~/.dotfiles/atom/config.cson ~/.atom/config.cson

# MacOS + iTerm 2
source osxdefaults.sh
