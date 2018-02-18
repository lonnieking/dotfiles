# bash
rm ~/.bash_profile
ln -sv ~/dotfiles/bash/.bash_profile ~/.bash_profile

# git
rm ~/.gitconfig
ln -sv ~/dotfiles/git/.gitconfig ~/.gitconfig

# zsh
rm ~/.zshrc
ln -sv ~/dotfiles/zsh/.zshrc ~/.zshrc

# oh-my-zsh
mkdir -p ~./.oh-my-zsh/custom/themes
rm ~/.oh-my-zsh/custom/themes
ln -sv ~/dotfiles/zsh/themes ~/.oh-my-zsh/custom/themes

# vim
rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -sv ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
rm ~/.vimrc
ln -sv ~/dotfiles/vim/.vimrc ~/.vimrc
rm ~/.vimrc_background
ln -sv ~/dotfiles/vim/.vimrc_background ~/.vimrc_background

# tmux
rm ~/tmux.conf
ln -sv ~/dotfiles/tmux/tmux.conf ~/tmux.conf

# atom
rm ~/.atom/config.cson
mkdir ~/.atom
ln -sv ~/dotfiles/atom/config.cson ~/.atom/config.cson

# psql
rm ~/.psqlrc
ln -sv ~/dotfiles/psql/.psqlrc ~/.psqlrc
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# MacOS + iTerm 2
source osxdefaults.sh
