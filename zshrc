# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/tpagram/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="tpagram"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

eval "$(rbenv init -)"

#Networking
alias ip="ipconfig getifaddr en0"

#git
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpu="git pull"

#rails
alias rs="rails server"
alias rc="rails console"
alias r="rake"
alias be="bundle exec"
alias rdm="rake db:migrate"
alias rdms="rake db:migrate:status"
alias rds="rake db:seed"
alias rdc="rake db:create"
alias rdr="rake db:rollback"
alias rdd="rake db:drop"

# itermocil
alias sesh="itermocil"
alias seshh="itermocil --here"

# Folder shortcuts
alias work="cd ~/work"
alias misc="cd ~/misc"
alias downloads="cd ~/Downloads"
alias desktop="cd ~/Desktop"

#Colours
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#ls
alias la="ls -laFG"
alias ls="command ls -G"
alias grep='grep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

alias rezsh="source ~/.zshrc"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# history-substring-search plugin configuration
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=white,bold'

# zsh-syntax-highlighting plugin configuration
ZSH_HIGHLIGHT_STYLES[command]='bold'
ZSH_HIGHLIGHT_STYLES[alias]='bold'
ZSH_HIGHLIGHT_STYLES[builtin]='bold'
ZSH_HIGHLIGHT_STYLES[function]='bold'
ZSH_HIGHLIGHT_STYLES[precommand]='bold'
ZSH_HIGHLIGHT_STYLES[path_approx]='none'

# Load zsh-syntax-highlighting.
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-autosuggestions.
source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
export HISTTIMEFORMAT="%d/%m/%y %T " 