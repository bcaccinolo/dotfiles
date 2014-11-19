# encoding unification
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

export SVN_EDITOR=vim
export EDITOR=vim

export NODE_PATH=/usr/local/lib/node_modules

# RVM configuration
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
  rvm use ruby-1.9.3-p448 1> /dev/null
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export HISTSIZE=10000

alias translatefr='translate {=fr} '
alias fp='find .'
alias notes='vi ~/Documents/NOTES.txt'
alias vi='vim'
alias f='ls -G'
alias ls='ls -G'
alias l='ls -1'
alias la='ls -a'
alias c='cd ..'
alias cdapp='cd app'
alias cdmodel='cd app/models'
alias cdviews='cd app/views'
alias cdcontroller='cd app/controllers'
alias ll='ls -alh'

alias tt='tree -C -L 1'
alias tt2='tree -C -L 2'
alias tt3='tree -C -L 3'

alias g='ack '
alias gf='ack -g ' # to search file names
alias ss='story '

alias rr='reset'

# git aliases
alias master='co master; pull'
alias st='git st'
alias br='git br'
alias bre='git bre'
alias lg='git lg'
alias lgg='git log'
alias lgo='git log --oneline --decorate'
alias dif='git df --ignore-space-change '
alias difw='git diff --word-diff'
alias difc='git df --cached'
alias pull='git pull'
alias ci='git ci'
alias co='git co'
alias git-count='git shortlog -s -n'
alias tag='git tag -l | sort -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n'

# rails aliases
alias z='zeus '
alias zc='z console '
alias zs='z server '
alias zd='z dbconsole '
alias zz='reset; rm -rf .zeus.sock ; z start '

alias mutt='cd ~/Downloads/ ; mutt'

# now my git aliases work with git-completion
complete -o bashdefault -o default -o nospace -F _gitk st
complete -o bashdefault -o default -o nospace -F _gitk br
complete -o bashdefault -o default -o nospace -F _gitk lg
complete -o bashdefault -o default -o nospace -F _gitk lgg
complete -o bashdefault -o default -o nospace -F _gitk dif
complete -o bashdefault -o default -o nospace -F _gitk difc
complete -o bashdefault -o default -o nospace -F _gitk push
complete -o bashdefault -o default -o nospace -F _gitk pull
complete -o bashdefault -o default -o nospace -F _gitk ci
complete -o bashdefault -o default -o nospace -F _gitk co

# stories and story to list my pivotal stories
# Commands
alias b='reset; bundle'
alias be='bundle exec'
alias brs='rails server'
alias brsd='rails server --debugger'
alias brc='rails console'


__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf "(%s)" "${b##refs/heads/}";
    fi
}


PS1_BASE='======================================================\n[LOCAL $(__git_ps1 "(%s)")]> \w  \n→ '
PS1=$PS1_BASE

[[ -s /Users/benoit/.nvm/nvm.sh ]] && . /Users/benoit/.nvm/nvm.sh # This loads NVM

export BC_ENV_ARGS=~/.bcrc

### Added by the Heroku Toolbelt
export PATH="~/.composer/vendor/bin:/usr/local/heroku/bin:$PATH"

### rbenv shims path
export PATH="~/.rbenv/shims:$PATH"

# Local professional settings
. ~/.bashrc_pro
