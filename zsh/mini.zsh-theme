# The prompt
PROMPT='$PROMPT_PREFIX$DIR_PROMPT_PREFIX$DIR_PROMPT$DIR_PROMPT_SUFFIX%{$(git_prompt_info)%}$PROMPT_SYM$RESET_COLORS'

# The right-hand prompt
RPROMPT=""

# primary prompt
PROMPT_PREFIX="🍕  "
DIR_PROMPT_PREFIX="%{$fg[blue]%}["
DIR_PROMPT_SUFFIX="%{$fg[blue]%}]"
DIR_PROMPT="%{$fg[yellow]%}%c"
PROMPT_SYM=" ▶ "

# git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" on [%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# print a new line after before each prompt is printed
precmd() { print "" }

# use this to reset colors at the end of the prompt
RESET_COLORS="%{$reset_color%}"
