# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap neovim/neovim
brew install git rbenv nvm node wget zsh zsh-completions neovim postgresql awscli awsm tmate ctop
brew cask install iterm2

# atom
brew cask install atom
apm install `cat packages.list`

# oh-my-zsh
rm -rf /Users/Lonnie/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# vim
mkdir ~/.vim/plugged
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# node
nvm install node
nvm use node

#rbenv
rbenv init
rbenv install 2.3.3

# setup
source setup.sh
