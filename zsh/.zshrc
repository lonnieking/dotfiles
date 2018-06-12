# Path to your oh-my-zsh installation.
export ZSH=/Users/Lonnie/.oh-my-zsh

# THEME
ZSH_THEME='spaceship'
SPACESHIP_DOCKER_SYMBOL="${SPACESHIP_DOCKER_SYMBOL="🐳  "}"
SPACESHIP_RUBY_SYMBOL="${SPACESHIP_RUBY_SYMBOL="💎  "}"
SPACESHIP_AWS_SYMBOL="${SPACESHIP_AWS_SYMBOL="☁️   "}"
SPACESHIP_PACKAGE_SYMBOL="${SPACESHIP_PACKAGE_SYMBOL="📦  "}"
SPACESHIP_CHAR_SYMBOL="${SPACESHIP_CHAR_SYMBOL="❯❯ "}"

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
alias dccx="docker container prune --filter 'until=48h'"
alias dcix="docker image prune --filter 'until=48h'"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Added by fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/lonnie/.nvm/versions/node/v8.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/lonnie/.nvm/versions/node/v8.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/lonnie/.nvm/versions/node/v8.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/lonnie/.nvm/versions/node/v8.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh