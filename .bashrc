
PATH=/usr/local/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export SVN_EDITOR=vim
export EDITOR=vim

export NODE_PATH=/usr/local/lib/node_modules

# RVM configuration
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
  . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
  rvm use ruby-1.9.2-p290 1> /dev/null
fi

# MacPorts Bash shell command completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  .  /usr/local/etc/bash_completion.d/git-completion.bash
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export HISTSIZE=10000

alias www="cd /Library/WebServer/Documents/"

alias vi='vim'
alias ls='ls -G'
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
alias ss='story '

# git aliases
alias st='git st'
alias br='git br'
alias lg='git lg'
alias lgg='git log'
alias lgo='git log --oneline --decorate'
alias dif='git df'
alias difw='git diff --word-diff'
alias difc='git df --cached'
alias push='git push'
alias pull='git pull'
alias ci='git ci'
alias co='git co'
alias git-count='git shortlog -s -n'

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
alias be="bundle exec"
alias brs='rails server'
alias brsd='rails server --debugger'
alias brc='rails console'

# Projects
alias boo='cd /Users/benoit/Developments/BooBoo/'
alias bb='cd /Users/benoit/Developments/Billetto/billetto/'
alias bb2='cd /Users/benoit/Developments/Billetto/billetto2/'
alias bb3='cd /Users/benoit/Developments/Billetto/billetto3/'
alias bbd='cd /Users/benoit/Developments/Billetto/Billetto_Doc/'
alias au='cd /Users/benoit/Developments/Artworkersunited/artworkersunited/'
alias ts='cd /Users/benoit/Developments/Billetto/TicketScanner/'


alias ii='cd /Users/benoit/Developments/BooBoo/'

# PS1='[LOCAL]\u@\h:\w\$ \n>'
# PS1='[LOCAL MACBOOK ]\u@imotor:\w\$ \n→ '
PS1='======================================================\n[LOCAL $(__git_ps1 "(%s)")]> \w  \n→ '
# PS1='======================================================\n[XEN]\u@\h:\w  \n→ '

. .bashrc_pro

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
