#!/bin/bash
set -e

# brew
if brew ls --versions myformula > /dev/null; then
  echo "installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew already installed"
fi

# brew update
echo "installing apps"
brew tap neovim/neovim
brew tap awsm/homebrew-tap
brew install rbenv nvm node wget zsh zsh-completions neovim postgresql awscli awsm tmate ctop
brew cask install caskroom/fonts/font-source-code-pro-for-powerline
# brew cask install iterm2

# atom
echo "setting up atom"
brew cask install atom
apm install `cat atom/packages.list`

# vim
echo "setting up vim"
mkdir -p ~/.vim/plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# rbenv
# echo "setting up rbenv"
# rbenv init
# rbenv install 2.3.3

# oh-my-zsh
echo "setting up oh-my-zsh"
rm -rf /Users/Lonnie/.oh-my-zsh
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
curl -o- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

# node
echo "setting up node and nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
nvm use node
