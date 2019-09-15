# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/benoit/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robb yrussell"
ZSH_THEME="agnoster-perso"
#ZSH_THEME="avit"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
  mix
)

source $ZSH/oh-my-zsh.sh

# for ..[Tab] gives the ../
zstyle ':completion:*' special-dirs true

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


if [[ -f ~/.bash_aliases ]]; then
  . ~/.bash_aliases
  echo "loading aliases"
fi

localenv

export PATH=~/.rbenv/shims:/Users/benoit/.composer/vendor/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
# for pgcli
export PATH="/usr/local/opt/libpq/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# For the geminabox
export BUNDLE_GEMS__SYNBIOZ__COM=synbioz:ozgjuQRwKhxT3URPiQR
export DISABLE_SPRING=true

export EDITOR=code

# z command install
. ~/dev/dotfiles/z.sh

#
# Docker methods for local dev
#

# Exec a bash command in a running container
dex () { docker exec -ti $1 bash }

dextest () { dex "test_core_1" }

dexval () { pp; dex "val00dev_app_1" }

dexreclegacy () { pp; dex "rec00dev_app_1" }
dexrec () { pp; dex "recapi00dev_app_1" }

dexauth () { pp; dex "auth00dev_app_1" }
dexauthtest () { pp; dex "auth00test_app_1" }

dexdoc () { pp; dex "doc00dev_app_1" }
dexdoctest () { pp; dex "doc00test_app_1" }

