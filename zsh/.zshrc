# Path to your oh-my-zsh installation.
export ZSH=/Users/Lonnie/.oh-my-zsh

# THEME
ZSH_THEME='spaceship'

# CONFIG
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=white'

# PLUGINS
plugins=(git zsh-syntax-highlighting)

# BASE16 SHELL
BASE16_SHELL=~/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# PATH
# export PATH="/Users/Lonnie/.rbenv/shims:/Users/Lonnie/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

# ALIASES
alias gtk="open /Applications/GitKraken.app"
alias vim="nvim"
# git
alias gh="git remote -v | grep -o -m 1 '[@].*[.]' | sed 's|:|\/| ; s|@|http://www.| ; s|.$||' | xargs open"
alias gcu="git branch --merged master --no-color | grep -v master | grep -v stable | xargs git branch -d"
# bundler
alias be="bundle exec"
alias bi="bundle install"
# docker
alias dc="docker-compose"
# alias dx="docker rm $(docker ps -a -f status=exited -q)"
alias dccx="docker container prune --filter 'until=48h'"
alias dcix="docker image prune --filter 'until=48h'"

# Node Version Manager
export NVM_DIR="/Users/Lonnie/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Added by fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# HOOROO
export AWS_ENV_NAME=development-lonnie
# export AWS_DEFAULT_REGION=ap-southeast-2
# export $(~/projects/hooroo/ted/export-aws-creds default | awk '{print $1}' | xargs -L1)
