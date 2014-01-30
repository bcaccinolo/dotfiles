# encoding unification
export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

PATH=/usr/local/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:/usr/local/share/npm/bin
export SVN_EDITOR=vim
export EDITOR=vim

export NODE_PATH=/usr/local/lib/node_modules

# RVM configuration
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
  rvm use ruby-1.9.3-p448 1> /dev/null
fi

# MacPorts Bash shell command completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  .  /usr/local/etc/bash_completion.d/git-completion.bash
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

alias notes='vi ~/Documents/NOTES.txt'
alias vi='/usr/local/bin/vim -w ~/.vimlog "$@" '
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

# git aliases
alias master='co master; pull'
alias staging='co staging; pull'
alias st='git st'
alias br='git br'
alias bre='git bre'
alias lg='git lg'
alias lgg='git log'
alias lgo='git log --oneline --decorate'
alias dif='git df --ignore-space-change '
alias difw='git diff --word-diff'
alias difc='git df --cached'
alias push='git push'
alias p='git push'
alias pu='git pull'
alias pull='git pull'
alias ci='git ci'
alias cipm=' ci . -m '
alias co='git co'
alias git-count='git shortlog -s -n'
alias tag='git tag -l | sort -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n'

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

# Projects
alias oo='cd /Users/benoit/Developments/booboo/'
alias blog='cd /Users/benoit/Developments/boobooblog/'
alias bb='cd /Users/benoit/Developments/Billetto/billetto/'
alias bb2='cd /Users/benoit/Developments/Billetto/billetto2/'
alias bb3='cd /Users/benoit/Developments/Billetto/billetto3/'
alias bbd='cd /Users/benoit/Developments/Billetto/Billetto_Doc/'
alias au='cd /Users/benoit/Developments/Artworkersunited/artworkersunited/'
alias ts='cd /Users/benoit/Developments/Billetto/TicketScanner/'
alias ii='cd /Users/benoit/Developments/BooBoo/'
alias hh='cd /Users/benoit/Developments/hitweb.rb/'

# fun
alias ff='bash /Users/benoit/Developments/fuck_you.sh'
alias tt='cd /Users/benoit/Developments/Javascript/backbone/examples/todos'


__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf "(%s)" "${b##refs/heads/}";
    fi
}

PS1='======================================================\n[LOCAL $(__git_ps1 "(%s)")]> \w  \n→ '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/pear/bin

[[ -s /Users/benoit/.nvm/nvm.sh ]] && . /Users/benoit/.nvm/nvm.sh # This loads NVM

. ~/.bashrc_pro

# OPAM configuration
. /Users/benoit/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
