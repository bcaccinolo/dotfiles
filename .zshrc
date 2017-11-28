# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/benoit/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robb yrussell"
ZSH_THEME="agnoster-perso"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  bundler
  rails
  ruby
  docker
  docker-compose
  composer
  laravel5
)

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# valipat
alias vd='cd /Users/benoit/valipat/app-doc; ls'

alias puma-command="echo 'rm -f /tmp/pid && bundle exec puma -C config/puma.rb ; reset'"
alias pp="echo 'rm -f /tmp/pid && bundle exec puma -C config/puma.rb ' | pbcopy"

alias localenv='eval $(docker-machine env valipat)'
alias f1env='eval $(docker-machine env feature1.valipat.com)'
alias f2env='eval $(docker-machine env feature2.valipat.com)'
alias f3env='eval $(docker-machine env feature3.valipat.com)'


alias rec_bash='docker exec -it recdev_recapp_1 bash'
alias rec_attach='dc attach recdev_recapp_1'
alias auth_bash='docker exec -ti dev_authapp_1 bash'

# docker
alias d='docker '
alias dcont='docker container '
alias dei='docker exec -t -i '
alias dps='docker ps --format "{{.Names}} - {{.ID}} " | sort '
alias dc='docker-compose'
alias dcc='./ops/dev/compose'

# add a container name to get its IP
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}' "
alias c='cd ..'

alias singleapp='cd /Users/benoit/dev/code-examples/php/singleapp'
alias connect='ssh root@137.74.43.108'

localenv

export PATH=~/.rbenv/shims:/Users/benoit/.composer/vendor/bin:$PATH
