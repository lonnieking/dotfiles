export LANG=en_US.UTF-8
export PATH="$HOME/bin:$HOME/.poetry/bin:$PATH"

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
# zplug 'dracula/zsh', as:theme
zplug "kiurchv/asdf.plugin.zsh"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "lib/completion", from:oh-my-zsh
zplug "zsh-users/zsh-history-substring-search"
zplug load 

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Theme and Prompt
autoload -U colors && colors
autoload -U promptinit; promptinit

# PROMPT
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PROMPT_CHAR="▲"
export PROMPT_CHAR_COLOR="yellow"
autoload -Uz add-zsh-hook
_pista_prompt() {
	PROMPT="$(pista -z)"   # `pista -zm` for the miminal variant
}
add-zsh-hook precmd _pista_prompt


# ALIAS
alias cat="bat"
alias bat="bat --theme=OneHalfDark"
alias ls="exa"
# terraform
alias tf="AWS_PROFILE=default terraform"
alias tfi="tf init -upgrade"
alias tfw="tf workspace"
alias tfp="tf plan"
# git
alias gh="git remote -v | grep -o -m 1 '[@].*[.]' | sed 's|:|\/| ; s|@|http://www.| ; s|.$||' | xargs open"
alias gcu="git branch --merged master --no-color | grep -v master | grep -v stable | xargs git branch -d"
alias merge="smerge ."
# bundler
alias be="bundle exec"
alias bi="bundle install"
# docker
alias dc="docker-compose"
alias dccx="docker container prune --filter 'until=48h'"
alias dcix="docker image prune --filter 'until=48h'"

# Added by fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add asdf-vm to Path
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

