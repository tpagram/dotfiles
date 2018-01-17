### OH-MY-ZSH config ###
export ZSH=/Users/tpagram/.oh-my-zsh
ZSH_THEME="drac-emoji"

# Custom plugins (can change the location of $ZSH_CUSTOM if I like):
# Shows history of commands as you type
# git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# Lets you navigate the command history with up and down.
# git clone https://github.com/zsh-users/zsh-history-substring-search ZSH_CUSTOM/plugins/zsh-history-substring-search
# Syntax highlighting.
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ZSH_CUSTOM/plugins/zsh-syntax-highlighting
plugins=(git rails zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### Aliases ###

#Get IP
alias ip="ipconfig getifaddr en0"

#git
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpu="git pull"
alias gs="git status"

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

# Folder shortcuts (for Airtasker comp)
alias work="cd ~/work"
alias misc="cd ~/misc"
alias downloads="cd ~/Downloads"
alias desktop="cd ~/Desktop"
alias wb='ruby ~/misc/write-blind-edit-sober/write-blind.rb ~/misc/Dropbox/minibox/"$(date +%d-%-m).txt"'

#ls
alias la="ls -laFG"
alias ls="command ls -G"
alias grep='grep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Sourcing this damn file
alias rezsh="source ~/.zshrc"

### Appearance ###
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


### Misc ###

# history-substring-search plugin configuration
# Investigate how to show time?
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Airtasker deploy
# getcreds() { `raxawscreds airtasker-$1`; }
getami() { ~/code/deployment-utilities/bg_deploy/available.sh $1; }
deploy() { ~/code/deployment-utilities/bg_deploy/bg_deploy.sh $1 $2 $3; }
restartNode() { ~/code/deployment-utilities/restart_node.sh $1 $2; }
export AIR_HOME="/Users/tpagram/code/web"
source $AIR_HOME/cli.sh
export DEPLOYMENT_UTILS_DIR=~/code/deployment-utilities
source $DEPLOYMENT_UTILS_DIR/airtasker.rc

alias raxawscreds='docker run --rm -v ~/.aws:/root/.aws raxawscreds raxawscreds'
function list_feature_branches(){
  getcreds dev
  aws ec2 describe-instances --filters "Name=tag:environment,Values=feature-branch" "Name=instance-state-name,Values=running" --query 'Reservations[*].Instances[].[InstanceId,NetworkInterfaces[0].PrivateIpAddresses[0].PrivateDnsName,Tags]' | jq -r '. | map(.[0] as $id | .[1] as $internalUrl | .[2] | map(select( .Key == "feature-branch-id" ) .Value )[] as $feature | map(select( .Key == "destroy-me-at" ) .Value )[] as $destroyTime | map(select( .Key == "public-url" ) .Value )[] as $publicUrl |[$id, $feature, $destroyTime, $publicUrl, $internalUrl] | join(" - "))[]'
}
alias devssh='ssh -o ProxyCommand="ssh features-proxy nc -w 120 %h %p 2> /dev/null" -l ubuntu -i ~/.ssh/dev/sydney-dev-2017-09-25.pem'

# API
export AIRTASKER_HOMEDIR=$HOME/code
export DEPLOYMENT_UTILS_DIR=$HOME/code/deployment-utilities
source $DEPLOYMENT_UTILS_DIR/airtasker.rc

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

eval "$(rbenv init -)"

