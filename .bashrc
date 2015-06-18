# encoding unification
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

export SVN_EDITOR=vim
export EDITOR=vim

export NODE_PATH=/usr/local/lib/node_modules

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export HISTSIZE=10000

alias translatefr='translate {=fr} '
alias fp='find .'
alias notes='cd /Users/benoit/Documents; vi ~/Documents/NOTES.txt'
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
alias imjc='cd ~/Desktop/imjc/ ; links index.html'

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
alias pull='git pull --rebase=preserve'
alias push='git push'
alias ci='git ci'
alias co='git co'
alias git-count='git shortlog -s -n'
alias tag='git tag -l | sort -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n'
alias cipm='git ci . -m '

# rails aliases
alias z='zeus '
alias zc='z console '
alias zs='z server '
alias zd='z dbconsole '
alias zz='reset; rm -rf .zeus.sock ; z start '

alias mutt='cd ~/Downloads/ ; mutt'

alias update_tags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'
alias update_ctags='ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)'

# now my git aliases work with git-completion
__git_complete co _git_checkout
__git_complete br _git_checkout

# stories and story to list my pivotal stories
# Commands
alias b='reset; bundle'
alias be='bundle exec'
alias bu='bundle update'

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

### rbenv shims path
export PATH="~/.rbenv/shims:$PATH"

# Local professional settings
. ~/.bashrc_pro

eval "$(rbenv init -)"



