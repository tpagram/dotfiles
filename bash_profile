eval "$(rbenv init -)"
source ~/.git-prompt.sh
PS1='\[\e[0;32m\]\w\[\e[0;36m\]$(__git_ps1 "(%s) ")\[\e[0m\]\$ '
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

alias mvimw="cd ~/work; (mvim &) ; cd -"
alias rebash="source ~/.bash_profile"

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
