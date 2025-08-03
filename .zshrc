# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/anthonylubrino/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
# source ~/.zsh_keys

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ui="~/portal-ui"
alias uicommit="~/scripts/commit.sh portal-ui"
alias mono="~/eltoro-ui"
alias monocommit="~/scripts/commit.sh eltoro-ui"
alias quickcommit="~/scripts/quick_commit.sh eltoro-ui"
alias monobuild="~/eltoro-ui && yarn clean-build-all"
alias beewoapp="~/eltoro-ui/apps/beewo"
alias beewoappcommit="~/scripts/commit.sh eltoro-ui"
alias monoreview="~/eltoro_ui_PR_review"
alias monoreviewbuild="~/eltoro_ui_PR_review && yarn clean-build-all"
alias v2="~/portal-v2"
alias v3="~/portal-v3-ui"
alias robo="~/robo3t/bin/robo3t"
alias startbackstage="~/eltoro/eltoro-backstage && docker run --rm --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 postgres && yarn devlocal"
alias startBSDocker="docker run --rm --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 postgres"
alias backstage="~/eltoro/eltoro-backstage"
alias api="~/go/src/github.com/eltorocorp/"
alias advert="~/go/src/github.com/eltorocorp/advertisingplatform/"
alias cicdcommit="git commit --allow-empty -m "CICD re-trigger" && git push"
alias klocal='kubectl --context=kind-advertising-platform'
alias kdev='kubectl --context=k8s.dev.eltoro.com'
alias kprod='kubectl --context=k8s.eltoro.com'
alias python='python3'
alias mongoshdevcampaign='mongosh mongodb://campaignservice_user:$(kdev get secrets -n campaignservice campaignservice-mongodb-secret -o json | jq -r '"'"'.data."mongodb-password"'"'"' | base64 -D)@localhost:27018/campaignservice_database'
alias mongoshprodcampaign='mongosh mongodb://campaignservice_user:$(kprod get secrets -n campaignservice campaignservice-mongodb-secret -o json | jq -r '"'"'.data."mongodb-password"'"'"' | base64 -D)@localhost:27018/campaignservice_database'
alias psqllocalorg='psql postgres://postgres:$(klocal get secrets -n advertising-platform postgres.sunflowers-postgres.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/orgs'
alias psqldevorg='psql postgres://postgres:$(kdev get secrets -n postgres postgres.sunflowers-orgmanager.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/orgs'
alias psqlprodorg='psql postgres://postgres:$(kprod get secrets -n postgres postgres.sunflowers-orgmanager.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/orgs'
alias psqllocaldeploy='psql postgres://postgres:$(klocal get secrets -n advertising-platform postgres.sunflowers-postgres.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/deploy_dev'
alias psqldevdeploy='psql postgres://postgres:$(kdev get secrets -n postgres postgres.sunflowers-deployservice.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/deploy'
alias psqlproddeploy='psql postgres://postgres:$(kprod get secrets -n postgres postgres.sunflowers-deployservice.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/deploy'
alias psqllocalcreative='psql postgres://postgres:$(klocal get secrets -n advertising-platform postgres.sunflowers-postgres.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/creatives'
alias psqldevcreative='psql postgres://postgres:$(kdev get secrets -n postgres postgres.sunflowers-creativeservice.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/creatives'
alias psqlprodcreative='psql postgres://postgres:$(kprod get secrets -n postgres postgres.sunflowers-creativeservice.credentials.postgresql.acid.zalan.do -o json | jq -r .data.password | base64 -D)@localhost:5435/creatives'
alias gcam='git add . && git commit -m'
alias gp='git push'
alias globalprompts='code ~/Library/Application\ Support/Code/User/prompts'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=$(go env GOPATH)/bin:$PATH

   

pullServices() {
  for d in $HOME/go/src/github.com/eltorocorp/*/ $HOME/eltoro/*/; do
    repo_name=$(basename $d)
    current_branch=$(git -C $d rev-parse --abbrev-ref HEAD)
    echo -e "\n\n\033[1;32m${repo_name}\033[0m (\033[0;33m${current_branch}\033[0m):\n"
    git -C $d pull
  done
}

branches() {
  REPOSITORY="\033[4;37mREPOSITORY\033[0m"
  BRANCH="\033[4;37mBRANCH\033[0m"
  WORKING_TREE="\033[4;37mWORKING_TREE\033[0m"

  first='yes'
  for d in $HOME/go/src/github.com/eltorocorp/*/ $HOME/eltoro/*/ ; do
  
  repo_path=$(dirname $d)
  if [ $repo_path = "/Users/anthonylubrino/go/src/github.com/eltorocorp" ]; then 
    directory=$(echo $d | awk -F '/' '{print "\033[0;37m"$8"\033[0m"}')
  else
    directory=$(echo $d | awk -F '/' '{print "\033[0;37m"$0"\033[0m"}')
  fi

    current_branch=$(git -C $d rev-parse --abbrev-ref HEAD)
    if [ $current_branch = "master" ] || [ $current_branch = "main" ] || [ $current_branch = "development" ]; then
      current_branch=$(echo $current_branch | awk '{print "\033[0;37m"$0"\033[0m"}')
    else
      current_branch=$(echo $current_branch | awk '{print "\033[0;33m"$0"\033[0m"}')
    fi

    if [ -z "$(git -C $d status --porcelain)" ]; then 
      clean="\033[0;32mclean\033[0m"
    else 
      clean="\033[0;31mdirty\033[0m"
    fi

    if [[ "$first" == 'yes' ]]; then first='no' && echo -e "$REPOSITORY $BRANCH $WORKING_TREE"; fi    
    echo -e "$directory $current_branch $clean"
  done | column -t
}

fixDocker() {
  sed -i.bak '/"credsStore": "desktop",/d' "$HOME/.docker/config.json"
  echo '"credsStore": "desktop",' removed from ~/.docker/config.json
}

# Source .global_shell_env file if it exists
if [ -f "$HOME/.global_shell_env" ]; then
  set -a
  source "$HOME/.global_shell_env"
  set +a
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
PATH=~/.console-ninja/.bin:$PATH
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/anthonylubrino/.cache/lm-studio/bin"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/anthonylubrino/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
